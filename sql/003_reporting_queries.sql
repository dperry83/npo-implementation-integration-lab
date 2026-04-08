-- sum total of Donations, grouped by Campaign:
SELECT                        
  c.id    AS campaign_id,
  c.name  AS campaign_name,
  COUNT(d.id)   AS gift_count,
  SUM(d.amount) AS total_donated
FROM donations AS d
JOIN campaigns AS c
  ON d.campaign_id = c.id
GROUP BY c.id, c.name
ORDER BY total_donated DESC;

-- sum total of Donations, grouped by Constituent:
SELECT 
  c.id      AS constituent_id,
  c.name    AS constituent_name,
  SUM(d.amount) AS total_given
FROM donations AS d
JOIN constituents AS c
  ON d.constituent_id = c.id
GROUP BY c.id, c.name
ORDER BY total_given DESC;

-- Donation history by Constituent:
SELECT
  c.id      AS constituent_id, 
  c.name    AS constituent_name, 
  d.donated_at,
  d.amount AS gift_amount 
FROM donations AS d
JOIN constituents AS c
  ON d.constituent_id = c.id
ORDER BY c.name ASC, d.donated_at DESC;

-- Donation history by donation date:
SELECT
  d.id AS donation_id
  d.donated_at,
  c.id AS constituent_id, 
  c.name AS constituent_name, 
  d.amount
FROM donations AS d
JOIN constituents AS c
  ON d.constituent_id = c.id
ORDER BY d.donated_at;

-- Attributes by Constituent:
SELECT
  c.id   AS constituent_id,
  c.name AS constituent_name,
  a.type AS attribute_type,
  a.name AS attribute_name,
  a.description
FROM constituents_attributes AS ca
JOIN constituents AS c
  ON ca.constituent_id = c.id
JOIN attributes AS a
  ON ca.attribute_id = a.id
ORDER BY c.name ASC, a.type ASC, a.name ASC;

-- Constituents with no Donations but at least one interaction:
SELECT 
  c.id   AS constituent_id,
  c.name AS constituent_name,
  i.channel,
  i.happened_on,
  i.content
FROM interactions AS i
JOIN constituents AS c
  ON i.constituent_id = c.id
WHERE NOT EXISTS (
  SELECT 1
  FROM donations AS d
  WHERE d.constituent_id = c.id
)
ORDER BY c.name ASC, i.happened_on DESC;

-- Interactions by Constituent, most recent to least recent:
SELECT 
  i.id,
  i.constituent_id AS constituent_id, 
  c.name AS constituent_name, 
  i.channel, 
  i.happened_on, 
  i.content
FROM interactions AS i
JOIN constituents AS c
  ON i.constituent_id = c.id
ORDER BY c.id ASC, i.happened_on DESC;
