import QtQuick 2.0
import SddmComponents 2.0

Rectangle {
    id: container
    width: 640
    height: 480

    LayoutMirroring.enabled: Qt.locale().textDirection == Qt.RightToLeft
    LayoutMirroring.childrenInherit: true

    property int sessionIndex: session.index

    property color neonRed: "#ff3845"
    property color neonBlue: "#2570d4"
    property color neonPink: "#ff00a8"
    property color popupBackground: "#0e0e17"
    property color screenBackground: "#030305"
    property color textColor: "#ff3845"

    TextConstants { id: textConstants }

    Connections {
        target: sddm

        onLoginSucceeded: {
            errorMessage.color = neonBlue
            errorMessage.text = textConstants.loginSucceeded
        }

        onLoginFailed: {
            password.text = ""
            errorMessage.color = neonPink
            errorMessage.text = textConstants.loginFailed
        }
        onInformationMessage: {
            errorMessage.color = neonBlue
            errorMessage.text = message
        }
    }


    Rectangle {
        anchors.fill: parent
        color: screenBackground


        Rectangle {
            id: rectangle
            anchors.centerIn: parent
            width: 720
            height: 460
            color: popupBackground
            opacity: 0.95
            radius: 0
            border.color: neonRed
            border.width: 1


            Column {
                id: mainColumn
                anchors.centerIn: parent
                width: 480
                spacing: 50

                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: neonRed
                    verticalAlignment: Text.AlignVCenter
                    height: text.implicitHeight
                    width: parent.width
                    text: "BLACKWALL ACCESS"
                    font.pixelSize: 24
                    font.family: "Orbitron"
                    font.bold: true
                    elide: Text.ElideRight
                    horizontalAlignment: Text.AlignHCenter
                }

                Column {
                    width: parent.width
                    spacing: 6

                    Text {
                        id: lblName
                        width: parent.width
                        text: textConstants.userName
                        font.bold: true
                        font.pixelSize: 16
                        font.family: "Orbitron"

                        color: neonRed
                    }

                    TextBox {
                        id: name
                        width: parent.width; height: 36
                        text: userModel.lastUser
                        font.pixelSize: 16
                        font.family: "Orbitron"
                        color: 'transparent'

                        borderColor: neonRed
                        focusColor: neonBlue
                        hoverColor: neonBlue
                        textColor: neonRed

                        KeyNavigation.tab: password

                        Keys.onPressed: {
                            if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                sddm.login(name.text, password.text, sessionIndex)
                                event.accepted = true
                            }
                        }
                    }
                }

                Column {
                    width: parent.width
                    spacing: 6
                    Text {
                        id: lblPassword
                        width: parent.width
                        text: textConstants.password
                        font.bold: true
                        font.pixelSize: 16
                        font.family: "Orbitron"

                        color: neonRed
                    }

                    PasswordBox {
                        id: password
                        width: parent.width; height: 36
                        font.pixelSize: 16
                        font.family: "Orbitron"

                        color: 'transparent'
                        borderColor: neonRed
                        focusColor: neonBlue
                        hoverColor: neonBlue
                        textColor: neonRed


                        KeyNavigation.backtab: name;

                        Keys.onPressed: {
                            if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                                sddm.login(name.text, password.text, sessionIndex)
                                event.accepted = true
                            }
                        }
                    }
                }


                Button {
                    id: loginButton
                    text: textConstants.login
                    width: parent.width
                    font.pixelSize: 16
                    font.family: "Orbitron"
                    font.bold: true

                    color: neonRed
                    textColor: popupBackground
                    borderColor: 'transparent'
                    activeColor: neonBlue
                    pressedColor: neonRed
                    disabledColor: neonPink
                    
                    onClicked: sddm.login(name.text, password.text, sessionIndex)
                    KeyNavigation.backtab: layoutBox;
                }
            }
        }
    }

    Component.onCompleted: {
        if (name.text == "")
            name.focus = true
        else
            password.focus = true
    }
}
