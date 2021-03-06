<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:useBean id="proDao" class="Controller.dao.ProfileDao"></jsp:useBean>  
    <%@ page import ="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<style type="text/css">
  		h1{
			font-size: 2.1rem;
			line-height: 1.4;
			letter-spacing: 0.5em;
			text-align: center;
			color: Black;
			margin-top: 50px;
		}
		
			.maindiv{
			width: 70%;
			height: 400px;
			position: absolute;
			left: 50%;
			top: 60%;
			transform: translate(-50%,-50%);
			background-image: url("Images/1.jpeg");
			background-size: 100% 100%;
			box-shadow: 1px 2px 10px 10px white;
			animation: slider 15s infinite linear;
		}
		body {
    color: #000;
    overflow-x: hidden;
    height: 100%;
    background-color: #B0BEC5;
    background-repeat: no-repeat
}

.card0 {
    box-shadow: 0px 4px 8px 0px #757575;
    border-radius: 0px
}

.card2 {
    margin: 0px 40px
}

.logo {
    width: 200px;
    height: 100px;
    margin-top: 20px;
    margin-left: 35px
}

.image {
    width: 360px;
    height: 280px
}

.border-line {
    border-right: 1px solid #EEEEEE
}

.facebook {
    background-color: #3b5998;
    color: #fff;
    font-size: 18px;
    padding-top: 5px;
    border-radius: 50%;
    width: 35px;
    height: 35px;
    cursor: pointer
}

.twitter {
    background-color: #1DA1F2;
    color: #fff;
    font-size: 18px;
    padding-top: 5px;
    border-radius: 50%;
    width: 35px;
    height: 35px;
    cursor: pointer
}

.linkedin {
    background-color: #2867B2;
    color: #fff;
    font-size: 18px;
    padding-top: 5px;
    border-radius: 50%;
    width: 35px;
    height: 35px;
    cursor: pointer
}

.line {
    height: 1px;
    width: 45%;
    background-color: #E0E0E0;
    margin-top: 10px
}

.or {
    width: 10%;
    font-weight: bold
}

.text-sm {
    font-size: 14px !important
}

::placeholder {
    color: #BDBDBD;
    opacity: 1;
    font-weight: 300
}

:-ms-input-placeholder {
    color: #BDBDBD;
    font-weight: 300
}

::-ms-input-placeholder {
    color: #BDBDBD;
    font-weight: 300
}

input,
textarea {
    padding: 10px 12px 10px 12px;
    border: 1px solid lightgrey;
    border-radius: 2px;
    margin-bottom: 5px;
    margin-top: 2px;
    width: 100%;
    box-sizing: border-box;
    color: #2C3E50;
    font-size: 14px;
    letter-spacing: 1px
}

input:focus,
textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #304FFE;
    outline-width: 0
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0
}

a {
    color: inherit;
    cursor: pointer
}

.btn-blue {
    background-color: #1A237E;
    width: 150px;
    color: #fff;
    border-radius: 2px
}

.btn-blue:hover {
    background-color: #000;
    cursor: pointer
}

.bg-blue {
    color: #fff;
    background-color: #1A237E
}

@media screen and (max-width: 991px) {
    .logo {
        margin-left: 0px
    }

    .image {
        width: 300px;
        height: 220px
    }

    .border-line {
        border-right: none
    }

    .card2 {
        border-top: 1px solid #EEEEEE !important;
        margin: 0px 15px
    }
}
}
  	</style>
  <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Bootstrap CSS -->
  
  <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!-- Font Awesome -->
    <script
      src="https://kit.fontawesome.com/996973c893.js"
      crossorigin="anonymous"
    ></script>

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css2?family=Baloo+Thambi+2:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    />

    <!-- My Stylesheet -->
    <link rel="stylesheet" href="style.css" />

    <!-- My jQuery -->
    <script src="main.js"></script>

    <!-- Chart.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
 
    <title>Smart Bank System</title>
  </head>
  <body>
  <% Cookie cookies[] = request.getCookies();
String name = null;
for(Cookie c : cookies)
{
	if(c.getName().equals("Name"))
	{
		name = c.getValue();
	}
	break;
}
name = (String)session.getAttribute("name");


%>
    <nav class="navbar navbar-expand-lg nav_style p-3">
  <a class="navbar-brand pl-5" >  Smart Bank System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto pr-5">
      <li class="nav-item active">
        <a class="nav-link" href="index.html">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Cust_balance.jsp">Check Balance</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="Cust_transaction.jsp">Transaction Details</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="Profile.jsp">Profile</a>
      </li>
       </li>
       <li class="nav-item">
        <a class="nav-link" href="Cust_Loan.jsp">Loan Details</a>
      </li>
     
       <li class="nav-item">
        <a class="nav-link" href="SendMoney.jsp">Send Money</a>
      </li>
        <li class="nav-item">
         <a class="nav-link" href="index.html">Logout</a>
      </li>
        <li class="nav-item">
         <li><button onclick="myFunction()">Click me</button></li>
      </li>
    </ul>
  
  </div>
