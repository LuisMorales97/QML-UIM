import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "components" as Comp

ApplicationWindow{
    visible: true
    width: 360
    height: 600

    Rectangle{
        anchors.fill: parent
        color: "#191928"

        ColumnLayout{
            anchors{
                fill: parent
                leftMargin: 18
                rightMargin: 18
                topMargin: 28
                bottomMargin: 36
            }
            Comp.NormalSearchBar{
                Layout.fillWidth: true
                Layout.preferredHeight: 48
            }
            Rectangle{
               Layout.fillWidth: true
               Layout.preferredHeight: 24
               Layout.topMargin: 16
               Layout.bottomMargin: 4
               color: "transparent"
               Text{
                   text: qsTr("Martes, 07")
                   font.family: "Roboto"
                   font.pixelSize: 21
                   color: "white"
                   renderType: Text.NativeRendering
               }
            }
            Rectangle{
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"

                ListView{
                    id: lview
                    anchors.fill: parent
                    spacing: 12
                    model: Comp.TaskModel{}
                    delegate: Comp.Task{}
                    section.property: "section"
                    section.delegate: Comp.TaskSection{}
                    clip: true
                }
            }
            Comp.ButtomPrimary{
                Layout.fillWidth: true
                Layout.preferredHeight: 48
            }
        }
    }
}