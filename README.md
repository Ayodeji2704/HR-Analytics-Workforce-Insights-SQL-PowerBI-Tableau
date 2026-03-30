# HR Performance Analytics: Workforce & Attrition Deep Dive

## 📌 Project Overview
This project provides a comprehensive analysis of organizational workforce data to identify trends in employee attrition, demographic distribution, and job satisfaction. By leveraging **SQL (PostgreSQL)** for data validation and both **Power BI** and **Tableau** for visualization, this project ensures "single source of truth" reporting across multiple platforms.

## 🛠️ Tech Stack
- **Data Validation:** SQL (PostgreSQL)
- **Data Visualization:** Power BI, Tableau
- **Documentation:** Markdown, Microsoft Excel (Data Source)

## 🎯 Key Business Questions Addressed
1. What is the current attrition rate, and how does it compare across departments?
2. Are there specific demographic "hotspots" (age, gender, education) with higher turnover?
3. Is there a correlation between job satisfaction ratings and employee roles?
4. How do different educational backgrounds impact retention?

## 📊 Data Validation (SQL)
To ensure the integrity of the dashboards, PostgreSQL was used to verify the KPIs. For example, the attrition rate was calculated using the following logic:

$$\text{Attrition Rate} = \left( \frac{\text{Total Attrition Count}}{\text{Total Employee Count}} \right) \times 100$$

*Refer to `hr_performance_analytics.sql` for the full validation script.*

## 📈 Dashboard Insights
- **Overall Attrition:** The organization maintains a **16.12%** attrition rate, with **R&D** showing the highest volume of exits (56.1%).
- **Gender Trends:** In the 25-34 age bracket, male attrition significantly outpaces female attrition.
- **Education:** Employees with a background in **Life Sciences** represent the highest attrition count (89).
- **Satisfaction:** Sales Executives report the highest volume of "Level 4" satisfaction, yet remain a high-count group for turnover analysis.

## 📂 Repository Structure
- `/Documentation`: Detailed Business Problem and Analysis Report.
- `/Dashboards`: Contains .pbix and Tableau Workbook files.
- `/Images`: Contains images of dashboard screenshots.
- `/SQL_Scripts`: PostgreSQL queries for data extraction and validation.
- `/Data`: (Optional) Raw dataset or schema description.
