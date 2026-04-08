# npo-implementation-integration-lab

Practice projects for Solutions / Implementation Engineer development.

This repo is a hands-on lab for an aspiring Implementation Engineer / Solutions Engineer focused on nonprofit and social-good SaaS. The goal is to design and execute an end-to-end mock implementation: data migration, platform configuration, integrations, and go-live for a fundraising and constituent relationship management (CRM) solution.

---

## Scenario: BrightFuture Arts & Culture

BrightFuture is a growing nonprofit in the United States that provides arts and cultural education resources for local youth. After five years of grinding, they have finally crossed the $1M annual revenue threshold, and the Board of Directors has approved budget for a modern CRM / donor management system.

Your role: you are the Implementation Engineer responsible for migrating BrightFuture’s data from multiple sources into a unified ecosystem and establishing the integrations and reporting they need.

**Source systems:**

- FreeCRM (legacy CRM)
- An email marketing platform
- Multiple spreadsheets and ad-hoc lists

**Target state:**

- A centralized fundraising/CRM platform
- An integration with Salesforce (for selected supporter data)
- Clean, standardized, and reportable data across systems

---

## Discovery

### Pains

- Excessive reliance on spreadsheets, pivot tables, and even “cocktail napkins”; too time-consuming and error-prone.
- Reporting on donations by campaign is necessary but takes so much effort that it only happens monthly at best.
- Manual data imports to FreeCRM are slow, inconsistent, and prone to formatting errors.

### Goals

- Automate the import process via API integration where possible.
- Enable self-service reporting on donations by date, amount, and campaign.
- Achieve a unified view of holistic constituent engagement across channels (gifts, events, email, etc.).

---

## Repo Structure

- `data/` – sample CSV files, legacy exports, and cleaned datasets
- `sql/` – schema definitions and example queries
- `python/` – migration and ETL scripts
- `postman/` – exported Postman collections
- `docs/` – markdown implementation runbooks, integration specs, and customer notes
- `dashboards/` (optional) – dashboard definitions and screenshots

---

## Roadmap (high level)

1. Complete: Define BrightFuture’s data model (donors, donations, campaigns, interactions), including:
    - Ideate data model
    - Create reusable database using Docker Official Image for PostgreSQL 
    - Create schema and seed data
    - Build initial reporting queries for POC
2. Build migration mappings and Python scripts to clean and transform legacy exports.
3. Design and test a basic REST integration (e.g., syncing key supporter data into Salesforce).
4. Create a small set of fundraising and engagement dashboards.
5. Document the full implementation as a case study suitable for interviews / portfolio use.
