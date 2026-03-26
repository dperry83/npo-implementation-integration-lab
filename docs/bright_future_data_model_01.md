# BrightFuture Data Model
**Current Version:** v.0.1
**Last Updated:** 2026-03-26
**Scope:** Core fundraising and CRM entities for BrightFuture implementation lab

## 1. Purpose
This document defines the core entities for BrightFuture's nonprofit CRM implementation.  It defines main entities, their fields, and relationships to ensure consistency in data migration, implementation, and reporting.

## 2. Core entities
- **Constituent** - Individual supporter who can engage across all channels
- **Attributes** - Metadata about Constituents
- **Donation** - A gift of monetary value, must be tied to a Constituent, and can be tied to a Campaign
- **Campaign** - Fundraising initiative with goals, dates, and Interaction channels
- **Interaction** - Non-gift point of contact with any Constituent.  Available types: Phone Call, Email, Meeting, Letter, Text

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
|  date        |  date    |  False    |  True       |

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
|  date        |  date    |  False    |  True       |
|  content     |  varchar |  False    |  False      |

## 4. Entity Relationships
- One **Constituent** can have many **Donations**.  One **Donation** must be attributed to one **Constituent**
- One **Constituent** can have 0-many **Attributes**.  One **Attribute** can be assigned to many **Constituents**
- One **Constituent** can have many **Interactions**.  One **Interaction** must be attributed to one **Constituent**
- One **Donation** can have 0-many **Campaigns**.  One **Campaign** can be assigned many **Donations**

## 5. Change History
- **v0.1 (2026-03-26):** Initialized basic fields Constituents, Attributes, Donations, Campaigns, and Interactions.
