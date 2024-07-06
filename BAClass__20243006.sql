# Create a Database
Create database BA_class;

# Create a table 
Create table BA_class.todays_classe (
student_id int primary key not null,
student_name VARCHAR(100),
age int );

# retrieve data
select age, student_name from BA_class.todays_class;

# insert data
insert into ba_class.todays_class (student_id, student_name, age)
values
(1,'Ammar',12),
(2,'Amamr Jam',13);

# put 15 rows
insert into ba_class.todays_class (student_id, student_name, age)
values
(3,'Nayab',14),
(4, 'ali',17),
(5, 'simran',20),
(6, 'zeynab',14),
(7,'erik',16),
(8,'tina',11),
(9,'saim',18),
(10,'wendy',19),
(11,'rida',23),
(12,'kelly',15),
(13,'fret',18),
(14,'deli',19),
(15,'qais',13);

# Edit age  
UPDATE ba_class.todays_class 
SET 
    age = 21
WHERE
    student_id = 15;

select * from ba_class.todays_class;


update ba_class.todays_class
set age = 19
where age = 14;

# where 
select * from ba_class.todays_class
where age < 12;

# Min
select min(age) from ba_class.todays_class;

# load 
select * from ba_class.diabetes;
 
 # subquery
select * from ba_class.diabetes 
where BMI > 20 AND Insulin > 0 AND BMI IN (select BMI where Outcome = 1);

select Pregnancies, Glucose from ba_class.diabetes
Where Pregnancies > 2;

# Min, MAx, AVG
Select AVG(Glucose) from ba_class.diabetes;

select count(*) from ba_class.diabetes where Age > 40;

select avg(Insulin) AS Avg_Insulin from ba_class.diabetes Where Outcome = 1;
select Distinct Age, Outcome from ba_class.diabetes;

# OR
select * from ba_class.diabetes where Age > 40 OR Outcome = 1;

delete from ba_class.diabetes Where BMI = 0;

# Alter a table - Column
Alter table ba_class.diabetes
RENAME COLUMN `SkinThickness` TO `STCH`;

Select * from ba_class.diabetes
Where DiabetesPedigreeFunction > 0.5;
Alter table ba_class.diabetes
RENAME COLUMN `DiabetesPedigreeFunction` TO `Diabetes_level`;

# add column
Alter table ba_class.diabetes
ADD Patient_ID int;

# Rename column
Alter table class.most_streamed_spotify_songs
RENAME COLUMN `Spotify Streams` TO `Spotify_Streams`;

select * from ba_class.diabetes;

 # Autoincremenet
ALTER TABLE ba_class.diabetes
ADD COLUMN P_ID INT AUTO_INCREMENT,
ADD PRIMARY KEY (P_ID);
Alter Table ba_class.diabetes
Drop Column Patient_ID;

# add column with value
ALTER TABLE ba_class.diabetes ADD COLUMN Flag VARCHAR(3);
UPDATE ba_class.diabetes SET Flag = 'Yes';

# change values in a column
Update ba_class.diabetes
set Flag = 0
Where Flag = "Yes";

# change column nature
Alter table ba_class.diabetes
Modify Flag int;

Drop table class.bankmarketing;

# database drop
Drop Database hikvision_data;

# truncate table
select * from car_sales;

Truncate class.car_sales;


select * from class.most_streamed_spotify_songs;

# Upper vs lower
select Upper(Artist) AS Artist_capital_letter from class.most_streamed_spotify_songs;
select lower(Artist) AS artist_normal_letter from class.most_streamed_spotify_songs;

# case manipulation 
select * from class.most_streamed_spotify_songs
where lower(Artist) = 'jack harlow';

# Multiple Row functions
select * from class.most_streamed_spotify_songs;

# change all columns that have spaces or put underscore between spaces in all columns with spaces - 22 columns (15 mins)
alter table class.most_streamed_spotify_songs
Rename column `Track Score` to `Track_Score`;

select avg(Track_Score) from class.most_streamed_spotify_songs;

