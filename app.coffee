leftHeart = new Layer
	x: Align.center(-35)
	y: Align.center()
	width: 70
	height: 160
	image: "images/leftHeart.png"

rightHeart = new Layer
	x: Align.center(35)
	y: Align.center()
	width: 70
	height: 160
	image: "images/rightHeart.png"

flipHeart = new Layer
	x: Align.center(35)
	y: Align.center()
	width: 70
	height: 160
	originX: 0
	image: "images/rightHeart.png"

flipHeart.states.add
	middle:
		rotationY:-90
		brightness:150
	over:
		rotationY:-180
		brightness:98
		
flipHeart.states.animationOptions =
	time:0.4
	curve:"linear"

handle = ()->	
	flipHeart.states.switch("middle")
	Utils.delay 0.4,->
		flipHeart.states.switch("over")
	Utils.delay 0.9,->
		flipHeart.states.switchInstant("default")

handle()
Utils.interval 1,->
	handle()

	
	
	
	
	
	
	

