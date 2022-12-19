<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Hotel Booking</title>

    <!-- Bootstrap -->
    <link href="<?php echo BASE_URL . PUBLIC_DIR; ?>/assets/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    
    
    <style>
          
        .well {
            background: rgba(0, 0, 0, 0.7);
            border: none;
            height: 200px;
        }
        
        body {
            background-image: url('<?php echo BASE_URL . PUBLIC_DIR; ?>/assets/images/home_bg.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        
        h4 {
            color: #ffbb2b;
        }
        h6
        {
            color: navajowhite;
            font-family:  monospace;
        }


    </style>
    
    
</head>

<body>
    <div class="container">
      
       <img class="img-responsive" src="<?php echo BASE_URL . PUBLIC_DIR; ?>/assets/images/th.jpg" style="width:100%; height:180px;">      
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li><a href="<?php echo site_url('User/index'); ?>">Home</a></li>
                    <li class="active"><a href="<?php echo site_url('User/show_room'); ?>">Room &amp; Facilities</a></li>
                    <li><a href="<?php echo site_url('User/show_reservation'); ?>">Online Reservation</a></li>
                    <li><a href="<?php echo site_url('User/show_admin'); ?>">Admin</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="http://www.facebook.com"><img src="<?php echo BASE_URL . PUBLIC_DIR; ?>/assets/images/facebook.png"></a></li>

            </div>
        </nav>
        
        
        
        <?php
        
                foreach($data['rooms'] as $row)
                {
                    
                    echo "
                            <div class='row'>
                            <div class='col-md-3'></div>
                            <div class='col-md-6 well'>
                                <h4>".$row['roomname']."</h4><hr>
                                <h6>No of Beds: ".$row['no_bed']." ".$row['bedtype']." bed.</h6>
                                <h6>Facilities: ".$row['facility']."</h6>
                                <h6>Price: ".$row['price']." php/night.</h6>
                            </div>
                            <div class='col-md-3'>
                                <a href='./booknow.php?roomname=".$row['roomname']."'><button class='btn btn-primary button'>Edit</button> </a>
                            </div>   
                            </div>
                            
                            
                        
                    
                         "; 
                    
                    
                }
                
                
        
        
        
        
        ?>


    </div>
    
    
    
    
    





    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo BASE_URL . PUBLIC_DIR; ?>/assets/js/bootstrap.min.js"></script>
</body>

</html>