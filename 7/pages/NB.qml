import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    default property var name

    Button{
        text:name.text
        backgroundColor: name.color
    }
}
