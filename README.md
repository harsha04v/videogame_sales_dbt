# 🎮 Video Game Sales Analytics with dbt
---
## 🎯 Project Summary
The **Video Game Sales Analytics** project is a data transformation pipeline built using **dbt** (Data Build Tool) and **BigQuery**. It transforms raw video game sales data into clean, analytics-ready models for business intelligence, reporting, and dashboarding.

This project simulates real-world data engineering workflows, including modular SQL modeling, testing, documentation, and version control.
---

## 🏗️ Project Architecture

The dbt project follows a layered architecture:

📦 Raw Data → 🛠️ Sources → 🧹 Staging → 🧪 Intermediate → 📊 Marts (Fact & Dimension Tables)


Each stage builds on the previous, ensuring data quality, traceability, and modular development.

---

## 📁 Project Structure

. ├── models/ │   ├── sources/ │   ├── staging/ │   ├── intermediate/ │   └── marts/ │       ├── dim/ │       └── fct/ ├── snapshots/ ├── macros/ ├── tests/ └── dbt_project.yml


- **Sources**: Declares raw input tables from BigQuery  
- **Staging**: Renames and cleans raw data into base models  
- **Intermediate**: Performs business logic transformations  
- **Marts**: Serves dimensional (`dim_`) and fact (`fct_`) tables for BI and analysis

---

## 🛠️ Materialization Strategy

| Layer         | Materialization | Purpose                          |
|---------------|------------------|----------------------------------|
| Staging       | View             | Lightweight & fast               |
| Intermediate  | Table            | Reusable logic & joins           |
| Marts         | Table            | Query-optimized final outputs    |

---

## 📌 Status
✅ Sources and staging models implemented  
✅ Intermediate and marts layers created  
✅ Tests and documentation in progress  
🚀 Ready for CI/CD and dashboard integration

---

