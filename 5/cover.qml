import QtQuick 2.0
import Sailfish.Silica 1.0
Cover {
    property int counter: 0
    Label {
        anchors.centerIn: parent
        text: counter
    }
    CoverActionList {
        CoverAction {
            iconSource:"image://theme/icon-cover-cancel"

            onTriggered: {
                counter=0
            }
        }
        CoverAction {
            iconSource:"image://theme/icon-cover-new"

            onTriggered: {
                counter++
            }
        }
    }
}


