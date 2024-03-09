CREATE DATABASE airport;
USE airport;
CREATE TABLE airport ( 
id INT PRIMARY KEY,
 name VARCHAR(50), 
 age INT NOT NULL,
 boarding VARCHAR(50), 
 destination VARCHAR(50), 
 amount INT NOT NULL);
 CREATE TABLE passenger( 
 id INT PRIMARY KEY, 
 name VARCHAR(50),
 selfid INT, 
 FOREIGN KEY (selfid) 
 REFERENCES airport (id)
 ON UPDATE CASCADE
 ON DELETE CASCADE );
 ALTER TABLE passenger ADD COLUMN idcard VARCHAR(50);
 INSERT INTO airport VALUES
 ( 101,"vaibhavi",28,"Pune","delhi",15000),
 (102,"vaibhav",29,"pune","kolkata",12000),
 (103,"vaibhi",28,"mumbai","jammu",20000),
 (104,"ramesh",30,"mumbai","banglore",8000),
 (105,"aman",32,"pune","banglore",10000),
 (106,"ashish",34,"banglore","mumbai",8000);
 INSERT INTO passenger VALUES 
 (101,"vaibhavi",101,"adharcard"),
 (102,"vaibhav",102,"pancard"),
 (103,"vaibhi",103,"adharcard"),
 (104,"ramesh",104,"driverlicence"),
 (105,"aman",105,"adharcard"),
 (106,"ashish",106,"adharcard");
 SELECT * FROM airport where amount >10000;
 SELECT * FROM passenger ORDER BY idcard desc;
 SELECT boarding, count(name) FROM airport GROUP BY boarding having max(age)>25;
 SELECT Min(amount) from airport;