</nav>

<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
    <div class="card card0 border-0">
        <div class="row d-flex">
            <div class="col-lg-6">
                <div class="card1 pb-5">
                <div class="row"> <img src="data:image/png;base64,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" class="logo"> </div>
                    <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUUEhYVDRUXFxYYGBUNDxoXGBgXDRcWGRUdGhgVGBgdIi8nHSAtIBcYJzooLTEzNjc2HSY9QT01QS81NjMBCwwMEA4QHxISHzwqJSo3MzUzMzc3NzkzMzczNTc3Mzc1NzU1Nzc2OjU+NTU1NTU3NTM1NTU1NTUzNTM1NTU1Nf/AABEIAKgBLAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQIDBgABB//EAEUQAAIBAwIDBgQDBQYEBAcAAAECAwAEERIhBTFBEyIyUWFxBoGRoRQjQjNSYrHBFXKC0eHwB5Ky0kOis8IWJCU0RFNj/8QAGgEAAgMBAQAAAAAAAAAAAAAAAgMAAQQFBv/EADURAAEDAgMECgICAQUBAAAAAAEAAhEDIRIxQQQTUWEiMnGBkaGxwdHwQuEU8VIVIzNicgX/2gAMAwEAAhEDEQA/AMW2Uwg5udTbd4D/ACrSWgV41GxUDnsVzzO4A9OedwaSF1Og6QxkJiBYZwucYHkeZ+Yo+wbsgcbxKGlyjhWwh3He21ZPLrXvHiRZeX2gyydfv0SqeNRIF0jGdpSRoK4/Tgjcczke1HfDcyQI0kzOmE7hxlGY9OWCfSgms5JptOpGdiJJMEagTjmvzHKp/GMvYrFaxk4AWeX90udtvuaXULYwE559mvxkgI3jW7PMl1zyAz08LXCA4pxdppNR39x/ShllB9KWq9FWqF3VAd2IX60bX6BdIUmsbAsAtT8L2ccjt2hBAHdGedD8aSOOZlj5Dy3wfKh+M8Ia0CN2mdXlswNLhck89/fxVGdJ2MOtGWiw02bx++Y+WkQB9+EaozsN6NS4aNTgkE+L/Sg7YLjVnB8j5ehquadj6j9NNIBsURbiOHRGWnEWRy2NWoFZVO6sp5g0dYQW0koCC4LeJYyE0nG+NefD71nxIPPFOHXsIY5Y5VZ5Oeg4lQaf9+VA8CLWJt97P6Sq9IWwmCbDw1+g8Ci4bqSGC5ZBoInWLTjKrkNqG/TGBUOHSfiIphDDGkhT8wxghXjz3wq57p5cudLIbh9bvbyupOMgt4yfMdfnTyDiklqSJreJGIDMyoV1D1xsKW8EThAxG+cZRnx8+5Z6lJzZhoLiQReMgLEHMW4k9915e3ktqIGhOIxFEpXHdL5/MBH72fnSbiNiplujPI6hWV1IGr9q22sdQM9KZXvEnnw1i8YDkdurlPy35M+G6Ywcil9xfRuL2RwXjMkEOzaWOM4cH/BmhExJEHXxGfnrdXs7XM0g5GOtd7YmbSbjO+YWcvbbRgh0dWzoZDnl5g7qfQ0Gj4NMGt0lkCWpZgw1ZcBWTHi1EbYA3zXvFYIxHEbbcfmqznxSFSo148tzgeVIqNMy1d1lUdFrpk8o458Mu+JFkD2aNyODVMlow9RUpLR1jErLhGYxKTsxIGTgeXrXsN00ZwRv5HZhWVxpuMVBHP8AS0CY6Bn9IcHSfWqnJNMF0Seh8Te9clnoKvNumSu2DkjfBHlSX0HFvRMj7miFQDPNC2rhfHy/n868uHBA+dWcUljaTMK6V8hso9hQnMVme8gGlYwiaJh5EKGavL6jnbkOQxQ9XwCsc6JjspUX51Gpy86hSSoMkdZ0ZiqbCPIo7sqa0WWKo4YkNivCKK7Gvexq4S8YQmK8K0Z2Nd2FTCrxhBFK7TR3YV3Y1IU3gQOmu0mjuwruwq8JU3iI4QHkYRhsKo7x25nng4yKZ39wFXstzGGWUgaQoKnGx5nIznJ8qU8I4n2MbB8ZYHTnpn/fOhr29R9kJBY+64x5885r1gqNDQXLM6i59WSLDLt4re/CKFhJdXAAGX7IkANoG5JPUAbfWsrf8QS4klmkLYGWCt3lBYhVwBjYCqZfiSdIDbR6OyA7LIH5uD4hkHG+/Skcc7KcqcH+lID8FQl3Z2AJWz7E8PfVdrAbByaPcprLarqGru6mEUYXdckA69+Q3G1NuD/C7SRNJ2oVkyyAHvdw8z6bUj4fLK7hUQytrMo5lgdsn15CtRx/iUESqls7q/ZmCVAPMdT+ls7mnOc10Ftuf3yuptD67S2kw9I65xHmJ5rN311K+O3ZmA8GvOnHpUbZcmmShXJX9J7OJe/qQgFRsvMNgfzqMsadnrxoA15CdRkBdjyO539KcGxfRMFURhwx2c75IW4n/SvKqRKRVUoAI0HII1b+Ieh9aafDvCmuZcHaJO9M3JQvkD5mgNSLlNeWUqZe42GaP4XFojN1Mkcio/Z9m57xz1049aTySa3YoNIZiyqPCATyFFfEPEhNKBGAI4x2EWBhiinYtRPw1Za5dyg0gy984U4PKoHZuKytO7pur1bEjLgMwPkxKss7AmGSQsiiPDb7SH2oXinG5JsCRsgDTyxkUX8T8TjkIEKBBgKQMbkHntWZfnVFxiSP0i2eman+5VF9Bw+5q+XQ2TjBJGnHhA61U7MsbojZQsufVlzjH1NVFjUO0xSX1GnNbw3T7b+lO2vHiZtAUhl7J1YZjZTuQfp0pm5geO11hoh2kusKdUQGoZ3PeGTjz60oLg41f3z6mpaAMEHoXON1HkKSDc3kKn0wXBwseI1sR2W5gptxUP8Ahy8gR07dezMZ1wKgiYKBjl88VHjMMzSSa1VoyTocjIXONhINwfQ0rdyISnIM3bsQfJSMED3+1dcXwMzuC2hyGYA4YjA+WxFC+uz88v78dPFKpbO5pGVp0/8APPOx81Zc8ElgiE1wuELrEik7vqUnIxyG3WgTdPnvnO2nfkANhT/jHHWuIWVmUoCjRLp0yKBkHPQnBHKs0WzWJ720wMDo+/eQ0WjZzVe0msBM+A0/a9Zg1TitCwOnehitX2wYsAhOfSsjajC7piexaiCBYqpY2zpwc1oeGfC1xKupU0of1N3U9gTz9hk1u/hX4PWKMTX2nVjtNLjuqOhfcb+n18qs438eRRApbYZgNKMBhV9gc9KPdMHMeQ5c1yau3vqOwUBPNY+T4KZHCzSIrEBlBDBSPPLAYHPp05UdP8DRL/8AkKdueCPpudvXalN38TS3EodzghRHtnTge5OCeta5MSQI8eM40y7433Iz9KfRp0Xiw+96zbRV2ulhxPieQSYfCskYzCRIP/57t81O/wBqFEGDhhg05tr6WJjkghR3c5LY9P8AlH2owXMV4NwEl6NjGemH3+9WaLDYWSTXrNu/pDiMx2/Kz34Wu/C00EJRikgwRV/YUk04sUe9nJJPwtd+Fp12FeGGqwKbwpP+Grvw1NjDXhiqYFN4lP4eu/D01MVR7KpgV7wrCude2dhV1miLqeQkaVPZ43zLj8sHcEDnv6Upryr/ANQM4sN+1d11KRhmFcDg8/nUxN+9g8voKGzXZpA2t4yTMIK13wxxS3tQ0rs3bYKxrzXfzxSK94i0sjySEFnOpseH5UuzXZojt1U5QEhuysbUdVzJtfQcByTGG7VBlQc+flXv9psSS51ZGlg26kZzS2pAUQ26vYAphpMmSEwa8DEd0AbLhfL58zTu4+Kv/l/w9rEIkO0mMa3GN8kcyeprLAVYFqfyqzsyk1NmpVIxiYuESl1jpR0vGpDCIQAqZ7VhzYv556UsVakFoxXrH8io6nTJBImL96l2xqBkNSCVxSqL6h1RWVZc1AsauKVWyUpxdxRiFSzGvCx86mwqDCkOlGIUSx86jmvSK8NKKNdmuzXVGhVqeaf/AAvMkUgnnUsFP5SjSNUg3GSwICjYnbqKz4rSx2wFrDJCQT2jK421BlJbYeRDDOfJa0UGkungs20kYMJ/KyP+KvjKSdmjiYiMHpjfG2SQBn0rIk53NXXFuQc6Cvpnb5DG1VstSo5zjB8FVGlTpMAYuhlKnIra/A92ZJezcgLuyr+knbb128/KsNTXhMrRlXRip1rpA2zjJzn0P86PZ6jmP5Je10hVpFupyWw+IISkhJHnyGPr58qRR3bIdQrYcVQyWqSFskqWbYHfOPfPKss1tyB656d09f6Gt1QHFIXI2R4NOHaWPctIswuIQ4PfQd7luvUfLn9aut+8uaR/Dd1pfRy7xVhjmNvM8jmntmml2TyJX6GjPSYHJDmbp5ZpmOxSMdRKUWUqtkpaiGKVEpRRSokVUK0KUqOiiStR01FJXySuryva5S9Uuryva8qKLq6urqtRWRRljitNa/CM7orYjXWA8SySxRSup5FUdwxB6HG/TNVfBdmklygmXUoEkrLy19nE0gQ+jFAp96nc8Qaad3nbLMTIx5KSeg8gOQHQACttKmNfvpzWao8g2QPEuDywPonjZGHewwIbHQjPMeo2oJUrbW8va8PuBISyRPE0Gd+zaRmVgp6KwByOWVU86yoUZphpCfvAH3QCoSFSqVYsdMrvh8kLaZ00tgSYyDsc+RPkRjoQQagqelObTlLNSEGIq7saPEfpRsNgrQyuZFVkKKkZx2kmo4JG4Ow32B5HONst3VpS96s+yVS6UzkioSRKTUpQnMfKCZapYUU61QwrE9q0NKoYVE1Y1QNZymheV1dXooIVrzFbz/hmmuUgorBMyrq/SQOed+oXp0rCVtv+GvEVjnZJP/EUxjlzJBHP2+9adn6/cVh/+hi/jPw5rc3cUVyHjnjiBJ0hw35gI5b6Nxy2zXz74j+GHt2BXvoc6SuejFSD67fcVrb6BkkbKyDftF8PLAHn6GjbLiKaCJI9XfK94A88P8vFXRfTa4ffdee2eu/Z7suOC+QtCc4wa0HCeGPcuAi6QsZZc509wZ5n/e4rX/EvDo5YHeBNBVg2kKArZQb7HYjes3wW6kiwqYBB1Z/VuCCPbB5elIbRDHXyXV/lmvRLmWItfRajhKyQN+HuVwGy2D6A7qd8509OeBXt68KuEKbq/eI3UHBBXlvjNem/clnJMkrr2epo1VUBGCU0sd8EjkOefSls8GlfWtQcuUaYc/Eczw4rxrUJOMKBnGnc9d/3fSmaSATvnz/oKiYdckbsD+zj1cvLc/cUqectI7r1JajqCAowmoQeAWm1g1FhWaF6y1cnFj1rPCdgcnZWoFaBi4oDzopLtT1qoQkEKRWo6asDA9alpqKL4xivarNdXIlerhWV5moVKpKte5r0GoVfbx6jiiaCTCEmLrR/Bd6IrlGfOg6opSMiRY5FMcjIRuGCsSCOoruMcDlinZHG6nTkeEjow/hIwQfIim2iDh4USRia50rI4fP4aHUAwTSMGR8EZydIJxhsE07sf+IqGNRdwJIyD8ghY1XbkrDHdUfw45Yx1HUpgYRae+Owjz4Zz24nE4rek+P05JPdwta2IjIxLOwlmH6xCoBiVvLLamx5Kp6iszGOdayb4xa4kP42KOZGPhKhJFH8EiDUvzJHmDSzjnD1hlxCSUdEmiLYEmiRQ6hwNtQzg42OMjnT2i48eXtlbTK90BKcfGUeZ1/uH/1Zabx8KtEkFrIhaTSWeTLagwUv3RqxuoyNsbqCDuaq4xFbzHtfxKqVjbSB2T6iGeRcaX1DOsDBTINFf2latL+LLntNJ1RANuxUpjOnAwp05z0B55WqYDuwBNgcpz/H34pTycRy7+GqjZWUVskQuIlleR2jlyFOlVYKQuoHGxUgrpO532GO4nZIsV2dEYYC2YFVUaSQmrs9u6CWbYedXcKvo5ewF0khdXLR6RiNyX1MSeWkYUMNsBc5OSKF4lxREkuYnUuHWOMb94OkYXvcuTqp/wAJGDnZzQ/eXmczwIDxlfhby0SZ6Pp4HNH8RdWkuLbRGqLA8ncXTlsgISoOklVZMHGcoN8bV8unStjdce1XE0wjOJYjb6S3eXIXvZA33TltsedZh4CaWyiWtiNB4xdODxOfFKZEoZlplNCaDeM1kqsha2OlBsKrIol4qh2dYnBaA4KiuFEpbE9DVyWDk7KaENJUNRozQQFX28hRgycxVzW5BwQc1NbY+VMa0ygLxC+icD44t5Hom2lVNOQCWbHI4HXn9aDn1RsynP7y5DDJGx5+mis3wxHhkV0PIhtq3KvHcgOuMj9qu23nzPKunTJc2+a85tDG7PUlvUPkV3BbxtGl1ZgWTV4dJUMM82HTNHcV+HBIe1tY9DnGVOkRsTjlhu79KHh41bxRN/8AsVeW++MDOw9uZoBvj/Y5jBO+CCVYbEDbfO5B+VU+W/3mksp1nPLmNQi8ciXZ8ZFeQcQSeRVXOMjV7daVcNSKTJcZPiq5OJRpIBDgYznbvE0DXDFJNltdSFw0GVoOL36xKRyZgV/uof8ASlVrNGw2YZqyO9jbJdC5PpS264NLK+q2Uxim1HE5JFGk1owuMc0fLb+W9BvHirxwW8jGVcN6Gh5L2aPa5hOPNd1oO1Ob/wBSD3/K8C1YrEVCO+hfbVpPkdv50SIM7owNQXyVuJFnCO1clyw61YOJNVLxkcxVWKpDDSsFXVeYwOlWQWrPq7NS2kajjxY9uZ+VcjCV6IvAElC14FprDwosqsJbddR0hXmRZB3tPeB8Pnv03pjb/C0jKGMtuuVEiKWftGzyAAQ75wPmOhBogwoDWYNVmgtXW5IbNPrj4YmQjRiRTjv7omWJwAZQuc42x5+e1AXXDHjCl9Pez4XR8YxnOknHMffyogC0yq3jXBaqQw8QVWeRIbkKscvaHTbzaVChw/JHwAGDYUncEEkUIPgm55hEI8xNAU/5g+PvSmztQyZD4bPuuOW/Ue9MZ1EYVpbfut4SJwyk7eQyBz5+nz3NMj9T6Eec8llNSDAz7QPX2R1vwu3tu/eSJKw7yxQuHyfKSVe6q+eksx9OdL7u8a4mLSFQXIXOMRKNlUADkqqAAByAq5b230j8oBt+YL4znGMsAcbb46cqpkuoS+vSdzqYLhY/8I307+9Oa8DVKLnH8SnMXDIB47uL/Ak7N94wPvRKWdrnHbysf4YF/wDdID9qznbfqRSFJ26/LNMF4hGcEg/LxD2NbG1Bx9PhZ6mL/H1+VrLXiyxRiOFbhlHLPZpjJJ6o2dyTvy6UF+Vz/Ckk97MkxOSepxpzSI9o5zbCUpnTk5K58s8s1Z/ZVyQSykAeIswCjPnk1AWNuBE8JE+BCUXvMYnARoQLeKYT8QRDhbWAH3kf/qcihG4y+chIV/uwQ/8AbmlN9BJGcTKVz4T+k/3SNj8qEM1UaomfvnKcKeJoyPYFo77hyPiWIdxu66j9EnMqP4TzHpkfpNKp4Yo20zxsDjVv4at4TxPQxWTJjcdnKB4sdGXP6lO4+nImquNIyS/nYcABkI8LoRlWHoRg/wCtLqQRIVMY8Ogmyqlu7bQVWMZPXmwpPKYgO5qJ/wDLRbxQv4e6f99KO4dach+HjmADaiozPjnnBI5VzntLitDS2mJv2E/KXWl6uRqGMdaM4jcCNkNs+cjUfQ0XDxuBF09hg40tiNBn5sSaUcRuIXINtEYseLL6s+vpUyESqaMb5LSB5KyZpc6ioJPXnVTO7bGp2ty2wzmtTFwRiQJ+xX94NLCrjzBXVkH0IrQykHCZVucWfjPYs9bxSKNWMrXSXTl9Sd32rQz8JiViBcwgdBl3/wChSKgeFQL4rgf4IpG/6tNPFIx+j8JWMEyY8vlIXjDnLkk+tXwWcZ2xmnVvw22dgvbSb+caRr/zF2/lQ3EeG9hKrQnK47uXV2JHPwgYG42x570t7A1UalomFPsYlXA2f9VDx28QOSVB880tv+HvI5fVgk6sf5VNOHxD9rGx9c5rOSZyQYGgTiMlMb2/hhXMcwLdF50TwXjLyZwDsNXI1XwmK1Rg3Yxt6NWpS7j2MKJGPDjIGT50YkmZWeoWBpEGeJ/SzQ+LiH0Ojg507jH86MfjDuO7CG98Vo3sYZf2/Z8g2SRq39qz/FuEW0ZJjuRHjrqHZn2zvRgn7ZAd2R1Y75958ln77g0lw+phHGPTeiYPhfQO5O4b08NADj2lyusSAHSGGRn1FMrfjSnnt70ANMmdVqeNpY0AZdnyqJLW8i5FJV/81UHi+NpbZ9XXanaX2dwc+1GCaH9Um/8AdNMjgfdI3n+TR3SPRfOrmTWcwwMuwwqo5XPn3ix+9SgneP8AbRuoPhypVts7rnnzputjckM/4idolGolZj2+P7rOKVXnZtgq1y7ec2nTjrghya5+Etuuq2q1/RN54TbtNoWi4dw5byLTCLdrhn/K1yIt2QudRKg6sdcsDsCaWcUsri2GfxEbID2cTRXKtq2wSkevVp3IyVH0NIilMeGcXSBWD21tMx7waZdbD5dR9KEnFmmtZgHQvyQtnE0kiK5JBPQjVjGds+1GycOIPieRATlUws/rscj5gH5UNxTi7TsHMUSEDSOxj7NSOnU8qlZ3rYYsrkDGWAI079TjAqNLclHiqBiy5ffbzV3Yox/+mJdEjxhtMmOe35ajUPUgdduteXwuFVVullVR4A6FV3OTjIHrTE8ShMDHShmyNDbrdY/Vh1x96VQdrO6xpl2dgqKWY947DmcD3pnVsCltJcZcIjjn4/pWWN92XhjjY+cia2HsG7v1FdCobUzMi4Bkwc9458KBQRnfrgbc6hfWhikeN2Rih7NjGdUZPXSTzxy+VDBGPUAUbXFMgG6cW98oAUjHtuu56iiprZGIKEDPUeH5g8h61QvDUZEK4DYG+dUTEAE5wcj5VC6V10aQUA8RDlrbJ6rndPUEmtQcQLrF0C7oGFfcSSwHs+2yo7ygajFvzwrDn8q48duAAolIA8IUBVHnjAGKDuY5MCSTvK3hcMHUnyyOvpTLhPDbhoWkhSGSNwVZXKlzoJJ05wykYz3SCcjnVF5VwwNDnQflLbjiEsgAmldxnVhmJXJ2zgnnVU0TJ4xj1/SfYjnRHD4onfEkiwknu6kZoB6MwOpR0zg1AXuMjI58ucRHnv8A1FViTYIs0KhHPpTq2JuIGi0szxq0sJRGdgucvG2kEhTnUDyDZ/eJC2NI3IH7MkhcjeLf06fI/KrZ3ls5XSC4ZTtlonkj1DmM8j161N4WhSzjBsUFDwqaQjs45TkhQdLdmMnGS2MAepNTeSe0lZXwHAKsCQ6kMPNSQfkaN4nYXUyJPPIJiw0jMhafA/eDYJ+ppDJGVOCCD5Hb7VldIMprS2oIkFX2xQsTMNj78z1yKLHD0beNx7P/ANw/qBSwGjeHxl3VRgFmEa5OFyTjc9BvzoqcEwVdRpzBhajgWbZHmdE7oMcOpFLGVhswfG4Ub8+eB1oJrSVt9Ue/e3mj1b7g7tvmrbnjZjYLbMdCKYUIJVmz4nPqxycdBgdKRAl33bAJ73T3xW5zwywWRrCZJTxOHgEdrcwJ+9hmkYdeSAg/I9PUZGurwRuVSQSKMaWCsudv3TuPL5UKeH58Davnpb77feoCxUECRWxkav3sdcZ5mll71YFM5me5GRcRjYgcj9PtRHFLtISo3bKhtxpwfqcj1qq+htjvaJKm/KQoygdCCN8+/r7CE3D3x+ZGcfxDH0z79KAvcQlltMOHBWjjrSKNFszeRXAY42+fvVD3d037O3C+rtn+oqUcRUAJkDy5r9DVpuWjxrI38O/ePyO/0pd9ShhgPRaO+fYr2L4Y4gT2koVQ35m3e7uM5wvIY86ZcQ4JLLGipNpZB3cghTn1ByPvXljxFiraHwoBYjXpUjrsTgn061Q3xPGoOh+9+kMHC/MhTVgMAugc6s9wLRlwAS5fh2dAfxTTEZ2MLlhjzI5/UCpW3B7Vjlndj/G4DfPFFRfGgDAyNGV31LGkhlJ6Ydio+1CcV+KBOCtva6mI062BMy+2j/P5UJdSHPzTANqcbgjmOiPOPVaSzs7BFX8gah+ruvv5jNE643XS8aEeRC6fvWV4HFdmRRJC2nPeLEBcezHJHtVXFLW+jZmRX0c17Mh1A9t2pgqQ2cJ8El1HE/CXieMp/NwaAk6NcZz/AOG2Vz9x9KGfhcue7OMeqnV/OkESXEigm6ZSea7qwPlsQark4G7HLzMx89JP31UOKcm+cJu6w2dUHgSmvxEEt0CQTxzFx39PiTH8qyZqYt/UV3Z74rI4kro0mNYIBVYFSEa82GftXAb4AJPlVlzBKmNaMueRPh+tCmzom1s0UiqjY2GnB2lHzq6O0ni1CwkOl8ak5q3llSCD71mlLZzT7g147SImcMSFUk90U1rg7NZKtJzAS0yNQbhcOGRhGFw8kVwDqwyjsCPQrSqTywNs7+daH4msdA1vOHckalBGoehGcgj1rOac+I4981TxhMIqDsbcUz6Ds5JhwW7ihlD3MQmQArpJxg9GHQ48jVvGuLQzFOwgWHSulipy0h/ebYAGq4bKJkG/e8/OjUSGNAJLbtDg6m2+Rxj7UYDozshc9mLFBJy4etkmivGU9wkDy/SfcU+4bxZQ2ptuXPw7c9uvtSm04bLLqaFdl9eXpQjKQcHmO7Vte5t0b2U6st11Wq41avOZLm2i1w5061AGcddI/wAqzMnlp39qstL+WLPYyMmfEAe6f7ynY/MVsfh+44QYVF8pWfB7V3zuepVht8tqvFiSwHURESPufysxDw1nTUrYb907feqhZKARMzxyDw6lzAwx+8OR99qO45eW6TkcNdmhwNOrVseunO+Kpi4tq2cBh5GpLSod9EjLwPolsUhXdM7dcUdw65V583ET3OoMuhHKvk8mBAPLyxjem+Ilty8WVkJ1YIBjx86Sw8VkilWWIojrlcqvMHmCDzqiMOZRNqbycLeU/flShaftezhSUZLdnE+S2k8wMgZ260beJKkaNeQlUclU1YOcc8b6lpZd8bncqXlbKE6GB0uurnhh3vvQDs7HJJJPUnLZPPegxxYIhRLoLoHZPrPsmht43/ZsVPk26/I1JeHyhSwQlV8TDeMfOlsQI670zteIlYnjJPex17vzomOHYqeHtHRMqhn61WZAOoq+2tkORId/0kf1q7+zcHUmGH++dM6RUL2NsUEt9p5ZNGw8XY7OowfTK1fwiKBZlN6jGIZ1hfEfIVprpeGSRt+FhlWQeFSSFPrsSKoYuKCo5h/GVnOL3yhYzAqr3e/pycn1BJwfbFCWs08i6ojGN9O4FFCxf904q9+HSRgMUIHmKszOaWMIbAEniUGbK5fxTqB6ZH8gKJ4d8IdqSXnTX4VVsh39mO31rx7rQMvv/wBVE2V4rkDUBnzqsLCb+qA1KzR0bDkAi7XgwjDL3s7q+o5ahZvhMMdUbkb6tLAFfrRH9rwwylLnLAdUP8vOi4fjCyTB7N2x5+H02oju4gpLTtE4mzfkgmtZYvHGCPNBlanbcSwQUbBB1L6EehqHEPjiNmLQQMPT9OfP0rOXPE5riQEIqnoB19zUNVoyM8kbNme+72xz/S3UnGndFVwp050t3u0yeZJz/p6V5Dd5/UB70m4fZXBhcHuMw04JByKzt5wq6ibftMeaklaMvLRZqW2iyo4tLxZbm57Ntpgreu32YUqlS2Bx22n010iXhAbnM/sT/nUxwBOpf7VRcXfiPFG2lTZbGe4FJVajbIrqpeDXhkPSsIMLruZiELRNbAkPHsw7y1deXEtyUSZVVchWZdl+/Klli8mPCT7U6/ElIyJEwfXb61oaQ4LnvBYRkTpxCH4x8NdigdHztqYH+hoj4S4LbzKzXT8jpxnkPMjrmkM97Iw0FmK/pGTpHtTWz+HGki1s+CRqXbK0IALpaEb8TKcVHxJz9kVdW1pbXkZzqjB748WNu6T86K+J+N2EkJS2UF8d3CnTn97URt7Vjbm2KsUPQ1ZaWYLd81WM5AItwyA97iY+UMLkjYUytb1hjYkfVavn4SuMpTKw4hFHlZkI27rYBUelRrSDcwrqVWubLWyvL3ieiIdhmNiNJ0nun3GKz6q7k6ELH2z9aInBnmYQDu+LfwgeZq6K8e27pRSehOf5VbjiMnJUxu7bDR0jeFVHwmZt9GB6kf0oCeF1bSedPLfis8pwGVB/Co/92ajxDhmhdZYk/qJqiyRLVbazmuipHIBL7bh4Ze+e9Vc1kyVFLrFG296GGDvVDCUxxqNvmF7wq3kuHEOvSviORy9qfv8ABPfCpLv7rq+lLLa3RgXDaWHkSrfIilzcVmQ6UlfAPdzhsexbJo7NHSus53lRx3Zjl7yruPcINrJoZg3rSsVO4unkbVIxY+ZqlmNJJE2WxjXBoDjJVor0VCFWc4FXSWTirHEKGAYJXCTHWrI+IlTsao/CetavgXwObiLtBJpP6dsr86MYtEt7qTR0tUtsr1HZRIM/vY8Ve8R4iIpD2GQKv4n8PSW3eJBx1FKXXUcvvRkuAhZ2NpudiblwRq8bnZe4NjVMl3duunUQvlk6autpdIwOVGJdLVgSLlU52E9FgSW24RPM4G5NPLb4WnjOoo+3/L9aYcMvzG4aPBPrWlX4qkYFHRBkc/8ASrFMC4ulP2l5kZDsXz6/4T2jE5wfWus7ARjDoG9a1yWUZOXYfxb1G9Nuq9xlyPFRYGzKAVn4cOiRRLEdtIHypnwt4o3DGMEUm4hfQgHlmlltxMg+lWagaYKgoPqNJv3r6o3GrR0I7Iq2O7sOfuKUoWI3FZDiPE9KgpzoD/4nlAxmpvWMtKjdkfVEx7Lb3PDkYZdQPUUpk4YM92Tb3rLzfEdw+2o4oB7iYnOpqA7Qw6Sns2GoPyjzRdjbjO9Hz2A5gUr7bS23Q00tuIAjBpLcORT6u8nEEz4ZxCOMYcEfvbZ/lQ3Eb1ZyRDkD9RIx9BVqqjLkYpY1yI2Olcg+uPvTXEgRNlmYxrnFwHSQVxCUO9G2nGpo00I3d8m3x7UNdStIc4wPLnQTMaRMGy3BmNsPErRcItFlDPINTZ+nypbxLTHIQh5dKDijkPgDfLIr1uHy8yjVZdLYA70DaYa8uLrcEZbcRPLNN7Uox7+Btz/TWVEZU77UTFdlfWoyoRmpVoB3VTq4u1hfMeGyNJpPe3bTPqYAfpAHhAqLTazvVtuyg1ZditooymKd4kodXdDlCV9RtVUsjt42Zvck/wA6dNGrDahVtRrGeWe9QlhRtqtzIQDQnG2ast4mB2B+la+KGJVBkx/P51Y1xCg3ZPl9iKZuROaynbSbBsrLG4ZdsYoQ70y4tcRufyzkZpbS3ZwtNO7ZiF6KlUNVeFxVJkIiCTSaO/Fbb0nM1QM5qw+ELqOJO10typvw+/uYV/IlKr5YBX7istAWp0s7CPG3Ln+qmsdKy1WRZHzcVef/AO5cHHy+1eK0AByayUhfJ3qIVz1NAahOiYNmA1Ti4uUBOKDkvxyFCLaMfOj7PhRJ5VUvdkEeGkwSSiLK7YEVLit85I07U0t+EnyopuDA86fgdELGa1IPxLH/AI6bozVUwlbmTW3HBkHSpf2ao6UO4JzKP+bTHVasOnDnJ3pzBaKFGRTxrRR0FVPEKY2gGoH7WX2Sm5tw21ULw4eVOGUVHFFugoKzgICXrYL5VZ+EHlRddirwNQmo46rKC3cnGDR8HDJei11dWVjAStNfaHNFlewZBh6GJBNeV1U6xhFTMtlGxIpFQe2GeVdXUZyS5IctdwK1TSDtj5U8mt49O2nl6V1dWhct/WKwXxHCgJIxWbIrq6slTrLs7J/xrwVwfFe11KWtEw3eKZ2xDc66uptMyVkrtAEhRvhpU7/Q0kLGurqGr1kez9Vdk15vXV1LT15pNe9ma8rqimIqQiq1YwK6uoohDJKuSUCrRdZGK9rqIFAWBRVc0XBBXV1NYFnqEhMbe1FOLS3UV5XVpAC51RxKaIgqzTXV1EsyrcUO4rq6iUCGkWhnFdXVE1qGYVWRXtdUTgvMV2K6uoVa/9k=" class="image"> </div>
                </div>
            </div>
             <div class="col-lg-6">
            <form action="LoginServlet" method ="post">
            
           
                <div class="card2 card border-0 px-4 py-5">
                    
                    <div class="row px-3"> <label class="mb-1">
                            <h6 class="mb-0 text-sm">User name</h6>
                        </label> <input class="mb-4" type="text" placeholder="Enter Username" name="uname" required> </div>
                        
                    <div class="row px-3"> <label class="mb-1">
                            <h6 class="mb-0 text-sm">Account number</h6>
                        </label> <input type="text" placeholder="Enter Account number " name="accnum1" required><br> </div>
                        
                        <br>
                     <div class="row px-3"> <label class="mb-1">
                           <h6 class="mb-0 text-sm">Enter Phone number</h6>
                        </label> <input type="text" placeholder="Enter Phone number " name="phnno" required><br> </div>
                        <br>
                         <div class="row px-3"> <label class="mb-1">
                            <h6 class="mb-0 text-sm">Password</h6>
                        </label> <input type="password" placeholder="Enter Password" name="psw" required> </div>
                        <br><br>
              	<button type="submit">Login</button>
              
            </div>
            
            </form>
            
            
        </div>
       
    </div>
</div>

 </body>
</html>