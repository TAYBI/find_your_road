DROP DATABASE db
CREATE DATABASE db
USE db

CREATE TABLE User_ (
	UserId NVARCHAR(100) PRIMARY KEY,
	Name VARCHAR(50),
	Email VARCHAR(50),
	Password NVARCHAR(50),
	Bio VARCHAR(MAX),
	Avatar NVARCHAR(200)
)

CREATE TABLE Post (
	PostId NVARCHAR(100) PRIMARY KEY,
	UserId NVARCHAR(100) FOREIGN KEY REFERENCES User_(UserId) ON DELETE cascade ON UPDATE set null,
	Title VARCHAR(200),
	Short_Info VARCHAR(4000),
	Details NVARCHAR(MAX),
	Type_ VARCHAR(50),
	Likes INT
)

SET QUOTED_IDENTIFIER OFF;
SET ANSI_NULLS ON; 

/*Delete post*/
DELETE FROM Post WHERE PostId = '53df51b4-d3e4-4a63-9315-298c21e5e014'
DELETE FROM Post WHERE UserId = '2a0f6cbf-e114-4c16-aa07-8b47affc5462'

select * FROM Post WHERE UserId = '87a4a205-f8c9-4dc9-9bd0-5be14c87a6a7'

/*Delete user*/
DELETE FROM User_ WHERE UserId = '87a4a205-f8c9-4dc9-9bd0-5be14c87a6a7'

DELETE FROM User_ WHERE UserId = 'b412f47b-106d-4316-97b4-cb603515b94a'

update Post set Title = 'ok', Short_Info = 'ok', Details = 'ok', Type_ = 'ok' 
WHERE PostId = '3a5f38ac-9eeb-4960-a074-e6fa2dc82990' AND UserId = 'c4eba8e7-99e6-424e-b134-db9415086ea4'

SELECT * FROM Post