select * from class.most_streamed_spotify_songs;
select Artist, Count(*) from class.most_streamed_spotify_songs
Group by Artist;

# group by
select Spotify_Popularity, Track_Score, count(Artist) from class.most_streamed_spotify_songs
Where All_Time_Rank > 10
Group by Spotify_Popularity, Track_Score, Artist;

select Track_score, Max(Spotify_Popularity), SUM(YouTube_Views) from class.most_streamed_spotify_songs
group by Track_score;

select Track_score, Max(Spotify_Popularity), SUM(YouTube_Views) from class.most_streamed_spotify_songs
group by Track_score
Having SUM(YouTube_Views) > 100;

select Artist, Count(Track) from class.most_streamed_spotify_songs
group by Artist
Having count(Track) Between 1 and 20;

# Null value check
select * from class.most_streamed_spotify_songs
where Spotify_Popularity is not null;

#Order by 
select Artist, All_Time_Rank, Track_Score from class.most_streamed_spotify_songs
Order by Track_Score ASC;

# change row value
update class.most_streamed_spotify_songs
set Artist = 'Marïa Mendo'
Where Artist = 'Marï¿½ï¿½lia Mendo';

select * from class.most_streamed_spotify_songs Where Artist = 'Marïa Mendo';

# Order by with a condition
select Artist, Track_Score from class.most_streamed_spotify_songs
Where Release_Date = '12/8/2022'
Order by Track_Score DESC;

# 1
SELECT Track, Album_Name, Artist, Release_Date, Track_Score
FROM class.most_streamed_spotify_songs
WHERE `Release_Date` > '2023-01-01' AND `All_Time_Rank` <= 10
ORDER BY `Track_Score` DESC;

# 2
SELECT Track, Spotify_Playlist_Count, Deezer_Playlist_Reach
FROM class.most_streamed_spotify_songs
WHERE Spotify_Playlist_Count > 50000 OR Deezer_Playlist_Reach > 20000000
ORDER BY Spotify_Playlist_Count;

select * from class.most_streamed_spotify_songs;

SELECT Track, Artist, Track_Score, Release_Date FROM class.most_streamed_spotify_songs 
WHERE Artist = 'Miley' OR Artist = 'Eminem' 
AND Track_Score BETWEEN 400 AND 500 ORDER BY Release_Date;


# True/ FALSE
select * from class.most_streamed_spotify_songs
where Not Artist = 'Miley Cyrus';

# Like 
Select * from class.most_streamed_spotify_songs
Where not Artist Like '%M'

# IN
SELECT Track, Artist, All_Time_Rank 
FROM class.most_streamed_spotify_songs
WHERE Track LIKE '%A' 
AND Track IN (SELECT Track FROM class.most_streamed_spotify_songs WHERE All_Time_Rank < 1000);

# 2024ew
select * from class.most_streamed_spotify_songs
where All_Time_Rank >= 15;

# JOINS
# Inner Join
Select * from ba_class.todays_class
Inner Join ba_class.todays_classe
on todays_class.student_id = todays_classe.student_id;

select * from ba_class.bank_sec;

select age from ba_class.bank_sec;
 # Autoincremenet
ALTER TABLE ba_class.bank_full
ADD COLUMN R_ID INT AUTO_INCREMENT,
ADD PRIMARY KEY (R_ID);
# Inner Join
SELECT *
FROM ba_class.bank_sec AS new_table
Left JOIN ba_class.bank_full ON new_table.R_ID = bank_full.R_ID
Where new_table.balance > 1000 AND bank_full.balance > 1000;

# Outer Join
SELECT education, Count(job) as Num_of_job
FROM ba_class.bank_sec AS new_table
Where new_table.balance > 1000
Group by education;

SELECT self_bank.education, self_bank.balance
FROM ba_class.self_bank
INNER JOIN ba_class.bank_full ON self_bank.age = bank_full.age AND self_bank.job = bank_full.job;

#5
SELECT bank_full.job, bank_full.education from ba_class.bank_full
INNER JOIN ba_class.self_bank ON bank_full.job = self_bank.job AND bank_full.marital <> self_bank.marital;
