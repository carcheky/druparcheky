<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Site</title>
</head>
<body>
    <h1>New site</h1>

    <?php
        if (isset($_POST['submit'])) {
            $name = $_POST['sitename'];
            $database = $_POST['database'];
            $username = $_POST['username'];
            $password = $_POST['password'];
            $config_dir = $_POST['config_dir'];

            echo "name: $name<br>";
            echo "database: $database<br>";
            echo "username: $username<br>";
            echo "password: $password<br>";
            echo "config dir: $config_dir<br><br><br>";

            system("php composer install", $status);
            echo $status;
            echo exec("bash ../devscripts/composer-runner $name $database $username $password $config_dir > composer-runner.log");
        }
    ?>

    <form name="composer-runner-1" id="mainForm" method="post" enctype="multipart/form-data" action="">
        
        <!-- sitename -->
        <label for="sitename">sitename</label>
        <input type="text" name="sitename" value="drupal-core-composer-project">
        <br>
        
        <!-- database -->
        <label for="database">database</label>
        <input type="text" name="database" value="drupal-core-composer-project">
        <br>
        
        <!-- user -->
        <label for="username">username</label>
        <input type="text" name="username" value="root">
        <br>
        
        <!-- password -->
        <label for="password">password</label>
        <input type="text" name="password" value="root">
        <br>

        <!-- config directory -->
        <label for="config_dir">config directory</label>
        <input type="text" name="config_dir" value="../config/sync">
        <br>
        <br>

        <input type="submit" name="submit" value="Submit Form & run composer"><br>
    </form>

</body>
</html>