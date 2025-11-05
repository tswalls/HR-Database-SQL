# HR-Database-SQL
# HR-Database-SQL

### 📊 Overview
This project models an HR database to analyze employee performance and salary trends by department using **MySQL**.

### ⚙️ Tools Used
- MySQL Community Server
- Visual Studio Code or GitHub Codespaces
- SQL (DDL, DML, and Window Functions)

### 🧠 Features
- Designed relational database schema for HR data  
- Used **JOIN**, **GROUP BY**, and **RANK()** to analyze performance  
- Explored correlations between salary and performance metrics  

### 📈 Example Query
```sql
SELECT 
    e.employee_name, 
    d.department_name, 
    RANK() OVER (PARTITION BY d.department_name ORDER BY e.performance_score DESC) AS rank_in_department
FROM employees e
JOIN departments d ON e.department_id = d.department_id;
