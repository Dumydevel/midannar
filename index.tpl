<!DOCTYPE html>
<html>
<head>
	<title>midannarverkefni</title>
	<link rel="stylesheet" type="text/css" href="myndircss/index.css">
	<meta charset="utf-8">
</head>
<body>
	<h1>Söluaðilar eldsneytis á Íslandi</h1>
	<div class="image">
		<img src="/myndircss/AO.png">
		<img src="/myndircss/Costco.png">
		<img src="/myndircss/daelan.png">
		<img src="/myndircss/N1.png">
		<img src="/myndircss/OB.png">
		<img src="/myndircss/olis.png">
		<img src="/myndircss/Orkan.png">
		<img src="/myndircss/Orkanx.png">
		<img src="/myndircss/skeljungur.png">
	</div>
	
	<%
	listi=[]
	for i in data["results"]:
		if i["company"] not in listi:
			listi.append(i["company"])
		end
	end
	%>
	<div class="wrapper">
	%for i in listi:
		<div class="box">
			<a href="/fyrirtaeki/{{i}}">{{i}}</a>
		</div>	
	%end
	</div>
	<%
	listi2=[]
	for p in data["results"]:
		if p["bensin95"] not in listi :
			listi2.append(p["bensin95"])
		end
	end
	listi3=[]
	listi3.append(min(listi2))
	%>
	<h4>Ódýrasta Bensín : {{listi3}} kr. hjá Costco Iceland </h4>

	<%
	listi4=[]
	for p in data["results"]:
		if p["diesel"] not in listi :
			listi4.append(p["diesel"])
		end
	end
	listi5=[]
	listi5.append(min(listi4))
	%>
	<h4>Ódýrasta Díesel : {{listi5}} kr. hjá Costco Iceland </h4>

	
	
</body>
</html>