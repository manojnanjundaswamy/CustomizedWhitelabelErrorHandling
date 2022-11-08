<!doctype html>
<html>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bgimg {
  background-image: url('https://www.w3schools.com/w3images/forestbridge.jpg');
  height: 100%;
  background-position: center;
  background-size: cover;
  position: relative;
  color: white;
  font-family: "Courier New", Courier, monospace;
  font-size: 25px;
}

.topleft {
  position: absolute;
  top: 0;
  left: 16px;
}

.bottomleft {
    position: absolute;
    top: 45%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
}

.bottom-buttons {
    position: absolute;
    top: 70%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
    width: 90%;
}

.middle {
  position: absolute;
  top: 25%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

hr {
  margin: auto;
  width: 40%;
}
</style>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<div class="bgimg container-fluid">
  <div class="topleft">
   
  </div>
  <div class="middle">
    <h1>Landing Page</h1>
  </div>
  <div class="bottomleft">
    <p>This is an example project for Whitelabel error page handling in Spring boot</p>
  </div>
  
  	<div class="bottom-buttons">
  		<div class="row">
  			 <p>Click on below buttons to see the code in action</p>
  		</div>
  		<div class="row">
  			<div class="col">
  				<a href="${pageContext.request.contextPath}/getError/400" type="button" class="btn btn-primary">400<br>[Bad Request]<br></a>
  			</div>
  			<div class="col">
  				<a href="${pageContext.request.contextPath}/getError/401" type="button" class="btn btn-primary">401<br>[Unauthorized]<br></a>
  			</div>
  			<div class="col">
  				<a href="${pageContext.request.contextPath}/getError/403" type="button" class="btn btn-primary">403<br>[Forbidden]<br></a>
  			</div>
  			<div class="col">
  				<a href="${pageContext.request.contextPath}/getError/404" type="button" class="btn btn-primary">404<br>[Not found]<br></a>
  			</div>
  			<div class="col">
  				<a href="${pageContext.request.contextPath}/getError/405" type="button" class="btn btn-primary">405<br>[Method not allowed]</a>
  			</div>
  			<div class="col">
  				<a href="${pageContext.request.contextPath}/getError/500" type="button" class="btn btn-primary">500<br>[Internal Server Error]</a>
  			</div>
  			<div class="col">
  				<a href="${pageContext.request.contextPath}/getError/502" type="button" class="btn btn-primary">502<br>[Bad Gateway]<br></a>
  			</div>
  			<div class="col">
  				<a href="${pageContext.request.contextPath}/getError/503" type="button" class="btn btn-primary">503<br>[Service Unavailable]<br></a>
  			</div>
  			<div class="col">
  				<a href="${pageContext.request.contextPath}/getError/504" type="button" class="btn btn-primary">504<br>[Gateway Timeout]<br></a>
  			</div>
  		</div>
	</div>
</div>





</body>
</html>