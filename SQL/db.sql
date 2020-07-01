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
	UserId NVARCHAR(100) FOREIGN KEY REFERENCES User_(UserId),
	Title VARCHAR(200),
	Short_Info VARCHAR(4000),
	Details NVARCHAR(MAX),
	Type_ VARCHAR(50),
	Likes INT
)

CREATE TABLE Post_Liked(
	PostId NVARCHAR(100) FOREIGN KEY REFERENCES Post(PostId),
	UserId NVARCHAR(100) FOREIGN KEY REFERENCES User_(UserId)
) 

ALTER TABLE Post
ADD CONSTRAINT df_Likes
DEFAULT 0 FOR Likes; 

SELECT * FROM Post  WHERE Type_ = 'Computer Research Scientist'

SELECT * FROM User_ WHERE Email = 'phebbard7@admin.ch' AND Password = 'ERhAy6'

SELECT * FROM User_ WHERE UserId = '315dce0a-6d5c-4bf0-91e6-2ea17d980bf0'

UPDATE User_ SET Name ='ko', Bio = 'lo' WHERE
UserId ='315dce0a-6d5c-4bf0-91e6-2ea17d980bf0'


DELETE FROM User_ WHERE UserId ='dc0b6378-74dc-42d4-beac-f9e90ffddc2a';


1188fe00-d644-43b8-9c5d-772cb618ae67


SELECT * FROM Post WHERE PostId = '163e9591-65c2-4a49-b8e0-99954547e187'

SELECT * FROM User_ WHERE UserId ='315dce0a-6d5c-4bf0-91e6-2ea17d980bf0'
SELECT * FROM Post_Liked WHERE UserId ='315dce0a-6d5c-4bf0-91e6-2ea17d980bf0'

SELECT P.*  FROM Post P, Post_Liked PL WHERE P.PostId = PL.PostId and PL.UserId = '315dce0a-6d5c-4bf0-91e6-2ea17d980bf0'

SELECT P.*  
FROM Post P, Post_Liked PL 
WHERE P.PostId = PL.PostId and PL.UserId = '27fbaf9d-ebd6-4276-a1b7-1c2634badafe'