<!DOCTYPE html>
<head>
<title>DCS Program Coordinator</title>


<!-- These are needed -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- Fonts needed -->
<link href="https://fonts.googleapis.com/css?family=Barlow" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Archivo+Black" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Fredoka+One" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Tinos" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crimson+Text" rel="stylesheet">
<style>
	.jumbo-header
    {
        font-family: 'Bree Serif', serif;
        color: white;
    }
    .jumbo-footer
    {
        font-family: 'Barlow', sans-serif;
        color: white;    
    }
	
	.button-filled-flat
    {   
        background-color: #4E86BA;
        border-color: #4E86BA;
        border-radius: 0px;
        color: white;
        font-family: 'Barlow', sans-serif;
        font-size: 13px;
        padding-left: 25px;
        padding-right: 25px;
        padding-top: 5px;
        padding-bottom: 5px;
    }
    .button-filled-flat:hover
    {
        background-color: #3f6f9b;
        border-color: #3f6f9b;
    }
    .button-transparent-flat
    {
        color: #4E86BA;
        background-color: transparent;
        font-family: 'Barlow', sans-serif;
        border-radius: 0px;
        font-size: 13px;
        padding-left: 25px;
        padding-right: 25px;
        padding-top: 5px;
        padding-bottom: 5px;
        border-color: #4E86BA;
    }
    .button-transparent-flat:hover
    {
        background-color: #4E86BA;
        border-color: #4E86BA;
    }
    .button-transparent-flat-dark
    {
        background-color: transparent;
        font-family: 'Barlow', sans-serif;
        border-radius: 0px;
        font-size: 13px;
        padding-left: 25px;
        padding-right: 25px;
        padding-top: 5px;
        padding-bottom: 5px;
    }
	
	.jumbotron 
    {   
        background-image: url('h3.jpeg'); 
        background-size: cover;
        height: 400px;
    }
    
    .navbar
    {
        background-color: #508BC2;
    }
    a
    {
        font-family: 'Barlow', sans-serif;
        color: white;

    }
    a:hover
    {
        color: #e0e0e0;
    }
	
	 .table-heading
    {   
        font-family: 'Barlow', sans-serif;
        background-color: #51CCCD;
        color: white;
    }
    .table-body
    {   
        font-family: 'Barlow', sans-serif;
        background-color: #F5F5F5;
        color: #5C5C5C;
    }
	

</style>
</head>

<body>
<!-- navbar -->
<nav class="navbar navbar-expand-lg fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">DCS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">News <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Events</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Advisement</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Program</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">SP Archive</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Accounts
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="jumbotron jumbotron-fluid">
    <div class="container" style="padding-top: 5%;">
        <h3 class="jumbo-header">DEPARTMENT OF<br>COMPUTER STUDIES</h3>
        <p class="jumbo-footer">
            Ateneo de Naga University
        </p>
        <button class="btn btn-outline-dark button-filled-flat">About</button>    
    </div>
</div>

<div class="row">
        <h2 class="col-sm-12" style="font-family: 'Raleway', sans-serif"; align="center">Program Coordinator</h2>
    </div>

  <div class="row">
        <div class="col-sm-12">
			<br />
			<div style="float: left;  padding-left: 550px; width: 125px">
			<form action="tableview.php" method="post">
            <input type='submit' name='submit' class='btn btn-outline-primary button-transparent-flat' value='Table View' />
			</form>
			</div>
			<div style="float: right; padding-right: 700px; width: 125px">
			<form action="treeview.php" method="post">
            <input type='submit' name='submit' class='btn btn-outline-primary button-transparent-flat' value='Tree View' />
			</form>
			</div>
			</div>
			
   
	
	
	
 


</body>
</html>
