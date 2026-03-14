# Educational Management System: Database & SQL Analytics 

![Project Screenshot](63e7922b-ee92-4070-bd50-64053e4f9183.png)

**Developer:** Rwan A. [@rewan4](https://github.com/rewan4)

**Rating:** 0.0 (0 reviews)

---

## Project Overview
This project is a comprehensive solution for managing educational institutions, inspired by the NTI training program workflow. The goal was to design a robust, normalized relational database capable of handling complex academic relationships while generating actionable insights for management decisions.

The system covers the full database lifecycle: from conceptual modeling (ERD) to physical implementation in SQL Server. It ensures data integrity, models complex many-to-many relationships (e.g., Instructors-Trainees, Courses-Trainees), and creates a clean, scalable schema.

Advanced SQL queries were developed to analyze academic performance, track attendance, and monitor curriculum distribution across different tracks.

---

## Database Schema
The database includes the following main entities:

- **Courses**: course_id, course_name, hours, track_id, instructor_id, room_id
- **Classrooms**: room_id, room_name, capacity, floor
- **Instructors**: instructor_id, first_name, last_name, email, phone, specialization, track_id
- **Trainees**: trainee_id, first_name, last_name, gender, national_id, phone, email, track_id, bOD
- **Tracks**: track_id, track_name, main_specialization
- **Courses_Trainees**: course_id, trainee_id, intake_year, attendance_status
- **Trainees_Instructors**: trainee_id, instructor_id

The schema handles **many-to-many relationships** using junction tables and maintains normalization for data integrity.

---

## Key Features
- **Custom Database Architecture**: Designed and implemented a normalized schema with Primary & Foreign keys.
- **Complex Relationship Handling**: Managed many-to-many relationships via junction tables.
- **Advanced SQL Analytics**: Used complex JOINs, subqueries, and `INSERT INTO SELECT` statements for efficient data manipulation.
- **Data Quality Management**: Cleaned raw datasets and resolved NULL values for accurate reporting.
- **Analytical Reporting**: Generated insights such as average course hours per track, inactive trainees, and curriculum allocation.

---

## Key Insights
- Identified patterns of instructor and course distribution across technology tracks.
- Analyzed track-specific curriculum intensity by calculating total and average course hours.
- Enabled real-time attendance tracking to highlight at-risk trainees.
- Mapped classroom capacities vs. course schedules for optimized resource allocation.

---

## Business Impact
This system supports data-driven academic management by:
- Streamlining student progress and instructor assignment tracking.
- Optimizing resource allocation (classrooms and courses).
- Providing automated reporting to enable informed leadership decisions.

---

## Technologies Used
- **Database**: Microsoft SQL Server
- **Data Modeling**: ERD, Normalization
- **Data Analysis**: SQL Queries, JOINs, Subqueries

---

## License
This project is licensed under the MIT License. 
