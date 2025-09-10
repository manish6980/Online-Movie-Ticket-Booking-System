# 🎬 Online Movie Ticket Booking System

## 📌 Project Overview

This project is a **Database Management System (DBMS)** application designed for managing an **Online Movie Ticket Booking System**. It simulates the backend of a movie ticket booking platform using SQL, including movie listings, theatre details, customer bookings, and more.

## 💻 Technologies Used

- **Database**: MySQL
- **Tools**: SQL Developer, Oracle CLI
- **Concepts Applied**:
  - Data Normalization (1NF, 2NF, 3NF)
  - DDL/DML Operations
  - Primary & Foreign Keys
  - Complex SQL Joins and Queries
    

## 📌 Database Tables

| Table Name       | Purpose / Description                                                                              |
|------------------|----------------------------------------------------------------------------------------------------|
| movie            | Stores information about movies such as name, rating, and release date.                            |
| theatre          | Contains details of theatres, including screen type, audio type, ticket price, and location.       |
| specifications   | Holds additional attributes of movies such as language, subtitles, category, budget, and director. |
| booking          | Keeps track of ticket bookings made by customers for different theatres.                           |
| customer         | Stores customer details and links them to their respective bookings.                               |


## Database Tables  

### 1. **Movie**
| Column Name   | Data Type       | Constraints          |
|---------------|----------------|-----------------------|
| movie_name    | VARCHAR2(20)   | NOT NULL              |
| movie_id      | NUMBER         | PRIMARY KEY, NOT NULL |
| rating        | NUMBER         |                       |
| release_date  | DATE           | NOT NULL              |


### 2. **Theatre**
| Column Name   | Data Type       | Constraints                  |
|---------------|----------------|-------------------------------|
| movie_id      | NUMBER         | FOREIGN KEY → movie(movie_id) |
| theatre_name  | VARCHAR2(20)   |                               |
| theatre_id    | NUMBER         | PRIMARY KEY, NOT NULL         |
| screen_type   | VARCHAR2(20)   | NOT NULL                      |
| audio_type    | VARCHAR2(20)   |                               |
| ticket_price  | NUMBER         | NOT NULL                      |
| location      | VARCHAR2(20)   |                               |


### 3. **Specifications**
| Column Name   | Data Type       | Constraints                  |
|---------------|----------------|-------------------------------|
| movie_id      | NUMBER         | FOREIGN KEY → movie(movie_id) |
| language      | VARCHAR2(20)   |                               |
| subtitles     | VARCHAR2(20)   |                               |
| category      | VARCHAR2(20)   |                               |
| budget        | NUMBER         |                               |
| director      | VARCHAR2(20)   |                               |


### 4. **Booking**
| Column Name   | Data Type      | Constraints                       |
|---------------|----------------|-----------------------------------|
| theatre_id    | NUMBER         | FOREIGN KEY → theatre(theatre_id) |
| booking_id    | NUMBER         | NOT NULL                          |
| upi_id        | VARCHAR2(20)   |                                   | 
| email         | VARCHAR2(50)   |                                   |
| phone_number  | NUMBER         |                                   |


### 5. **Customer**
| Column Name    | Data Type       | Constraints                      |
|----------------|----------------|-----------------------------------|
| booking_id     | NUMBER         | FOREIGN KEY → booking(booking_id) |
| customer_id    | NUMBER         | PRIMARY KEY, NOT NULL             |
| customer_name  | VARCHAR2(20)   |                                   |
| age            | NUMBER         | NOT NULL                          |
| gender         | VARCHAR2(20)   | NOT NULL                          |


##  Key Features

- Movie database with attributes like rating, release date, etc.
- Theatre management with screen/audio type, price, and location
- Booking system with UPI and contact info
- Customer profiles linked to bookings
- Fully normalized schema to ensure data consistency
- Multiple SQL queries to retrieve specific insights
