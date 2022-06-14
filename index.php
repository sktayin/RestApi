<form action="" method="POST">
<label>Enter Order ID:</label><br />
<input type="text" name="CustomerID" placeholder="Enter CustomerID" required/>
<br /><br />
<button type="submit" name="submit">Submit</button>
</form>


<?php
if (isset($_POST['CustomerID']) && $_POST['CustomerID']!="") {
 $CustomerID = $_POST['CustomerID'];
 //$url = "http://localhost:8060/RestApi/api.php?CustomerID=".$CustomerID;
 $url = "http://localhost/RestApi/api.php?CustomerID=".$CustomerID;
 
 $client = curl_init($url);
 curl_setopt($client,CURLOPT_RETURNTRANSFER,true);
 $response = curl_exec($client);
 
 $result = json_decode($response);
 
 echo "<table border='1'>";
 echo "<tr><td>CustomerID:</td><td>$result->CustomerID</td></tr>";
 echo "<tr><td>CustomerName:</td><td>$result->CustomerName</td></tr>";
 echo "<tr><td>Address:</td><td>$result->Address</td></tr>";
 echo "<tr><td>City:</td><td>$result->City</td></tr>";
 echo "<tr><td>Country:</td><td>$result->Country</td></tr>";
 echo "</table>";
}
    ?>