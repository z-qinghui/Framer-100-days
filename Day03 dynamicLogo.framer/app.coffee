
newLogo = new Layer
	width: 128
	height: 128
	borderRadius: 20
	image: "images/instagramBg.png"
	x: Align.center()
	y: Align.center(-50)
	
instagramBg = new Layer
	width: 128
	height: 128
	borderRadius: 20
	backgroundColor: "#E6DFDD"
	clip: true
	x: Align.center()
	y: Align.center(-50)
	
topBg = new Layer
	parent: instagramBg
	width: 128
	height: 44
	borderRadius: "20px 20px 0 0"
	backgroundColor: "#8B584E"
	clip: true	
	
rainbow = []
rainbowColors = ["#FF3838","#FED045","#14DE73","#61CBFE"]
for i in[0..3]
	rainbow[i] = new Layer
		parent: topBg
		y: 0
		x: 8+8*i
		width: 8
		height: 44
		backgroundColor: rainbowColors[i]
		
rightFlash = new Layer
	parent: instagramBg
	width: 26
	height: 26
	x: Align.right(-8)
	y: 10
	backgroundColor: "#000000"
	borderColor: "#131500"
	borderWidth: 6
	borderRadius: 80

leftFlash = new Layer
	parent: instagramBg
	width: 26
	height: 14
	x:Align.left(8)
	y: 38
	backgroundColor: "#3D3438"
	borderRadius: 16

outcircle = new Layer
	parent: instagramBg
	width: 64
	height: 64
	borderRadius: 100
	backgroundColor: "#000000"
	borderWidth: 8
	borderColor: "#E6DFDD"
	shadowSpread: 4
	shadowColor: "rgba(0,0,0,0.1)"
	shadowBlur: 6
	x: Align.center()
	y: Align.center()
	
innercircle = new Layer
	parent: instagramBg
	width: 32
	height: 32
	borderRadius: 100
	x: Align.center()
	y: Align.center()
	borderColor: "#273745"
	backgroundColor: "#000000"
	borderWidth: 8
	
instagramBg.states.whatGhost =
	backgroundColor: "transparent"
	
leftFlash.states.whatGhost =
	backgroundColor: "transparent"
	y: -2
	
topBg.states.whatGhost =
	y:-44
	
outcircle.states.whatGhost =
	borderWidth:8
	backgroundColor: "transparent"
	borderColor: "#ffffff"
	width: 80
	height: 80
	borderRadius:16
	x: 24
	y: 24
	
innercircle.states.whatGhost =
	x: 40
	y: 40
	width: 48
	height: 48
	borderRadius:24
	borderWidth:8
	backgroundColor: "transparent"
	borderColor: "#ffffff"
	
rightFlash.states.whatGhost =
	x: 82
	y: 36
	width: 10
	height: 10
	backgroundColor: "transparent"
	borderColor: "#ffffff"
	
bg.on Events.Tap,(event)->
	instagramBg.stateCycle("default","whatGhost")
	leftFlash.stateCycle("default","whatGhost")
	topBg.stateCycle("default","whatGhost")
	outcircle.stateCycle("default","whatGhost")
	innercircle.stateCycle("default","whatGhost")
	rightFlash.stateCycle("default","whatGhost")
	