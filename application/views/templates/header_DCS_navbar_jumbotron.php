<html>
    <head>
<!-- These are needed -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<!-- For SP archive Only-->
<!-- https://select2.org/ -->
<!-- https://maxfavilli.com/jquery-tag-manager -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tagmanager/3.0.2/tagmanager.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/tagmanager/3.0.2/tagmanager.min.css"


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
<link rel="stylesheet" href="<?php echo base_url();?>assets/css/dcsstyle.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/css/admin-module.css">


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
                                        <a class="dropdown-item drop-tab" href="<?php echo base_url();?>archive/view">Search SP</a>
                                        <a class="dropdown-item drop-tab" href="<?php echo base_url();?>archive/manage_archive">Manage Archive</a>

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
                                        <a class="dropdown-item drop-tab" href="<?php echo base_url(); ?>admin/account_settings">Account Settings</a>
                                        <a class="dropdown-item drop-tab" href="<?php echo base_url(); ?>admin/accounts_admin">Manage Accounts</a>
                                        <a class="dropdown-item drop-tab" href="<?php echo base_url(); ?>admin/control_panel">Privileges Control Panel</a>
                                        <a class="dropdown-item drop-tab" href="<?php echo base_url(); ?>admin/mailbox">Notification</a>
                                        <a class="dropdown-item drop-tab" href="<?php echo base_url(); ?>admin/login_page">Log out</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <!-- Jumbotron -->
               <div class="jumbotron jumbotron-fluid">
                   <div class="container" style="padding-top: 5%;">
                       <h3 class="jumbo-header">DEPARTMENT OF<br>COMPUTER STUDIES</h3>
                       <p class="jumbo-footer">
                           Ateneo de Naga University
                       </p>
                       <button class="btn btn-outline-dark button-filled-flat">ABOUT</button>
                   </div>
               </div>
