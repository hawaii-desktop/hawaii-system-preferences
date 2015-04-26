/****************************************************************************
 * This file is part of System Preferences.
 *
 * Copyright (C) 2015 Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>
 *
 * Author(s):
 *    Pier Luigi Fiorini
 *
 * $BEGIN_LICENSE:LGPL2.1+$
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * $END_LICENSE$
 ***************************************************************************/

import QtQuick 2.0
import QtQuick.Controls 1.0
import Hawaii.Themes 1.0 as Themes

Rectangle {
    property int outputId

    color: "grey"

    Rectangle {
        anchors {
            left: parent.left
            top: parent.top
            margins: Themes.Units.smallSpacing
        }
        color: "black"
        radius: Themes.Units.dp(6)
        width: label.paintedWidth + Themes.Units.largeSpacing
        height: width

        Label {
            id: label
            anchors {
                centerIn: parent
                margins: Themes.Units.smallSpacing
            }
            font.pointSize: Themes.Theme.defaultFont.pointSize * 0.8
            color: "white"
            text: outputId
        }
    }
}
