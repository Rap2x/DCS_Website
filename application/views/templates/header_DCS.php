<html>
    <head>
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
<link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Heebo" rel="stylesheet">
<!-- Font Awesome -->
<link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet">
<!--
    The following resources are required by the Admin Module until the presentation.
    The CSS file is just the old CSS file, it is required since it contains the
    classes necessary for our pages. Please do not remove it until the new CSS file
    is fixed. The Javascript file contains a function that enables us to implement
    a search function on our tables.

    ~ Dean Simon Damasig
-->

<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/admin-module.js"></script>

<style>
    .navbar
    {
        background-color: #508BC2;
    }
    .navbar-brand
    {
        color: white;
    }
    .navbar-brand:hover
    {
        color: #e0e0e0;
    }



    .tabs
    {
        font-family: 'Heebo', sans-serif;
        font-size: 13px;
        color: white;
    }
    .tabs:hover
    {
        color: #e0e0e0;
    }
    .drop-tab
    {
        font-family: 'Heebo', sans-serif;
        font-size: 13px;
    }



    /*
    .jumbotron
    {
        background-image: url('<?php echo base_url(); ?>assets/images/header.jpg');
        background-size: cover;
        height: 400px;
    }
    */
    .jumbo-header
    {
        font-family: 'Nunito', sans-serif;
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
</style>

    </head>
    <body>
            <nav class="navbar navbar-expand-lg fixed-top">
                    <div class="container">
                        <a class="navbar-brand" href="<?php echo base_url()?>">DCS</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div id="navbarNavDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item dropdown active">
                                    <a class="nav-link dropdown-toggle tabs" href="#" id="newsstab" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        News <span class="sr-only">(current)</span>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="newstab">
                                        <a class="dropdown-item drop-tab" href="#">Manage News and Announcements</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle tabs" href="#" id="eventstab" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Events
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="eventstab">
                                        <a class="dropdown-item drop-tab" href="#">Manage Events</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle tabs" href="#" id="advisementtab" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Advisement
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="advisementtab">
                                        <a class="dropdown-item drop-tab" href="#">Advisers</a>
                                        <a class="dropdown-item drop-tab" href="#">Advisees</a>
                                        <a class="dropdown-item drop-tab" href="#">Manage Advisements</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tabs" href="#">Program</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle tabs" href="#" id="programtab" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        SP Archive
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="programtab">
                                        <a class="dropdown-item drop-tab" href="<?php echo base_url()?>archive">Search SP</a>
                                        <a class="dropdown-item drop-tab" href="#">Manage Archive</a>

                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link tabs" href="#">Site Statistics</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle tabs" href="#" id="accountstab" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Accounts
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="accountstab">
                                        <a class="dropdown-item drop-tab" href="admin/account_settings">Account Settings</a>
                                        <a class="dropdown-item drop-tab" href="admin/accounts_admin">Manage Accounts</a>
                                        <a class="dropdown-item drop-tab" href="admin/control_panel">Privileges Control Panel</a>
                                        <a class="dropdown-item drop-tab" href="admin/mailbox">Notification</a>
                                        <a class="dropdown-item drop-tab" href="admin/login_page">Log out</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
