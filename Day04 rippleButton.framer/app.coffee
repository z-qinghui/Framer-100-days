button01 = new Layer
	width: 144
	height: 48
	borderRadius: 4
	x: Align.center()
	y: Align.center(-120)
	clip: true
	html: "Button"
	style: 
		backgroundColor:"#13b886"
		fontSize:"24px"
		fontWeight:300
		textAlign:"center"
		lineHeight:"48px"	
# button01.center()

# button02 = new Layer
# 	width: 144
# 	height: 48
# 	borderRadius: 4
# 	backgroundColor: "1890ff"
# button02.center()
# Utils.labelLayer(button02,'Button')
# button02.style.fontSize = "24px"
# button02.style.fontWeight = 300

button01.onTap (event, layer) ->

# 	rippleLoc = Screen.convertPointToLayer(event.point, button01)
	ripple = new Layer
		parent: button01
		midX: event.point.x
		midY: event.point.y
		width: 160
		height: 160
		borderRadius: "50%"
		scale: 0.05
		backgroundColor: "rgba(255,255,255,0.5)"		
		
	ripple.states.large =
		scale: 2
		opacity: 0
		animationOptions:
			time: 1
	ripple.animate("large")
	ripple.onStateDidSwitch ->
		ripple.destroy()




