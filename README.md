# npo-implementation-integration-lab
Practice projects for Solutions / Implementation Engineer training

This project is designed as practical training for an aspiring Implementation Engineer or Solution Engineer.  The goal is to end up with a complete mockup of end-to-end data migration, implementation, integrations, and go-live for a SaaS company specializing in nonprofit fundraising and Constituent Relationship Management (CRM).

# Scenario
BrightFuture is a relatively new nonprofit organization in the United States specializing in Arts & Cultural Education resources for local youth.  After 5 years of grinding, they have finally crossed the $1M Revenue threshhold, and the Board of Directors has approved the budget line for a new CRM / Donor Management System.  Our job is to migrate their data from a variety of sources — including from FreeCRM, email marketing platform, and spreadsheets — into one inter-connected ecosystem to unlock the potential of unified, standardized, and centralized data.  

And you are the implementation engineer who is going to get them there!

# Discovery
**Pains:**
<li> Excessive reliance on spreadsheets, pivot tables, and "cocktail napkins": too time-consuming.</li>
<li> Reporting on donations by campaign: necessary, but too much effort to do more often than monthly.  Cannot get up-to-date info without several hours' work.</li>
<li> Manual data import to FreeCRM: time-consuming and error-prone.</li>
<br>

**Goals:**
<li> Automate the import process via API integration.</li>
<li> Ability to report on donations by date, amount, and campaign. </li>
<li> Acheive a unified view of holistic constituent engagement. </li>

# Repo Structure
<li> data/: csv files, legacy exports, and cleaned</li>
<li> sql/: schema definition + queries </li>
<li> python/: migration & ETL scripts </li>
<li> postman/: exported collections </li>
<li> docs/: markdowns of implementation runbooks, integration specs, customer notes</li>
