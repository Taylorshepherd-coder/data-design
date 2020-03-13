<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="UTF-8">
	<title>Data Design Phase 2</title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
	<p>
		Entities and Attributes
	</p>
	<p>
		Profile
	</p>
	<p>
		<ul>
				<li>profileId (primary key)</li>
				<li>profileActivationToken (for account verification)</li>
				<li>profileAtHandle</li>
				<li>profileEmail</li>
				<li>profileHash (for account password)</li>
				<li>profilePhone</li>
	</ul>
	</p>
	<p>
		YouTube Videos
	</p>
	<p>
		<ul>
				<li>videoId (primary key)</li>
				<li>videoProfileId (foreign key)</li>
				<li>videoContent</li>
				<li>videoDate</li>
	</ul>
	</p>
	<p>
		Likes
	</p>
	<p>
		<ul>
				<li>likeProfileId (foreign key)</li>
				<li>likevideoId (foreign key)</li>
				<li>likeDate</li>
	</ul>
	</p>
	<p>
		Relations
	</p>
	<p>
		<ul>
				<li>One Profile can have multiple Videos</li>
				<li>Many videos can be liked by many Profiles</li>
	</ul>
	</p>
	</body>
</html>