# 🍕 Pizza Sales Analysis — SQL Server & Power BI

## 📌 Présentation du projet

Ce projet consiste à analyser les ventes d'une pizzeria afin d'évaluer sa performance commerciale, d'identifier les tendances de commandes et de déterminer les pizzas, catégories et tailles les plus et les moins performantes.

L'objectif est de reproduire une démarche proche d'un projet réel de **Data Analyst**, depuis l'importation des données jusqu'à la production d'un dashboard Power BI et la formulation d'insights business.

---

## 🎯 Objectifs business

L'analyse cherche principalement à répondre aux questions suivantes :

- Quel est le chiffre d'affaires total ?
- Quel est le montant moyen dépensé par commande ?
- Combien de pizzas ont été vendues ?
- Combien de commandes ont été réalisées ?
- Combien de pizzas sont vendues en moyenne par commande ?
- Quels jours et quels mois enregistrent le plus de commandes ?
- Quelles sont les heures de pointe ?
- Quelle catégorie de pizzas contribue le plus aux ventes ?
- Quelle taille de pizza est la plus vendue ?
- Quelles sont les pizzas les plus performantes ?
- Quelles sont les pizzas les moins performantes ?

---

## 🛠️ Technologies utilisées

| Technologie | Utilisation |
|---|---|
| **CSV** | Source des données |
| **SQL Server** | Stockage et analyse des données |
| **SQL** | Calcul des KPI et analyses business |
| **Power BI** | Visualisation et dashboard interactif |

---

# 🔄 Workflow du projet

```text
CSV
 │
 ▼
SQL Server
 │
 ▼
Exploration & validation des données
 │
 ▼
Analyse SQL
 │
 ├── KPI
 ├── Analyse temporelle
 ├── Analyse par catégorie
 ├── Analyse par taille
 ├── Top 5
 └── Bottom 5
 │
 ▼
Résultats & interprétations
 │
 ▼
Power BI Dashboard

```

---

## Dashboard Preview

![Pizza Sales Dashboard](images/dashboard.png)

---

# 💡 Insights business

Les résultats SQL et le dashboard permettent notamment d'identifier :

- Les jours avec le plus grand volume de commandes.
- Les mois avec la plus forte activité.
- Les heures de pointe.
- Les catégories contribuant le plus aux ventes.
- Les tailles de pizzas les plus populaires.
- Les pizzas générant le plus de chiffre d'affaires.
- Les pizzas vendues en plus grande quantité.
- Les pizzas présentes dans le plus grand nombre de commandes.
- Les pizzas sous-performantes.

> Les conclusions finales doivent être basées sur les résultats obtenus à partir des données du projet.

---

---

# 📁 Structure du projet

```text
Pizza-Sales-Analysis/
│
├── README.md
│
├── data/
│   └── pizza_sales.csv
│
├── sql/
│   └── pizza_sales_analysis.sql
│
├── documentation/
│   ├── Pizza_Sales_SQL_Analysis.docx
│   
│
├── dashboard/
│   └── Pizza_Sales_Dashboard.pbix
│
└── images/
    └── dashboard(Accueil et Meilleures /Faibles Vents).png
```

---

# 📄 Description des fichiers

### `data/pizza_sales.csv`

Fichier source contenant les données de ventes.

### `sql/pizza_sales_analysis.sql`

Contient les requêtes SQL utilisées pour calculer les KPI et réaliser les différentes analyses.

### `documentation/Pizza_Sales_SQL_Analysis.docx`

Rapport détaillé contenant :

```text
Question business
        ↓
Requête SQL
        ↓
Résultat
        ↓
Interprétation
        ↓
Insight
```
### `dashboard/Pizza_Sales_Dashboard.pbix`

Fichier Power BI contenant le dashboard interactif.

### `images/dashboard.png`

Capture du dashboard utilisée pour présenter le projet directement sur GitHub.

---
#  Auteur

**Abdelhamid Nfissi**

📧 **Email :** abdonfissi38@gmail.com

---

##  Résumé

Ce projet présente une analyse complète des ventes d'une pizzeria, depuis les données brutes CSV jusqu'à la création d'un dashboard Power BI et l'identification d'insights business.

L'objectif principal est de démontrer une démarche structurée de **Data Analyst**, combinant SQL Server, SQL, analyse business, visualisation et documentation.
