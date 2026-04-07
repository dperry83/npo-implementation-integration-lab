INSERT INTO constituents (name, email, phone, address, created_at) VALUES
('Alicia Morgan', 'alicia.morgan@example.org', '804-555-0101', '101 Main St, Richmond, VA', '2025-01-15'),
('Benjamin Carter', 'bcarter@example.org', '804-555-0102', '22 Grove Ave, Richmond, VA', '2025-02-10'),
('Charlotte Nguyen', 'charlotte.nguyen@example.org', '804-555-0103', '88 Broad St, Richmond, VA', '2025-03-05'),
('David Ellis', 'david.ellis@example.org', '804-555-0104', '17 Cary St, Richmond, VA', '2025-04-20'),
('Elena Ramirez', 'elena.ramirez@example.org', '804-555-0105', '250 Pine Rd, Henrico, VA', '2025-05-12'),
('Franklin Brooks', 'franklin.brooks@example.org', '804-555-0106', '9 Oak Ln, Midlothian, VA', '2025-06-01');

INSERT INTO attributes (type, name, description) VALUES
('segment', 'Volunteer', 'Constituent volunteers with BrightFuture programs'),
('segment', 'Major Donor', 'Constituent has made high-value gifts'),
('segment', 'Recurring Donor', 'Constituent gives on a recurring basis'),
('role', 'Board Member', 'Constituent serves on the board of directors'),
('interest', 'Arts Education Advocate', 'Constituent has expressed strong interest in youth arts education');

INSERT INTO constituents_attributes (constituent_id, attribute_id) VALUES
(1, 1),
(1, 5),
(2, 2),
(2, 5),
(3, 3),
(4, 4),
(5, 1),
(6, 5);

INSERT INTO campaigns (name, goal, start_at, end_at) VALUES
('Spring Gala 2026', 50000.00, '2026-02-01', '2026-04-30'),
('Giving Tuesday 2025', 15000.00, '2025-11-01', '2025-12-03'),
('Youth Arts Scholarship Drive', 30000.00, '2026-01-15', '2026-06-30');

INSERT INTO donations (constituent_id, campaign_id, amount, donated_at) VALUES
(1, 1, 250.00, '2026-03-10'),
(2, 1, 5000.00, '2026-03-15'),
(3, 2, 100.00, '2025-12-02'),
(3, 3, 100.00, '2026-02-14'),
(4, 3, 1000.00, '2026-02-20'),
(5, 2, 75.00, '2025-11-28'),
(6, NULL, 50.00, '2026-01-05'),
(2, 3, 2500.00, '2026-03-01'),
(1, NULL, 125.00, '2026-01-22');

INSERT INTO interactions (constituent_id, channel, happened_on, content) VALUES
(1, 'email', '2026-03-01', 'Sent invitation to Spring Gala 2026'),
(1, 'event', '2026-03-10', 'Attended Spring Gala and made a donation'),
(2, 'meeting', '2026-03-05', 'Major donor cultivation meeting with executive director'),
(2, 'phone', '2026-03-12', 'Follow-up call regarding scholarship funding'),
(3, 'email', '2025-11-20', 'Giving Tuesday appeal email opened and clicked'),
(3, 'email', '2026-02-10', 'Recurring donor thank-you email'),
(4, 'meeting', '2026-02-01', 'Board strategy meeting'),
(5, 'phone', '2025-11-25', 'Reminder call for Giving Tuesday campaign'),
(5, 'email', '2025-11-28', 'Donation receipt sent'),
(6, 'letter', '2026-01-02', 'Year-end stewardship letter mailed'),
(6, 'email', '2026-01-04', 'Follow-up email after stewardship letter');
