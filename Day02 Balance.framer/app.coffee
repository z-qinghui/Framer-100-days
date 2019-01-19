
income = new Layer
	html: 0
	height: 80
	width: 200
	backgroundColor: "transparent"
	x:Align.center()
	y: 86
	style: 
		fontSize:"46px"
		fontWeight:"400"
		textAlign:"center"
		lineHeight:"80px" 
		
cumulativeIncome = new Layer
	html: 0
	height: 30
	width: 100
	backgroundColor: "transparent"
	x: 20
	y: 220
	style: 
		fontSize:"18px"
		fontWeight:"400"
		textAlign:"center"
		lineHeight:"30px"

start = [1,1]
maxium = [1286,1886]

moneyCount = (i,countLayer) ->
	if start[i] < maxium[i]
		Utils.delay 0.000000001*start[1]*start[i],->
			showNumber = Utils.round(start[i],2)
			countLayer.html = showNumber.toFixed(2)
			start[i] = start[i] + maxium[i]/103
			moneyCount(i,countLayer)

backgroundImage.onTap (event, layer) ->
	moneyCount(0,income)
	moneyCount(1,cumulativeIncome)
			
		
		
