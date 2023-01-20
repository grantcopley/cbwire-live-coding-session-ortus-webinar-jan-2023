<cfoutput>
<!doctype html>
<html lang="en">
	<head>
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<title>CBWIRE Twitter Clone</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
		<script src="https://kit.fontawesome.com/7e32a713f5.js" crossorigin="anonymous"></script>
		#wireStyles()#
	</head>
	<body class="bg-light">
		<div class="container mt-3">
			#wire( "TweetForm" )#
			<div>
				<h2>Tweets</h2>
	
				#wire( "TweetListings" )#
	
			</div>

		</div>
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  	
		#wireScripts()#
	</body>
</html>
</cfoutput>