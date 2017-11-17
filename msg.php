<?php
$host = "127.0.0.1:3306";
$user = "root";
$pass = "";

$con = mysqli_connect($host,$user,$pass,"Dating");

if (mysqli_connect_errno())
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$_profile_id = 2;







    $sql = "SELECT user_table.name, msg_table.message FROM user_table INNER JOIN msg_table ON user_table.id=msg_table.sender WHERE msg_table.reciever = $_profile_id";

    $result = $con->query($sql);

    if ($result->num_rows > 0) {

        while($row = $result->fetch_assoc()) {
            echo "name: " . $row["name"]. "<br> - message: " . $row["message"]. "<br>";
        }
    } else {
        echo "0 results";
    }
    ?>


