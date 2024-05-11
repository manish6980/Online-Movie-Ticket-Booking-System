create table movie (movie_name varchar2(20) NOT NULL, movie_id number NOT NULL primary key, rating number, release_date date NOT NULL);
create table theatre (movie_id number NOT NULL, theatre_name varchar2(20), theatre_id number NOT NULL primary key, screen_type varchar2(20) NOT NULL, audio_type varchar2(20), ticket_price number NOT NULL, location varchar2(20)); 
ALTER TABLE theatre ADD CONSTRAINT ForeignKey_1 FOREIGN KEY (movie_id) REFERENCES movie(movie_id); 
create table specifications (movie_id number NOT NULL, language varchar2(20), subtitles varchar2(20), category varchar2(20), budget number, director varchar2(20)); 
ALTER TABLE specifications ADD CONSTRAINT ForeignKey_2 FOREIGN KEY (movie_id) REFERENCES movie(movie_id); 
create table booking (theatre_id number NOT NULL, booking_id number NOT NULL, upi_id varchar2(20), email varchar2(50), phone_number number); 
ALTER TABLE bookings ADD CONSTRAINT ForeignKey_3 FOREIGN KEY (theatre_id) REFERENCES theatre(theatre_id); 
Create table customer (booking_id number NOT NULL, customer_id number NOT NULL primary key, customer_name varchar2(20), age number NOT NULL, Gender varchar2(20) NOT NULL); 
ALTER TABLE customer ADD CONSTRAINT ForeignKey_4 FOREIGN KEY (bookings_id) REFERENCES bookings(bookings_id);

insert into movie values('Hi Nana','101','9','7-DECEMBER-2023');
insert into movie values('Animal','102','9','25-DECEMBER-2023');
insert into movie values('Leo','103','8','25-OCTOBER-2023');
insert into movie values('Extra Ordinary Man','104','8','8-DECEMBER-2023');
insert into movie values('Sam Bahadur','105','8','1-DECEMBER-2023');
insert into movie values('Wonka','106','8','8-DECEMBER-2023');

Insert into theatre values ('101','PVR','201','4DX','Dolby','300','Kukatpally');
Insert into theatre values ('102','PVR','202','2D','DTS','250','Hitech City');
Insert into theatre values ('103','Central Mall','203','3D','DTS','250','Panjagutta');
Insert into theatre values ('104','Vishwanadh','204','175', 'Dolby','250','Kukatpally');
Insert into theatre values ('105','Miraj','205','3D','Dolby','350','Miyapur');
Insert into theatre values ('102','PVR','201','2D','Dolby','250','Kukatpally');
Insert into theatre values ('104','AAA','206','2D','Dolby','200','Ameerpet'); 
Insert into theatre values ('106','PVR','207','4DX','Dolby','350','Inorbit');  

Insert into specifications values ('101','Telugu','Engilsh','Drama','Shouryuv');
Insert into specifications values ('102','Hindi','Engilsh','Action','Sandeep Reddy');
Insert into specifications values ('103','Telugu','Engilsh','Action','Lokesh Kanagaraj');
Insert into specifications values ('104','Telugu','Engilsh','Drama','Vakkantham Vamsi');
Insert into specifications values ('105','Hindi','Engilsh','Action','Meghna Gulzar');
Insert into specifications values ('106','English','Engilsh','Drama','Paul King');

Insert into booking values ('201','12301','6304532341@ybl', 'abcdef1@gmail.com','6304532341');
Insert into booking values ('202','12302','630567890@ybl', 'abcdef2@gmail.com','6304532323');
Insert into booking values ('203','12303','630453341@ybl', 'abcdef3@gmail.com','6304532234');
Insert into booking values ('204','12304','6304572341@ybl', 'abcdef4@gmail.com','6304532459');
Insert into booking values ('205','12305','6454532341@ybl', 'abcdef5@gmail.com','6304532367');
Insert into booking values ('206','12306','6304538941@ybl', 'abcdef6@gmail.com','6304532356');
Insert into booking values ('207','12307','6304534541@ybl', 'abcdef7@gmail.com','6304532333');

Insert into customer values('12301','101','Sai manish','20','male');
Insert into customer values('12302','102','Karthik','20','male');
Insert into customer values('12303','103','Aishwarya','19','female');
Insert into customer values('12304','104','Swathi','19','female');
Insert into customer values('12305','105','Anirudh','20','male');
Insert into customer values('12306','106','Harshini','19','female');
Insert into customer values('12307','107','Bhargav','18','male');

-- sample queries
-- 1.: Displaying directors Names in Descending Order of Rating
-- select s.director from specifications s, movie m where s.movie_id=m.movie_id;

-- 2.: Displaying a movie name According to the Rating of movies
-- SELECT movie_id FROM movie WHERE rating = 9;

-- 3.: Displaying the details of customer who booked tickets in theatres whose id=201
-- select customer_id, customer_name, age, gender from customer where booking_id= (select booking_id from booking where theatre_id=201);

-- 4.: Retrieve the movie name, theatre name, and ticket price for all bookings.
-- SELECT m.movie_name, t.theatre_name, t.ticket_price FROM movie m JOIN theatre t ON m.movie_id = t.movie_id;

-- 5.: Retrieve the movie name, language, and director for all specifications.
-- SELECT m.movie_name, s.language, s.director FROM movie m JOIN specifications s ON m.movie_id = s.movie_id;
