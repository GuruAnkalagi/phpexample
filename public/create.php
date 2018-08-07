<?php

/**
 * Use an HTML form to create a new entry in the
 * users table.
 *
 */

if (isset($_POST['submit'])) {

	$target_dir = dirname(__FILE__)."/uploads/";
	$target_file = $target_dir.basename($_FILES["fileToUpload"]["name"]);
	$imgname =  $_FILES["fileToUpload"]["name"];
	$uploadOk = 1;
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

	require "../config.php";
	require "../common.php";

	try {
		$connection = new PDO($dsn, $username, $password, $options);
		
		$new_user = array(
			"firstname" => $_POST['firstname'],
			"lastname"  => $_POST['lastname'],
			"email"     => $_POST['email'],
			"age"       => $_POST['age'],
			"location"  => $_POST['location'],
			"logo"  => $imgname
		);

		$sql = sprintf(
				"INSERT INTO %s (%s) values (%s)",
				"users",
				implode(", ", array_keys($new_user)),
				":" . implode(", :", array_keys($new_user))
		);
		
		$statement = $connection->prepare($sql);
		$statement->execute($new_user);
	} catch(PDOException $error) {
		echo $sql . "<br>" . $error->getMessage();
	}

    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        // echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
    } 

	
}



?>

<?php require "templates/header.php"; ?>

<div class="container">
	<?php if (isset($_POST['submit']) && $statement) { ?>
		<script>
			alert('successfully added.')
		</script>
	<?php } ?>
	<h2>Add a user</h2>
<form method="post" enctype="multipart/form-data">
	<label for="firstname">First Name</label>
	<input type="text" name="firstname" class="form-control"  style="width: 40%;" placeholder="First Name" id="firstname">
	<label for="lastname">Last Name</label>
	<input type="text" name="lastname" class="form-control" style="width: 40%;" placeholder="Last Name" id="lastname">
	<label for="email">Email Address</label>
	<input type="text" name="email" class="form-control" style="width: 40%;" placeholder="Email Address" id="email">
	<label for="age">Age</label>
	<input type="text" name="age" class="form-control" style="width: 40%;" placeholder="Age" id="age">
	<label for="location">Location</label>
	<input type="text" name="location" style="width: 40%;" placeholder="Location" class="form-control" id="location">
	<label for="fileToUpload">User Profile</label>
	<input type="file" name="fileToUpload" id="fileToUpload">
	<input type="submit" style="margin-top: 15px;" class="btn-primary" name="submit" value="Submit">
</form>
</div>


<?php require "templates/footer.php"; ?>