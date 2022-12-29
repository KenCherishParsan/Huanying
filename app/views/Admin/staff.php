

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Panel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="<?php echo BASE_URL . PUBLIC_DIR; ?>/assets/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/reg.css" type="text/css">
    <script language="javascript" type="text/javascript">
        function submitreg() {
            var form = document.reg;
            if (form.name.value == "") {
                alert("Enter Name.");
                return false;
            } else if (form.uname.value == "") {
                alert("Enter username.");
                return false;
            } else if (form.upass.value == "") {
                alert("Enter Password.");
                return false;
            } else if (form.uemail.value == "") {
                alert("Enter email.");
                return false;
            }
        }
    </script>
</head>

<body>
    <div class="container">
        <div class="well">
            <h2>Add Your Staff</h2>
            <hr>
            <form action="" method="post" name="reg">
                <div class="form-group">
                    <label for="fullname">Full Name:</label>
                    <input type="text" class="form-control" name="fullname" placeholder="example: Juan Ying" required>
                </div>
                <div class="form-group">
                    <label for="uname">User Name:</label>
                    <input type="text" class="form-control" name="uname" placeholder="exmple: huanying" required>
                </div>
                <div class="form-group">
                    <label for="uemail">Email:</label>
                    <input type="email" class="form-control" name="uemail" placeholder="example: huanying@gmail.com" required>
                </div>
                <div class="form-group">
                    <label for="upass">Password</label>
                    <input type="text" class="form-control" name="upass" placeholder="abc123" required>
                </div>
                <button type="submit" class="btn btn-lg btn-primary button" name="submit" value="Add Manager" onclick="return(submitreg());">Submit</button>

               <br>
                <div id="click_here">
                    <a href="../admin.php">Back to Admin Panel</a>
                </div>


            </form>
        </div>
    </div>

</body>

</html>