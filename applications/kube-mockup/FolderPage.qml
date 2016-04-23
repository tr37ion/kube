/*
 * Copyright (C) 2016 Michael Bohlender <michael.bohlender@kdemail.net>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4
import QtQuick.Controls 1.4 as Controls
import QtQuick.Layouts 1.2

import org.kde.kirigami 1.0 as Kirigami

Controls.SplitView {
    id: root

    orientation: Qt.Vertical

    ListView {

        width: root.width
        height: 400

        model: ListModel {

            ListElement {
                name: "all"
            }

            ListElement {
                name: "unread"
            }
            ListElement {
                name: "important"
            }
        }

        delegate: Rectangle {
            color: "transparent"
            height: Kirigami.Units.iconSizes.large
            width: parent.width

            Kirigami.Label {
                text: model.name
            }
        }
    }

    Rectangle {
        width: root.width

        Layout.fillHeight: true
    }
}
