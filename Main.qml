import QtQuick 2.0
import QtGraphicalEffects 1.0
import SddmComponents 2.0
import QtQuick.Controls 2.0

Rectangle{

	// general conf
	id: main
	width: 1920
	height: 1080
	state: "userLogin"

	// font loader module
	FontLoader{
		id: textFont
		name: config.font_family
	}

	// text array
	TextConstants{
		id: textConstants
	}
	
	// background
	BgLoader{}

	// gradient color
	Rectangle{
		width: parent.width
		height: parent.height
		opacity: 0.9
		color: "#000000"
	}

	// left menu container
	MenuLeft{}

	// actions
	Actions{}
}