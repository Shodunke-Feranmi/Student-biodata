# Student Biodata Database (SQL)
 
A MySQL relational database tracking student biodata, department and course enrollment, and attendance for a university cohort, with queries to check data integrity across tables.
 
---
 
## 📌 Project Overview
 
This project models a small academic records system with **42 students** linked across three related tables: their department, their enrolled course, and their attendance record. The schema uses foreign keys back to `Students_Data` to keep every table connected by student ID (`SN`).
 
 
## 🎯 Business Problem
 
A department needs a single, queryable source of truth for its students: who they are, what department and courses they belong to, and whether their attendance is being tracked. Records like this often go out of sync as students are added or update, so the system needs checks to catch students missing from any table.
 
## 📊 Project Objectives
 
- Build a relational schema linking student biodata, department, courses, and attendance
- Populate the database and confirm it with basic lookups (by gender, by level, by department)
- Check referential integrity between tables, catching students missing attendance or course records
- Summarize the cohort by gender, level, department, and faculty
- Measure overall attendance performance

## 🛠️ Tools & Technologies
 
- **MySQL Workbench**
  - Schema design with `PRIMARY KEY` and `FOREIGN KEY` constraints
  - Bulk `INSERT` statements
  - Filtering (`WHERE`) and integrity checks (`NOT IN`)
  - Late-arriving records handled with follow-up `INSERT` statements
## 📈 Key Findings
 
- **42 students**: 23 male, 19 female, averaging **19.7 years old** (range 18–22).
- Levels are fairly balanced: **200L is largest (13 students)**, followed by 300L (11), 100L (10), and 400L (8).
- **Computer Science** is the largest department (9 students), followed by Accounting and Arts (7 each).
- By faculty, **Science leads with 22 students** (about 52%), ahead of Arts (13) and Accounting (7).
- **Overall attendance rate is 58.5%** (24 present out of 41 records), with attendance varying widely by day, from full turnout (3/3) to zero present (0/2).
- **One data gap:** student 42 (added after the initial batch) has a department record but **no course or attendance entry**, so the integrity checks in the script correctly catch this.
## 💡 Business Insights
 
1. **The cohort is Science-heavy.** Over half the students sit in Science-faculty departments (Computer Science, Physics, Mathematics, Statistics), while Arts and Accounting are comparatively small. Resource planning (staffing, lab space) should reflect this imbalance.
2. **Attendance is a genuine concern, not just a data exercise.** A 58.5% overall present rate is low for a required academic record, and some session dates show 0% attendance, suggesting either recording gaps or real engagement issues worth investigating.
3. **The referential integrity checks caught a real gap.** Student 42 was added to `Students_Data` and `department` but never given course or attendance records, exactly the kind of drift these checks are meant to catch before it causes reporting errors.
## 📚 Skills Demonstrated
 
- Relational schema design with primary and foreign keys
- Writing and populating a multi-table database from scratch
- Data integrity auditing across related tables (`NOT IN` anti-joins)
- Descriptive analysis by demographic and categorical breakdowns
- Handling schema drift from late-arriving records
## 👤 Author
 
**Shodunke Feranmi**
 [GitHub](https://github.com/Shodunke-Feranmi)
 
