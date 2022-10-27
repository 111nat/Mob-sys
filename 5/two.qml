import QtQuick 2.0
import Sailfish.Silica 1.0

Page{
    Button{
        text:"back"
        onClicked: pageStack.navigateBack()
    }
}
