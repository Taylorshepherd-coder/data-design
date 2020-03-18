USE tshepherd1;
ALTER DATABASE tshepherd1 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS videos;
DROP TABLE IF EXISTS profile;

CREATE TABLE profile(
	profileId BINARY(16) NOT NULL,
	profileActivationToken CHAR(32),
	profileEmail VARCHAR(128) NOT NULL,
	profileHash CHAR(97) NOT NULL,
	profilePhone VARCHAR (32),
	profileAtHandle VARCHAR (32),
	UNIQUE (profileEmail),
	UNIQUE (profileAtHandle),
	UNIQUE (profilePhone),
	INDEX(profileEmail),
	PRIMARY KEY(profileId)
);

CREATE TABLE video(
	videoId BINARY(16) NOT NULL,
	videoprofileId FOREIGN (16) NOT NULL,
	videoContent VARCHAR(4000) NOT NULL,
	videoDate DATETIME(6) NOT NULL,
	INDEX(videoprofileId),
	FOREIGN KEY(videoprofileId) REFERENCES profile(profileId),
	PRIMARY KEY(videoId)
);

CREATE TABLE likes(
	likesprofileId BINARY(16) NOT NULL,
	likevideoId BINARY(16) NOT NULL,
	INDEX(likeprofileId),
	INDEX(likevideoId),
	FOREIGN KEY(likeprofileId) REFERENCES profile(profileId),
	FOREIGN KEY(likevideoId) REFERENCES video(videoId),
	PRIMARY KEY(likeProfileId, likevideoId)
);