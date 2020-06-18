CREATE DATABASE db
USE db

CREATE TABLE User_ (
	UserId NVARCHAR(100) PRIMARY KEY,
	Name VARCHAR(50),
	Email VARCHAR(50),
	Password NVARCHAR(50),
	Bio VARCHAR(MAX),
	Avatar IMAGE
)

CREATE TABLE Post (
	PostId NVARCHAR(100) PRIMARY KEY,
	UserId NVARCHAR(100) FOREIGN KEY REFERENCES User_(UserId),
	Title VARCHAR(200),
	Short_Info VARCHAR(2000),
	Details NVARCHAR(MAX),
	Likes INT
)

CREATE TABLE Post_Liked(
	PostId NVARCHAR(100) FOREIGN KEY REFERENCES Post(PostId),
	UserId NVARCHAR(100) FOREIGN KEY REFERENCES User_(UserId)
) 