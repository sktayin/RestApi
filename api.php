<?php
header("Content-Type:application/json");
if (isset($_GET['CustomerID']) && $_GET['CustomerID']!="") {
 include('db.php');
 $CustomerID = $_GET['CustomerID'];
 $result = mysqli_query($con,"SELECT * FROM `customer` WHERE CustomerID=$CustomerID");
 if(mysqli_num_rows($result)>0){
 $row = mysqli_fetch_array($result);
 $CustomerName = $row['CustomerName'];
 $Address = $row['Address'];
 $City = $row['City'];
 $Country = $row['Country'];
 //$images = $row['images'];
 response($CustomerID, $CustomerName, $Address,$City,$Country);
 mysqli_close($con);
 }else{
 response(NULL, NULL, 200,"No Record Found");
 }
}else{
 response(NULL, NULL, 400,"Invalid Request");
 }
 
function response($CustomerID, $CustomerName, $Address,$City,$Country){
 $response['CustomerID'] = $CustomerID;
 $response['CustomerName'] = $CustomerName;
 $response['Address'] = $Address;
 $response['City'] = $City;
 $response['Country'] = $Country;
 //$response['images'] = $images;
 
 $json_response = json_encode($response);
 echo $json_response;
}
?>