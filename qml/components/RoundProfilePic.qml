import QtQuick 2.10
import QtGraphicalEffects 1.3


Rectangle{
    id: prop_parent
    anchors.fill: parent
    property url source: ""
    color: "transparent"

    Image{
        id: img
        sourceSize: Qt.size(parent.width, parent.width)
        source: "../../images/prof-pic.jpg"
        visible: false
    }

    Image{
        id: mask
        sourceSize: Qt.size(parent.width, parent.width)
        source: "../../images/mask-24.png"
        visible: false
    }

    OpacityMask{
        anchors.fill: parent
        source: img
        maskSource: mask
    }
}