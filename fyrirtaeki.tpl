<!DOCTYPE html>
<html>
<head>
	<title>Midannarverkefni</title>
	<link rel="stylesheet" type="text/css" href="../myndircss/index.css">
	<meta charset="utf-8">
</head>
<body>
	<table>
		  <tr>
		    <th>Fyrirtæki</th>
		    <th>Staður</th>
		    <th>Bensín</th>
		    <th>Dísel</th>
	  	</tr>
			%for i in data["results"]:
			%	if name == i["company"]:
	
				  <tr>
				    <td>{{i["company"]}}</td>
				    <td>{{i["name"]}}</td>
				    <td>{{i["bensin95"]}}</td>
				     <td>{{i["diesel"]}}</td>
				  </tr>
				% end
			% end
	</table>













</body>
</html>