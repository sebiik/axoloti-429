package axoloti.swingui.objecteditor;

import axoloti.abstractui.DocumentWindow;
import axoloti.abstractui.IAbstractEditor;
import axoloti.object.AxoObject;
import axoloti.object.AxoObjectFromPatch;
import axoloti.object.IAxoObject;
import axoloti.swingui.patch.PatchFrame;

/**
 *
 * @author jtaelman
 */
public class ObjectEditorFactory {

    private ObjectEditorFactory() {
    }

    public static IAbstractEditor createObjectEditor(IAxoObject obj, DocumentWindow parentWindow) {
        IAbstractEditor editor = null;
        if (obj instanceof AxoObjectFromPatch) {
            AxoObjectFromPatch obj1 = (AxoObjectFromPatch) obj;
            PatchFrame pf = new PatchFrame(obj1.getPatchModel(), parentWindow);
            pf.setVisible(true);
            editor = pf;
        } else if (obj instanceof AxoObject) {
            editor = new AxoObjectEditor((AxoObject) obj, parentWindow);
        } else {
            throw new Error("could not create suitable editor for obj" + obj);
        }
        return editor;
    }

}
