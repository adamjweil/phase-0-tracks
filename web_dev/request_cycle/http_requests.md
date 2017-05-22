Challange 9.1: How the Web Works

2. What are some common HTTP status codes?
	200 - Everything is okay, no issues hapened
	204 - No content
	206 - Partial content
	300 - Multiple Choices
	301 - Moved Permanently
	302 - Found
	304 - Not modified
	307 - Termporary redirect
	400 - Bad Request
	401 - Unathorized
	403 - Forbidden
	404 - Status code for 'Not Found'
	405 - HTTP method POST is not supported by this URL
	410 - Gone
	500 - Internal Server Error
	501 - Not Implemented
	503 - Service Unavailable
	504 - Gateway Timeout
	550 - Permission denied

3. What is the difference between a GET request and a POST request? When might each be used?
	GET - A request method that retrieves information from the server. 
	POST - A request method that requests that a web server accept data enclosed in the body of the request message, likely for storing it
	---> The difference between the two methods is that one of them (GET) is used to retrieve remote data, and the other 
	(POST) is used to insert/update remote data

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
	-A cookie is a piece of data sent from a website a user is viewing, and is stored onto that users computer by whatever browser they are using. 
	-When a server receives a HTTP request, it can send a cookie header with the response. 
	-The Cookie HTTP request contains stored HTTP cookies previously sent by the server with the Set-Cookie header
	-It is sent as a header with every http request sent from your browser