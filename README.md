# Hospital Management System

## Team Healthviva — Galgotias University
- **Mohammad Ayan Ahmad (Admin)** — mohammad.26scse1010745@galgotiasuniversity.ac.in
- **Aditya Kumar** — aditya.26scse1010736@galgotiasuniversity.ac.in
- **Akshit Bhardwaj** — akshit.26scse1010022@galgotiasuniversity.ac.in
- **Krish Kumar** — krish.26scse1010423@galgotiasuniversity.ac.in

---

## Project Overview
A Java-based Hospital Management System developed for Review 2 evaluation. It provides full patient admissions tracking, doctor consultation schedules, real-time appointment conflict detection, and automated billing workflows.

## Architecture & Tech Stack
- **Architecture:** 3-Tier Layered Architecture (Models, Data Access Objects, Controllers)
- **Backend:** Java 8+
- **Database:** MySQL 8.0 Relational Database (`schema.sql`)
- **Connectivity:** JDBC Singleton with PreparedStatements

## Database Schema
- `doctors`: Doctor registries, fees, and specializations
- `patients`: Inpatient/outpatient profiles and diagnoses
- `appointments`: Visit scheduling with double-booking prevention
- `bills`: Automated invoice generation upon appointment completion

## How to Run
```bash
# 1. Import database
mysql -u root -p < schema.sql

# 2. Compile and launch
javac HospitalManagementSystem.java
java HospitalManagementSystem
