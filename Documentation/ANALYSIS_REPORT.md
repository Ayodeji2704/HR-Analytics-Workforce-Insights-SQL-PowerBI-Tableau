# HR Analytics: Workforce Performance & Attrition Report

## 📊 Data Overview & Validation
The dataset consists of **1,470 employees**. To ensure high data integrity, all metrics presented in the Power BI and Tableau dashboards were validated using **PostgreSQL** queries.

### Core Metrics Summary
*   **Total Employees:** 1,470
*   **Total Attrition:** 237
*   **Attrition Rate:** 16.12%
*   **Active Employees:** 1,233
*   **Average Age:** 37

---

## 🔍 Key Insights & Findings

### 1. Departmental Attrition Hotspots
The **Research & Development (R&D)** department experiences the highest volume of turnover, accounting for **56.1%** of all organizational attrition. 
> **Insight:** While R&D is often the largest department, the disproportionate attrition rate suggests a need for deeper investigation into project-based stress or competitive salary poaching within the tech sector.

### 2. At-Risk Demographics (Age & Gender)
The data shows a significant spike in attrition within the **25–34 age band**.
*   **Total Exits (25-34):** 112 employees.
*   **Gender Split:** Within this "at-risk" group, **Male** employees leave at a higher rate (61.6%) compared to **Female** (38.4%).
*   **Trend:** Attrition significantly stabilizes as employees reach the 45+ age categories.

### 3. Education & Satisfaction Correlation
*   **Top Education Field for Attrition:** Employees with a **Life Sciences** (89 exits) or **Medical** (63 exits) background represent the largest portion of those leaving.
*   **Satisfaction Levels:** Despite high attrition, many **Sales Executives** report high job satisfaction (Level 4). This suggests that turnover in Sales may be driven by external opportunities rather than internal dissatisfaction.

---

## 💡 Strategic Recommendations

1.  **Targeted Retention for R&D:** Conduct "Stay Interviews" specifically for the R&D department to identify the root causes of the 56.1% turnover rate.
2.  **Early Career Support:** Develop a mentorship program specifically targeting the **25–34 age group** to increase organizational loyalty during these critical career years.
3.  **Educational Alignment:** Review the job roles assigned to **Life Sciences** graduates. If they are leaving for specialized roles elsewhere, consider offering more technical or research-focused career paths within the company.
4.  **SQL Validation Note:** The attrition rate was calculated and confirmed using the following logic to ensure dashboard accuracy:

$$\text{Attrition Rate} = \frac{\text{Count of Attrition (Yes)}}{\text{Total Employee Count}} \times 100$$

---

## 🏁 Conclusion
The organization maintains a relatively healthy active workforce of **1,233** employees. However, by addressing the turnover in the **R&D department** and the **25-34 age demographic**, the company could potentially reduce its overall attrition rate below the current **16.12%**.
