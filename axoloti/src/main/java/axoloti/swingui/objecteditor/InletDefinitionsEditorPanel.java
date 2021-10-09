/**
 * Copyright (C) 2013 - 2016 Johannes Taelman
 *
 * This file is part of Axoloti.
 *
 * Axoloti is free software: you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 *
 * Axoloti is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Axoloti. If not, see <http://www.gnu.org/licenses/>.
 */
package axoloti.swingui.objecteditor;

import axoloti.object.AxoObject;
import axoloti.object.inlet.Inlet;
import axoloti.object.inlet.InletTypes;

/**
 *
 * @author jtaelman
 */
class InletDefinitionsEditorPanel extends AtomDefinitionsEditor<Inlet> {

    InletDefinitionsEditorPanel(AxoObject obj, AxoObjectEditor editor) {
        super(obj, AxoObject.OBJ_INLETS, InletTypes.getTypes(), editor);
    }

    @Override
    String getDefaultName() {
        return "i";
    }

    @Override
    String getAtomTypeName() {
        return "inlet";
    }

}
