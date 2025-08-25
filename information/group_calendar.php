<?php $engrdata = posix_getpwuid(fileowner(__FILE__)); ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<?php include("/nfs/ca/info/web/inc/meta.php"); ?>
	<title>Group Calendar | Information | Walker Research Group</title>
<?php include_once("inc/analyticstracking.php")?>
</head>

<?php include("/nfs/ca/info/web/inc/header.php"); ?>
<body>

<div id="content-header">
	<h2 class="title">
		<a href="/~walkert2/information.php">Information</a> - Walker Group Calendar	
	</h2>
</div>

Links are provided to schedule individual research meetings with Travis.
<br />
<br />
<iframe src="http://www.google.com/calendar/embed?src=oregonstate.edu_601tq4hj0qc3nt9gbcvpong48g%40group.calendar.google.com&ctz=America/Los_Angeles" style="border: 0" width="700" height="600" frameborder="0" scrolling="no"></iframe>

<?php include("/nfs/ca/info/web/inc/footer.php"); ?>
</body>
</html>
