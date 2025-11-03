# IBM-HR-Employee-Attrition-Analysis


This project analyzes the **IBM HR Analytics Employee Attrition & Performance** dataset (from Kaggle) to understand what factors influence employee turnover. The goal is to identify key patterns behind attrition and visualize them in a clear, data-driven way.

---

### 🗂 Dataset

**Source:** [Kaggle - IBM HR Analytics Employee Attrition & Performance]([https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset/data))
**Description:**
The dataset includes information about employees’ age, department, job role, education field, income, and whether they’ve left the company.

---

### ⚙️ Tools Used

* **SQL Server:** for querying and analyzing structured data
* **Power BI:** for building interactive dashboards and data visualization

---

### 🧩 Project Workflow

1. **Data Preparation:**

   * Imported dataset into SQL Server


2. **SQL Analysis:**

   * Wrote queries to analyze attrition by age, department, and salary
   * Identified high-risk groups (e.g., departments with higher turnover rates)

3. **Power BI Visualization:**

   * Performed data transformations in Power Query
   * Created dashboards showing attrition rate, income trends, and department-wise insights

4. **Insights:**

   * Higher attrition observed among younger employees and lower-income groups
   * Sales department showed the highest attrition rate
   * Work-life balance and job satisfaction had visible impact on retention

---

### 📁 Repository Structure

```
IBM-HR-Employee-Attrition-Analysis/
│
├── data/
│   └── IBM_HR_Employee_Attrition.csv
│
├── sql/
│   └── Employee_Datasql

├── powerbi/
│   └── Employee_Data.pbix
       Employee Data Visualization.png
│
└── README.md
```

