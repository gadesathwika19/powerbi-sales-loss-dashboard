# powerbi-sales-loss-dashboard
Interactive Power BI dashboard analyzing sales profit and loss by category and region
# 📊 Power BI Sales & Loss Analysis Dashboard

## 📌 Project Overview
This project is an interactive Power BI dashboard created to analyze sales performance and identify loss-making categories across different regions.

## 🎯 Objectives
- Identify profitable vs loss-making categories
- Analyze total profit
- Understand region-wise impact on profit
- Enable business decision-making using visuals

## 🛠 Tools Used
- Power BI Desktop
- DAX
- Excel

## 📈 Dashboard Features
- Total Profit KPI
- Category-wise Profit Chart
- Profit vs Loss classification
- Region slicer (Central, South, West)
- Interactive filtering

## 🧠 Key DAX Used
```DAX
Profit Status =
IF(
    Sheet1[Profit] < 0,
    "Loss",
    "Profit"
)
