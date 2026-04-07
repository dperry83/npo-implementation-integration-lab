# BrightFuture Data Model
**Current Version:** v.0.1    
**Last Updated:** 2026-04-07    
**Scope:** Core fundraising and CRM entities for BrightFuture implementation lab

## 1. Purpose
This document defines the logical data model for the BrightFuture nonprofit fundraising CRM implementation.  It describes primary entities, their attributes, and the relationships required to support donor management, fundraising campaigns, donations, and constituent engagement tracking.  This model is intended to support:
- Data Migration from legacy systems
- API integrations with external systems such as Salesforce
- Reporting on donors, gifts, campaigns, and interactions
- Shared understanding of the core business objects and logic

## 2. Core entities
- **Constituent** - Individual supporter who engages with BrightFuture as a donor, prospect, volunteer, or supporter
- **Attributes** - A reusable label, classification, or segment applied to constituents, such as "volunteer" or "board member"
- **Donation** - A gift of monetary value, must be tied to a Constituent, optionally associated with a Campaign
- **Campaign** - Used to group and measure donations
- **Interaction** - A tracked engagement event between the agency and a Constituent.  Available: email, phone call, meeting, or letter. 

## 3. Entity Details
### 3.1 Constituent

    |  Field Name  |   Type   |  Unique?  |  Required?  |
    | --------------------------------------------------|
    |  id          |  integer |  True     |  True       |
    |  name        |  varchar |  False    |  False      |
    |  email       |  varchar |  False    |  False      |
    |  phone       |  varchar |  False    |  False      |
    |  address     |  varchar |  False    |  False      |
    |  created_at  |  date    |  False    |  True       |
    | --------------------------------------------------|

### 3.2 Attribute

    |  Field Name  |   Type   |  Unique?  |  Required?  |
    | --------------------------------------------------|
    |  id          |  integer |  True     |  True       |
    |  type        |  varchar |  True     |  True       |
    |  name        |  varchar |  False    |  True       |
    |  description |  varchar |  False    |  False      |

### 3.3 Donation

    |  Field Name  |   Type   |  Unique?  |  Required?  |
    | --------------------------------------------------|
    |  id          |  integer |  True     |  True       |
    |  amount      |  decimal |  False    |  True       |
    |  donated_at  |  date    |  False    |  True       |
    |  constituent_id  |  integer  |  False  |  True    |
    |  campaign_id |  integer | True      |  False      |

### 3.4 Campaign

    |  Field Name  |   Type   |  Unique?  |  Required?  |
    | --------------------------------------------------|
    |  id          |  integer |  True     |  True       |
    |  name        |  varchar |  True     |  True       |
    |  goal        |  decimal |  False    |  True       |
    |  start_at    |  date    |  False    |  True       |
    |  end_at      |  date    |  False    |  False      |

### 3.5 Interaction

    |  Field Name  |   Type   |  Unique?  |  Required?  |
    | --------------------------------------------------|
    |  id          |  integer |  True     |  True       |
    |  channel     |  varchar |  False    |  True       |
    |  happened_on |  date    |  False    |  True       |
    |  content     |  varchar |  False    |  False      |
    |  constituent_id  |  integer | False |  False      |

## 4. Entity Relationships
- One **Constituent** can have many **Donations**.
- One **Constituent** can have many **Interactions**.
- One **Constituent** can have many **Attributes** through **Constituent_Attribute**.
- One **Campaign** can have many **Donations**
- One **Donation** belongs to zero or one **Campaign**.  

## 5. Change History
- **v0.1 (2026-03-26):** Initialized basic fields Constituents, Attributes, Donations, Campaigns, and Interactions.
- **v0.1 (2026-04-07):** Updated and simplified to respond to schema changes

## 6. Design notes
- v0.1 intentionally keeps **Constituent** simple by using single 'name' and 'address' fields.  A future version may normalize into 'first_name' + 'last_name' and 'address', 'city', 'state', 'ZIP'
- **Donation** is modeled as belonging to one Constituent, and optionally one Campaign.  This keeps reporting simpler for this version.
- **Attribute** is modeled as a reusable lookup table to support segmentation and tagging without adding columns to **Constituent**
