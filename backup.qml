Column{
				id: nameCol
				width: parent.width * 0.4
				spacing: 10
				anchors.margins: 10

				// username container
				Text{
					id: name
					width: parent.width
					text: textConstants.userName
					font.family: textFont.name
					font.bold: true
					font.pixelSize: 16
					color: "#FFF"
				}

				TextBox{
					id: labelName
					width: parent.width
					text: userModel.lastUser
					font: textFont.name
					color: "#111"				
					borderColor: "transparent"
					hoverColor: "#FF3030"
            		textColor: "#7F7F7F"

					Keys.onPressed: {
						if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
							sddm.login(name.text, password.text, session.index)
							event.accepted = true
						}
					}
				}

				Text{
					id: errorMsg
					anchors.left: name.left
					text: textConstants.prompt
					font.family: textFont.name
					font.pixelSize: 12
					color: "#FF3030"
				}

				Button{
					id: loginButton
					text: textConstants.login
					width: parent.width * 0.45
					anchors.right: password.right
					font: textFont.name
				}
			}

			// password container
			Column{
				id: passCol
				width: parent.width * 0.4
				anchors.left: nameCol.right
				anchors.margins: 20
				spacing: 10

				Text{
					id: labelPass
					width: parent.width
					text: textConstants.password
					font.family: textFont.name
					font.bold: true
					font.pixelSize: 16					
					color: "#FFF"
				}

				PasswordBox{
					id: password
					width: parent.width
					font: textFont.name
					color: "#111"
					borderColor: "transparent"
					hoverColor: "#FF3030"
            		textColor: "#7F7F7F"
					tooltipBG: "#111"
            		tooltipFG: "#FF3030"
					image: "src/images/warning.png"

					Keys.onPressed: {
						if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
							sddm.login(name.text, password.text, session.index)
							event.accepted = true
						}
					}
				}
			}