/**
 * Copyright (C) 2013, 2014 Johannes Taelman
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

package axoloti.connection;

import axoloti.target.TargetModel;

/**
 * Connection singleton instance
 *
 * @author jtaelman
 */

public class CConnection {

    private CConnection() {
    }

    static private USBBulkConnection_v2 conn = null;

    // TODO: remove CConnection singleton
    public static IConnection getConnection() {
        if (conn == null) {
            IConnectionCB cbs = new ConnectionCB(TargetModel.getTargetModel());
            conn = new USBBulkConnection_v2(cbs);
            cbs.setConnection(conn);
        }
        return conn;
    }
}
