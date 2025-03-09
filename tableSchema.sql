-- Original code we used to create our SQL tables when using Microsoft Azure
-- Code for original test table
create table AcademicBreachesTwo(
  BreachId int primary key identity(1,1),
  FirstName varchar(255),
  LastName varchar(255),
  TypeOfBreach varchar(255)
)

-- Code for student information table
CREATE TABLE Students (
    StudentName VARCHAR(255) NOT NULL,
    EmailAddress VARCHAR(255) UNIQUE NOT NULL,
    StudentNumber INT IDENTITY(1,1) PRIMARY KEY,
    Term VARCHAR(50) NOT NULL,
    ProgramName VARCHAR(255) NOT NULL,
    CourseName VARCHAR(255) NOT NULL,
    CourseCode VARCHAR(50) NOT NULL
);

-- Code for the form table
CREATE TABLE Forms(
	FormID INT IDENTITY(1,1) PRIMARY KEY,
	StudentNumber INT NOT NULL,
	TypeOfBreachCheating BIT DEFAULT 0,
	TypeOfBreachPlagiarism BIT DEFAULT 0,
	TypeOfBreachAI BIT DEFAULT 0,
	TypeOfBreachRecords BIT DEFAULT 0,
	TypeOfBreachOther BIT DEFAULT 0,
	TypeOfBreachOtherDescription VARCHAR(150),
	BreachDescription VARCHAR(1000) NOT NULL,
	NameOfFaculty VARCHAR(75) NOT NULL,
	DateInformedStudent VARCHAR(10) NOT NULL,
	StudentComments VARCHAR(1000) NOT NULL,
	DateCheckedAdmin VARCHAR(10) NOT NULL,
	BreachNumber INT NOT NULL,
	DateSanctionOne VARCHAR(10),
	SanctionOne VARCHAR(100),
	DateSanctionTwo VARCHAR(10),
	SanctionTwo VARCHAR(100),
  DateSanctionThree VARCHAR(10),
	SanctionThree VARCHAR(100),
	DateSanctionFour VARCHAR(10),
	SanctionFour VARCHAR(100),
	SupportStaffName VARCHAR(75),
	SupportStaffDate VARCHAR(10),
  Level1_WrittenWarning BIT DEFAULT 0,
  Level1_ReducedGrade BIT DEFAULT 0,
  Level1_GradeOfZero BIT DEFAULT 0,
  Level1_MandatoryRemediation BIT DEFAULT 0,
  Level1_IncreasedSanction BIT DEFAULT 0,
  Level2_FGrade BIT DEFAULT 0,
  Level3_TMGrade BIT DEFAULT 0,
  Level4_AdminWithdrawal BIT DEFAULT 0,
  Level4_LastTermOfSanction VARCHAR(50) NULL,  
  Level5_Suspension BIT DEFAULT 0,
  Level5_LastTermOfSanction VARCHAR(50) NULL,  
  Level6_Expulsion BIT DEFAULT 0,
	SanctionRationale VARCHAR(200),
  NameOfDecisionMaker VARCHAR(75),
  SignatureOfDecisionMaker VARCHAR(30),
  DateRecordedOnStudentInformationSystem VARCHAR(10),
  StudentStaffName VARCHAR(75)
CONSTRAINT FK_Forms_Students FOREIGN KEY (StudentNumber) REFERENCES Students(StudentNumber)
);
