import QtQuick 2.0
import SddmComponents 2.0

Rectangle{
    width: parent.width
    height: 50
    anchors.top: parent.top
    anchors.right: parent.right
    anchors.horizontalCenter: parent.horizontalCenter
    color: "transparent"

    // row for display all actions
    Row{
        anchors.right: parent.right
        anchors.margins: 5
        height: parent.height
        spacing: 10

        Text{
            height: parent.height
            anchors.verticalCenter: parent.verticalCenter
            text: ""
            font.family: textFont.name
            font.pixelSize: 38
            font.bold: true
            verticalAlignment: Text.AlignCenter
            color: "#FF3030"
        }
        ComboBox {
            id: session
            width: 300
            height: 25
            anchors.verticalCenter: parent.verticalCenter
            color: "#111"
            textColor: "#FF3030"
            font.family: textFont.name
            font.pixelSize: 14
            borderColor: "transparent"
            hoverColor: "#111"
            arrowIcon: "angle-down.svg"
            arrowColor: "#25000000"
            model: sessionModel
            index: sessionModel.lastIndex
            KeyNavigation.backtab: btnShutdown; KeyNavigation.tab: layoutBox
      }
    }
}