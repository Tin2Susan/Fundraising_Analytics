# Fundraising Analytics Dashboard

## 📊 Project Overview

This project analyzes **donations and campaign performance for a fundraising scenario**, using:

✅ **Snowflake** for structured cloud data preparation and storage.  
✅ **dbt (Data Build Tool)** for modular, testable transformations and star schema modelling.  
✅ **Power BI** for interactive dashboards with clear KPI insights.

It demonstrates **end-to-end data pipeline skills**, from raw CSV ingestion to structured modelling and stakeholder-ready visualization for non-profit fundraising optimization.

---

## 🛠️ Tools & Technologies

- **Power BI**: Interactive dashboard building.
- **Snowflake**: Cloud data warehousing, SQL-based data prep, and star schema creation.
- **dbt**: Modular SQL modelling with `staging` and `marts` layers.
- **Power Query**: Lightweight ETL within Power BI.
- **SQL**: Data cleaning, validation, and joins.
- **Git & GitHub**: Version control and project documentation.

---

## 📈 Key Features

✅ **KPI Cards**: Total Donations, Average Donation, Donation Count.  
✅ **Donations vs. Target Amount by Campaign**: Performance tracking against goals.  
✅ **Donation Trends**: Monthly donations over time.  
✅ **Donation Type Breakdown**: Recurring vs. One-time donations.  
✅ **Clean Star Schema**: For scalable reporting and efficiency in Power BI.

---

## 📁 Project Structure

Fundraising-Analytics/
│
├── README.md
├── Fundraising_Analytics_Dashboard.pbix
├── dashboard_preview.png
│
├── data/
│ ├── donations_sample.csv
│ ├── campaigns_sample.csv
│ └── supporters_sample.csv
│
├── snowflake_sql/
│ ├── create_tables.sql
│ ├── insert_data.sql
│ └── data_cleaning_queries.sql
│
└── dbt_models/
├── dbt_project.yml
├── staging/
│ ├── stg_donations.sql
│ ├── stg_campaigns.sql
│ └── stg_supporters.sql
└── marts/
├── mart_fundraising_summary.sql
└── ...
Fundraising-Analytics/
│
├── README.md
├── Fundraising_Analytics_Dashboard.pbix
├── dashboard_preview.png
│
├── data/
│   ├── donations_sample.csv
│   ├── campaigns_sample.csv
│   └── supporters_sample.csv
│
├── snowflake_sql/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── data_cleaning_queries.sql
│
└── dbt_models/
    ├── dbt_project.yml
    ├── staging/
    │   ├── stg_donations.sql
    │   ├── stg_campaigns.sql
    │   └── stg_supporters.sql
    │
    └── marts/
        ├── mart_fundraising_summary.sql
        └── ...


---

## 🚀 Workflow

1️⃣ **Data Preparation in Snowflake**
- Uploaded CSVs into Snowflake tables.
- Cleaned and validated data with SQL scripts.
- Established a **star schema** linking donations (fact) with campaigns and supporters (dimensions).

2️⃣ **Modelling with dbt**
- Created `staging` models for clean, consistent column structures.
- Built `marts` models for summary and reporting layers.
- Added `schema.yml` for documentation and testing.

3️⃣ **Visualization with Power BI**
- Connected to Snowflake tables for live analysis.
- Created interactive dashboards with:
   - KPIs.
   - Time-series charts.
   - Campaign performance breakdowns.

---

## ✨ Learning Outcomes

✅ Practiced **cloud data warehousing with Snowflake** for structured data storage.  
✅ Applied **dbt modelling principles for clear, scalable pipelines.**  
✅ Built a **Power BI dashboard aligned with stakeholder goals in a fundraising scenario.**  
✅ Learned practical data quality validation, joins, and testing methods.  
✅ Developed **GitHub documentation and clean project structuring** for professional portfolio presentation.
