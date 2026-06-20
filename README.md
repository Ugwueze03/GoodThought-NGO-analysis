# GoodThought NGO: Donation & Impact Analysis

An end-to-end data analytics project using **PostgreSQL** and **Microsoft Excel** to analyze donation patterns, donor behavior, and project impact across regions for GoodThought NGO.

> **Data Source:** This project uses the GoodThought NGO dataset from DataCamp's Data Analyst track. The analysis, SQL queries, dashboard, and business insights are entirely my own work.

---

## Project Objectives

This project answers two key business questions:

1. Which assignments receive the highest funding, and which donor types contribute the most?
2. Do regions with the highest-impact projects receive proportional donor support?

---

## Tools & Technologies

- **PostgreSQL** – Data extraction, cleaning, aggregation, and analysis
- **Microsoft Excel** – Dashboard creation, KPI reporting, and visualizations

---

## Key Insights

- **Assignment_3033** received the highest single donation (**$3,840.66**), funded by **individual donors**.
- Every region recorded at least one assignment with an impact score close to **10/10**, indicating consistently high project quality.
- The **East** region attracted roughly **twice the total donations** of other regions despite having similarly high-impact projects, suggesting that funding levels may not be driven solely by project impact.
- **Organizational donors** contributed higher average donation amounts per assignment than individual donors, making them the primary source of larger contributions.

---

## Dashboard Features

- Total Donations (KPI)
- Total Assignments (KPI)
- Average Impact Score (KPI)
- Highest Donation (KPI)
- Highest Donation by Assignment
- Average Donation by Donor Type
- Top Impact Score by Region
- Regional Donation Distribution

---

## Project Structure
GoodThought-NGO-Donation-Analysis/
│
├── sql/
│   └── goodthought_analysis.sql
│
├── result/
│   └── goodthought_dashboard.xlsx
│
├── images/
│   └── dashboard_screenshot.png
│
└── README.md

---

## SQL Queries

The complete PostgreSQL queries used for this analysis are available in:

```text
/sql/goodthought_analysis.sql
Dashboard Preview
:::
