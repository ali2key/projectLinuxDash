<?php

$Crit = fread(fopen("CritNum.txt", "r"), filesize("CritNum.txt"));
echo $Crit;

$Gen = fread(fopen("Gen.txt", "r"), filesize("Gen.txt"));
echo $Gen;


$High = fread(fopen("HighNum.txt", "r"), filesize("HighNum.txt"));
echo $High;


$Act2 = fread(fopen("Act2.txt", "r"), filesize("Act2.txt"));
echo $Act2;


$netban = fread(fopen("netban.txt", "r"), filesize("netban.txt"));
echo $netban;
 





$file="newoutput13.txt";
$linecount = -1;
$handle = fopen($file, "r");
while(!feof($handle)){
  $line = fgets($handle);
  $linecount++;
}

fclose($handle);





$servername = "127.0.0.1:3308";
$database = "dashboard";
$username = "user1";
$password = "RTSwidzew";

// Create connection
date_default_timezone_set('Europe/Berlin');
$dt2=date("Ymd H:i:s");
echo $dt2; // CO DODAĆ ?

$conn = mysqli_connect($servername, $username, $password, $database);

// Check connection

if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
}
 
echo "Connected successfully";

 function getDateSiur(){
}

if (mysqli_query($conn, $sql)) {
      echo "New record created successfully";
} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
  $sql = "INSERT INTO tab1 (ID, Active, Connected, Critical, High, ActualDate)
VALUES (' ', $Act2, $Gen, $Crit, $High, CURRENT_TIMESTAMP())"; 
setInterval(getDateSiur(){
  $sql = "INSERT INTO tab1 (ID, Active, Connected, Critical, High, ActualDate)
VALUES (' ', $Act2, $Gen, $Crit, $High, CURRENT_TIMESTAMP())"
},1000);  


?>












<!-- 
// $servername = "127.0.0.1:3308";
// $username = "user1";
// $password = "widzewRTS";
// $dbname = "dashboard";

// // Create connection
// $conn = mysqli_connect($servername, $username, $password, $dbname);
// // Check connection
// if (!$conn) {
//     die("Connection failed: " . mysqli_connect_error());
// }

// $sql = "INSERT INTO tab1 (ID, Active, Connected, Critical, High, Upload)
// VALUES (' ', $Act2 , $Gen, $Crit, $High, ' ')";

// if (mysqli_query($conn, $sql)) {
//     echo "New record created successfully";
// } else {
//     echo "Error: " . $sql . "<br>" . mysqli_error($conn);
// }

// mysqli_close($conn); -->
