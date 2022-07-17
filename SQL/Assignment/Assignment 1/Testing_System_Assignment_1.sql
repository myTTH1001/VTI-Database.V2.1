drop database Testing_System_Assignment_1;
create database Testing_System_Assignment_1;
use Testing_System_Assignment_1;
create table Department(
	DepartmentID int primary key auto_increment,
    DepartmentName varchar(50)
);
create table `Position`(
	PossitionID int primary key auto_increment,
    PossitionName ENUM('Dev','Test','Scrum Master','PM')
);
create table `Account`(
	AccountID int primary key auto_increment,
    Email varchar(50),
    UserName varchar(50),
    FullName varchar(50),
    DepartmentID int,
    PositionID varchar(50),
    CreateDate date
);
create table `Group` (
	GroupID int primary key auto_increment,
    GroupName varchar(50),
    CreatorID int,
    CreateDate Date
);
create table GroupAccount(
	GroupID varchar(50),
    AccountID varchar(50),
    JoinDate Date
);
create table TypeQuestion(
	TypeID int primary key auto_increment,
    TypeName enum ('Essay','Multiple-Choice')
);
create table CategoryQuestion(
	CategoryID int primary key auto_increment,
    CategoryName enum ('Java','.NET','SQL','Postman','Ruby')
);
create table Question(
	QuestionID int primary key auto_increment,
    Content varchar(50),
    CategoryID varchar(50),
    TypeID int,
    CreatorID int,
    CreateDate date
);
create table Answer(
	AnswerID int primary key auto_increment,
    Content varchar(50),
    PositionID varchar(50),
    isCorrect enum ('Đúng','Sai')
);
create table Exam(
	ExamID int primary key auto_increment,
    Code int,
    Title varchar(50),
    CategoryID varchar(50),
    Duration date,
    CreatorID int,
    CreateDate date
);
create table ExamQuestion(
	ExamID int primary key auto_increment,
    QuestionID varchar(50)
);
