<?php
$host = "127.0.0.1:3306";
$user = "root";
$pass = "";

$con = mysqli_connect($host,$user,$pass,"Dating");

if (mysqli_connect_errno())
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}



if (isset($_GET))  {
    $uid = $con->real_escape_string($_GET['id']);
    $uname = $con->real_escape_string($_GET['ename']);
    $uage = $con->real_escape_string($_GET['eage']);
    $ucity = $con->real_escape_string($_GET['ecity']);
    $upower = $con->real_escape_string($_GET['epower']);


    $sql = "UPDATE user_table SET name = '$uname', age = '$uage', city = '$ucity', superpower = '$upower' WHERE id = '$uid'";


    if ($con->query($sql) === TRUE) {
        echo "Record updated successfully";


    } else {
        echo "Error updating record: " . $con->error;
    }

}

else {
    echo "problem";
}
?>