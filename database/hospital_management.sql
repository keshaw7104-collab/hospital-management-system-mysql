CREATE DATABASE HospitalManagementSystem;
USE HospitalManagementSystem;

CREATE TABLE Patient (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Address VARCHAR(200),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100),
    Location VARCHAR(100)
);

CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Specialization VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Appointment (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    Status VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);

CREATE TABLE Prescription (
    PrescriptionID INT PRIMARY KEY AUTO_INCREMENT,
    AppointmentID INT,
    MedicationDetails VARCHAR(200),
    Dosage VARCHAR(100),
    Duration VARCHAR(50),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);

CREATE TABLE Billing (
    BillID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    Amount DECIMAL(10,2),
    BillDate DATE,
    PaymentStatus VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

INSERT INTO Patient (Name, DateOfBirth, Gender, Address, PhoneNumber, Email) VALUES
('Amit Sharma','1995-03-12','Male','Raipur, Chhattisgarh','9876543210','amit.sharma@gmail.com'),
('Neha Verma','1998-07-25','Female','Bilaspur, Chhattisgarh','9123456781','neha.verma@gmail.com'),
('Rahul Sahu','1993-11-08','Male','Durg, Chhattisgarh','9988776655','rahul.sahu@gmail.com'),
('Pooja Patel','2000-01-19','Female','Korba, Chhattisgarh','9090909090','pooja.patel@gmail.com'),
('Suresh Yadav','1989-05-30','Male','Rajnandgaon, Chhattisgarh','9871234567','suresh.yadav@gmail.com'),
('Anjali Mishra','1996-09-14','Female','Raigarh, Chhattisgarh','9812345678','anjali.mishra@gmail.com'),
('Vikram Singh','1991-12-02','Male','Ambikapur, Chhattisgarh','9765432109','vikram.singh@gmail.com'),
('Kavita Jain','1999-04-18','Female','Jagdalpur, Chhattisgarh','9823456712','kavita.jain@gmail.com'),
('Rohit Gupta','1994-08-21','Male','Dhamtari, Chhattisgarh','9933445566','rohit.gupta@gmail.com'),
('Sneha Tiwari','2001-06-09','Female','Mahasamund, Chhattisgarh','9012345678','sneha.tiwari@gmail.com'),

('Manoj Kumar','1987-10-15','Male','Raipur, Chhattisgarh','8899776655','manoj.kumar@gmail.com'),
('Ritika Das','1997-02-27','Female','Bilaspur, Chhattisgarh','9345678123','ritika.das@gmail.com'),
('Alok Pandey','1992-07-04','Male','Korba, Chhattisgarh','9567890123','alok.pandey@gmail.com'),
('Nidhi Agarwal','1999-11-23','Female','Durg, Chhattisgarh','9786543210','nidhi.agarwal@gmail.com'),
('Sunil Rathore','1985-01-17','Male','Rajnandgaon, Chhattisgarh','9123987654','sunil.rathore@gmail.com'),
('Preeti Choudhary','1996-05-28','Female','Raigarh, Chhattisgarh','9654321789','preeti.ch@gmail.com'),
('Deepak Thakur','1990-09-11','Male','Ambikapur, Chhattisgarh','9878901234','deepak.thakur@gmail.com'),
('Shweta Kulkarni','1998-03-06','Female','Jagdalpur, Chhattisgarh','9988123456','shweta.k@gmail.com'),
('Arjun Mehta','1993-12-19','Male','Dhamtari, Chhattisgarh','9098765432','arjun.mehta@gmail.com'),
('Pallavi Joshi','2002-08-01','Female','Mahasamund, Chhattisgarh','9345612789','pallavi.j@gmail.com');
('Aakash Malviya','1994-02-11','Male','Raipur, Chhattisgarh','9000000101','aakash.malviya@gmail.com'),
('Rina Kulkarni','1997-06-24','Female','Bilaspur, Chhattisgarh','9000000102','rina.k@gmail.com'),
('Sanjay Patel','1991-09-15','Male','Durg, Chhattisgarh','9000000103','sanjay.patel@gmail.com'),
('Megha Chatterjee','1999-12-03','Female','Korba, Chhattisgarh','9000000104','megha.c@gmail.com'),
('Ramesh Soni','1988-04-19','Male','Rajnandgaon, Chhattisgarh','9000000105','ramesh.soni@gmail.com'),
('Ankita Deshmukh','2000-07-08','Female','Raigarh, Chhattisgarh','9000000106','ankita.d@gmail.com'),
('Nitin Saxena','1993-01-27','Male','Jagdalpur, Chhattisgarh','9000000107','nitin.saxena@gmail.com'),
('Pallavi Joshi','1996-10-14','Female','Ambikapur, Chhattisgarh','9000000108','pallavi.j@gmail.com'),
('Karan Bansal','1992-03-22','Male','Dhamtari, Chhattisgarh','9000000109','karan.bansal@gmail.com'),
('Shilpa Nair','2001-05-30','Female','Mahasamund, Chhattisgarh','9000000110','shilpa.nair@gmail.com'),

('Vivek Tiwari','1989-08-12','Male','Raipur, Chhattisgarh','9000000111','vivek.tiwari@gmail.com'),
('Suman Roy','1998-02-26','Female','Bilaspur, Chhattisgarh','9000000112','suman.roy@gmail.com'),
('Amit Choudhary','1990-11-17','Male','Durg, Chhattisgarh','9000000113','amit.choudhary@gmail.com'),
('Nisha Kapoor','1997-06-05','Female','Korba, Chhattisgarh','9000000114','nisha.kapoor@gmail.com'),
('Deepak Verma','1986-09-29','Male','Rajnandgaon, Chhattisgarh','9000000115','deepak.verma@gmail.com'),
('Ruchi Agrawal','1999-01-13','Female','Raigarh, Chhattisgarh','9000000116','ruchi.ag@gmail.com'),
('Mohit Arora','1994-04-21','Male','Jagdalpur, Chhattisgarh','9000000117','mohit.arora@gmail.com'),
('Swati Banerjee','2002-07-09','Female','Ambikapur, Chhattisgarh','9000000118','swati.b@gmail.com'),
('Prakash Yadav','1987-12-02','Male','Dhamtari, Chhattisgarh','9000000119','prakash.yadav@gmail.com'),
('Neelam Rathod','1996-03-18','Female','Mahasamund, Chhattisgarh','9000000120','neelam.r@gmail.com'),

('Harsh Vardhan','1995-10-25','Male','Raipur, Chhattisgarh','9000000121','harsh.v@gmail.com'),
('Isha Malhotra','2000-08-16','Female','Bilaspur, Chhattisgarh','9000000122','isha.m@gmail.com'),
('Lokesh Prajapati','1991-05-06','Male','Durg, Chhattisgarh','9000000123','lokesh.p@gmail.com'),
('Tanvi Kulshreshtha','1998-02-14','Female','Korba, Chhattisgarh','9000000124','tanvi.k@gmail.com'),
('Ajay Mishra','1985-11-09','Male','Rajnandgaon, Chhattisgarh','9000000125','ajay.mishra@gmail.com'),
('Payal Ghosh','1997-09-28','Female','Raigarh, Chhattisgarh','9000000126','payal.ghosh@gmail.com'),
('Shubham Jain','1993-07-19','Male','Jagdalpur, Chhattisgarh','9000000127','shubham.j@gmail.com'),
('Kritika Bhat','2001-04-01','Female','Ambikapur, Chhattisgarh','9000000128','kritika.b@gmail.com'),
('Rohit Pawar','1990-12-22','Male','Dhamtari, Chhattisgarh','9000000129','rohit.pawar@gmail.com'),
('Anusha Pillai','1999-06-11','Female','Mahasamund, Chhattisgarh','9000000130','anusha.p@gmail.com');

