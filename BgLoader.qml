import QtQuick 2.0
import QtGraphicalEffects 1.0
import SddmComponents 2.0
import QtQuick.Controls 2.0

Repeater{
		model: screenModel
		Background {
			x: geometry.x
			y: geometry.y
			width: geometry.width
			height: geometry.height
			source: "src/images/background.png" // change "background.png" for your image.
			fillMode: Image.Tile
		}
	}