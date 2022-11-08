<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>${statusCode} Error</title>

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Cabin:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:900"
	rel="stylesheet">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" />
<style type="text/css">
* {
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
}

body {
  padding: 0;
  margin: 0;
}

#notfound {
  position: relative;
  height: 100vh;
}

#notfound .notfound {
  position: absolute;
  left: 50%;
  top: 50%;
  -webkit-transform: translate(-50%, -50%);
      -ms-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

.notfound {
  max-width: 410px;
  width: 100%;
  text-align: center;
}

.notfound .notfound-404 {
  height: 280px;
  position: relative;
  z-index: -1;
}

.notfound .notfound-404 h1 {
  font-family: 'Montserrat', sans-serif;
  font-size: 230px;
  margin: 0px;
  font-weight: 900;
  position: absolute;
  left: 50%;
  -webkit-transform: translateX(-50%);
      -ms-transform: translateX(-50%);
          transform: translateX(-50%);
  background: url('data:image/jpeg;base64,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') no-repeat;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-size: cover;
  background-position: center;
}


.notfound h2 {
  font-family: 'Montserrat', sans-serif;
  color: #000;
  font-size: 24px;
  font-weight: 700;
  text-transform: uppercase;
  margin-top: 0;
}

.notfound p {
  font-family: 'Montserrat', sans-serif;
  color: #000;
  font-size: 14px;
  font-weight: 400;
  margin-bottom: 20px;
  margin-top: 0px;
}

.notfound a {
  font-family: 'Montserrat', sans-serif;
  font-size: 14px;
  text-decoration: none;
  text-transform: uppercase;
  background: #0046d5;
  display: inline-block;
  padding: 15px 30px;
  border-radius: 40px;
  color: #fff;
  font-weight: 700;
  -webkit-box-shadow: 0px 4px 15px -5px #0046d5;
          box-shadow: 0px 4px 15px -5px #0046d5;
}


@media only screen and (max-width: 767px) {
    .notfound .notfound-404 {
      height: 142px;
    }
    .notfound .notfound-404 h1 {
      font-size: 112px;
    }
}
</style>

</head>

<body>
	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<h1>Oops!</h1>
			</div>
			<h2>${statusCode} - ${simpleMessage}</h2>
			<p>We are sorry, ${detailedMessage}</p>
			<a href="${pageContext.request.contextPath}/">Go To Homepage</a>
		</div>
	</div>

</body>
</html>
