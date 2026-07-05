INSERT INTO branch (branch_name, branch_city, branch_address, branch_phone, branch_email) VALUES
('Sunnyside Portsmouth',  'Portsmouth',  '14 High Street, Portsmouth, PO1 2AB',      '023 9281 1100', 'portsmouth@sunnyside.co.uk'),
('Sunnyside Southampton', 'Southampton', '7 Above Bar Street, Southampton, SO14 7FX', '023 8055 2200', 'southampton@sunnyside.co.uk'),
('Sunnyside Brighton',    'Brighton',   '32 Western Road, Brighton, BN1 2DE',        '01273 441 300', 'brighton@sunnyside.co.uk'),
('Sunnyside London',      'London',     '88 Kensington High St, London, W8 4SG',     '020 7937 4400', 'london@sunnyside.co.uk'),
('Sunnyside Birmingham',  'Birmingham', '5 New Street, Birmingham, B2 4RH',          '0121 633 5500', 'birmingham@sunnyside.co.uk');

INSERT INTO role (role_name, can_view_payments) VALUES
('Agent', FALSE),
('Manager', TRUE),
('Accountant', TRUE),
('Trainee', FALSE);

INSERT INTO employee (first_name, last_name, email, phone, hire_date, branch_id, role_id) VALUES
('Sarah',   'Mitchell', 'smitchell@sunnyside.co.uk', '07700 900 101', '2019-03-15', 1, 2),
('James',   'Patel',    'jpatel@sunnyside.co.uk',    '07700 900 102', '2020-06-01', 1, 1),
('Emily',   'Clarke',   'eclarke@sunnyside.co.uk',   '07700 900 103', '2021-01-10', 2, 1),
('David',   'Thompson', 'dthompson@sunnyside.co.uk', '07700 900 104', '2018-09-20', 2, 2),
('Laura',   'Bennett',  'lbennett@sunnyside.co.uk',  '07700 900 105', '2022-04-05', 3, 1),
('Michael', 'Okonkwo',  'mokonkwo@sunnyside.co.uk',  '07700 900 106', '2017-11-30', 4, 3),
('Rachel',  'Hughes',   'rhughes@sunnyside.co.uk',   '07700 900 107', '2023-02-14', 4, 1),
('Tom',     'Sanders',  'tsanders@sunnyside.co.uk',  '07700 900 108', '2021-07-22', 5, 1),
('Nina',    'Kaur',     'nkaur@sunnyside.co.uk',     '07700 900 109', '2020-03-18', 5, 2),
('Oliver',  'Walsh',    'owalsh@sunnyside.co.uk',    '07700 900 110', '2024-01-08', 1, 4);

INSERT INTO customer (first_name, last_name, email, phone, address, dob) VALUES
('Alice',     'Johnson',  'alice.johnson@email.com',   '07800 100 001', '12 Oak Lane, Portsmouth, PO3 5TT',      '1985-07-23'),
('Ben',       'Walker',   'ben.walker@email.com',      '07800 100 002', '45 Elm Street, Southampton, SO17 1QP',  '1990-02-14'),
('Charlotte', 'Adams',    'charlotte.adams@email.com', '07800 100 003', '8 Rose Avenue, Brighton, BN3 2GH',     '1978-11-30'),
('Daniel',    'Evans',    'daniel.evans@email.com',    '07800 100 004', '23 Pine Road, London, SW1A 1AA',       '1995-04-05'),
('Eleanor',   'Turner',   'eleanor.turner@email.com',  '07800 100 005', '67 Birch Close, Birmingham, B15 2TT',  '1982-09-17'),
('Frank',     'Morrison', 'frank.morrison@email.com',  '07800 100 006', '3 Willow Way, Portsmouth, PO1 4RT',    '1970-06-28'),
('Grace',     'Singh',    'grace.singh@email.com',     '07800 100 007', '19 Maple Drive, Southampton, SO14 2LN','1992-12-09'),
('Harry',     'OBrien',   'harry.obrien@email.com',    '07800 100 008', '55 Cedar Road, Brighton, BN2 5AF',     '1988-03-21'),
('Isla',      'Murray',   'isla.murray@email.com',     '07800 100 009', '7 Ash Grove, London, W1D 6PA',         '2000-01-15'),
('Jack',      'Cooper',   'jack.cooper@email.com',     '07800 100 010', '34 Poplar Street, Birmingham, B1 1BB', '1975-08-04'),
('Karen',     'Davies',   'karen.davies@email.com',    '07800 100 011', '11 Elm Close, Portsmouth, PO4 8SY',    '1983-05-19'),
('Liam',      'Stewart',  'liam.stewart@email.com',    '07800 100 012', '88 Oakwood Ave, Southampton, SO15 5PQ','1997-10-31'),
('Mia',       'Roberts',  'mia.roberts@email.com',     '07800 100 013', '4 Hazel Court, Brighton, BN1 6JL',    '1991-07-07'),
('Nathan',    'Harris',   'nathan.harris@email.com',   '07800 100 014', '22 Sycamore Rd, London, EC1A 1BB',    '1986-02-26'),
('Olivia',    'Green',    'olivia.green@email.com',    '07800 100 015', '60 Beech Lane, Birmingham, B4 7DQ',   '1994-11-12');

INSERT INTO partner (partner_name, partner_type, contact_name, contact_email, contact_phone, address) VALUES
('Hotel Gold Sun',        'Hotel',     'Marco Rossi',        'marco@goldsun.es',        '+34 922 111 222', 'Playa de las Americas, Tenerife'),
('Palma Bay Resort',      'Hotel',     'Clara Moreno',       'clara@palmabay.es',        '+34 971 333 444', 'Palma de Mallorca, Spain'),
('Algarve Sands Hotel',   'Hotel',     'Jorge Ferreira',     'jorge@algarvesands.pt',   '+351 289 555 666','Albufeira, Algarve, Portugal'),
('Lanzarote Vista Hotel', 'Hotel',     'Maria Lopez',        'maria@lanzarotevista.es', '+34 928 777 888', 'Puerto del Carmen, Lanzarote'),
('Crete Blue Palace',     'Hotel',     'Nikos Papadopoulos', 'nikos@bluepalace.gr',     '+30 2810 999 000','Elounda, Crete, Greece'),
('TravelSafe Insurance',  'Insurance', 'Helen Ford',         'helen@travelsafe.co.uk',  '0800 111 2233',   '10 Finsbury Square, London'),
('WorldCover Insurance',  'Insurance', 'Paul Chang',         'paul@worldcover.co.uk',   '0800 444 5566',   '55 Queen Victoria St, London'),
('Ibiza Party Resort',    'Resort',    'Carlos Diaz',        'carlos@ibizaparty.es',    '+34 971 100 200', 'San Antonio, Ibiza, Spain');

INSERT INTO hotel (partner_id, hotel_name, location, country, star_rating) VALUES
(1, 'Hotel Gold Sun',        'Playa de las Americas', 'Spain',    4),
(2, 'Palma Bay Resort',      'Palma de Mallorca',     'Spain',    5),
(3, 'Algarve Sands Hotel',   'Albufeira',             'Portugal', 4),
(4, 'Lanzarote Vista Hotel', 'Puerto del Carmen',     'Spain',    3),
(5, 'Crete Blue Palace',     'Elounda',               'Greece',   5),
(8, 'Ibiza Party Resort',    'San Antonio',           'Spain',    4);

INSERT INTO flight (airline, origin_airport, dest_airport, departure_time, duration_hours) VALUES
('EasyJet',         'LGW', 'TFS', '06:30', 4.5),
('Jet2',            'MAN', 'PMI', '07:15', 2.5),
('Ryanair',         'STN', 'FAO', '08:00', 2.5),
('British Airways', 'LHR', 'ACE', '09:00', 4.0),
('TUI Airways',     'BHX', 'HER', '10:30', 3.5),
('EasyJet',         'LGW', 'IBZ', '11:00', 2.5),
('Jet2',            'LBA', 'TFS', '05:45', 4.5),
('Ryanair',         'BRS', 'PMI', '13:00', 2.5);

INSERT INTO package (package_name, hotel_id, flight_id, destination, duration_days, price_per_person, is_active) VALUES
('7 Days Tenerife - Hotel Gold Sun',      1, 1, 'Tenerife',  7,   899.00, TRUE),
('10 Days Mallorca - Palma Bay Resort',   2, 2, 'Mallorca',  10, 1299.00, TRUE),
('14 Days Algarve - Algarve Sands Hotel', 3, 3, 'Algarve',  14, 1499.00, TRUE),
('7 Days Lanzarote - Vista Hotel',        4, 4, 'Lanzarote',  7,  749.00, TRUE),
('10 Days Crete - Blue Palace',           5, 5, 'Crete',     10, 1649.00, TRUE),
('7 Days Ibiza - Party Resort',           6, 6, 'Ibiza',      7,  799.00, TRUE),
('14 Days Tenerife - Hotel Gold Sun',     1, 7, 'Tenerife',  14, 1599.00, TRUE),
('7 Days Mallorca - Palma Bay Resort',    2, 8, 'Mallorca',   7,  949.00, TRUE);

INSERT INTO insurance (partner_id, policy_name, price_per_person, coverage_details) VALUES
(6, 'Essential Cover',  29.99, 'Basic cancellation, medical up to 1m, baggage up to 500'),
(6, 'Premium Cover',    59.99, 'Full cancellation, medical unlimited, baggage up to 2000'),
(7, 'WorldCover Basic', 24.99, 'Medical up to 500k, cancellation up to 1000'),
(7, 'WorldCover Plus',  49.99, 'Medical unlimited, full cancellation, gadget cover');

INSERT INTO booking (customer_id, employee_id, branch_id, package_id, insurance_id, booking_date, travel_date, return_date, num_adults, num_children, total_cost, booking_status) VALUES
(1,  2, 1, 1, 1,    '2025-11-01', '2026-06-01', '2026-06-08',  2, 0,  1857.98, 'Confirmed'),
(2,  3, 2, 2, 2,    '2025-10-15', '2026-07-10', '2026-07-20',  2, 2,  5515.96, 'Confirmed'),
(3,  5, 3, 3, NULL, '2025-12-01', '2026-08-01', '2026-08-15',  2, 1,  4497.00, 'Confirmed'),
(4,  7, 4, 5, 2,    '2026-01-10', '2026-09-05', '2026-09-15',  1, 0,  1708.99, 'Confirmed'),
(5,  8, 5, 4, 1,    '2025-09-20', '2026-05-15', '2026-05-22',  2, 2,  3145.96, 'Completed'),
(6,  2, 1, 6, NULL, '2025-11-25', '2026-06-20', '2026-06-27',  3, 0,  2397.00, 'Confirmed'),
(7,  3, 2, 7, 1,    '2026-02-01', '2026-10-01', '2026-10-15',  2, 3,  8094.95, 'Confirmed'),
(8,  5, 3, 1, 3,    '2026-01-20', '2026-07-01', '2026-07-08',  2, 0,  1873.97, 'Confirmed'),
(9,  9, 5, 2, 4,    '2026-03-05', '2026-08-20', '2026-08-30',  1, 0,  1348.99, 'Confirmed'),
(10, 4, 2, 5, 2,    '2025-08-01', '2025-12-27', '2026-01-06',  2, 1,  5246.97, 'Completed'),
(11, 2, 1, 8, 1,    '2026-01-15', '2026-07-25', '2026-08-01',  2, 0,  1957.98, 'Confirmed'),
(12, 6, 4, 3, NULL, '2026-02-10', '2026-09-10', '2026-09-24',  4, 2,  8994.00, 'Confirmed'),
(13, 1, 1, 4, 1,    '2025-10-01', '2026-04-10', '2026-04-17',  2, 0,  1557.98, 'Completed'),
(14, 7, 4, 6, 2,    '2026-03-15', '2026-08-05', '2026-08-12',  2, 2,  3395.96, 'Confirmed'),
(15, 8, 5, 7, 4,    '2026-04-01', '2026-11-01', '2026-11-15',  2, 1,  5346.97, 'Confirmed');

INSERT INTO payment (booking_id, payment_date, amount_paid, payment_status, instalment_number) VALUES
(1,  '2025-11-01',  928.99, 'Paid',   1),
(1,  '2026-03-01',  928.99, 'Paid',   2),
(2,  '2025-10-15', 1838.65, 'Paid',   1),
(2,  '2026-01-15', 1838.65, 'Paid',   2),
(2,  '2026-05-15', 1838.66, 'Unpaid', 3),
(3,  '2025-12-01', 2248.50, 'Paid',   1),
(3,  '2026-04-01', 2248.50, 'Unpaid', 2),
(4,  '2026-01-10', 1708.99, 'Paid',   1),
(5,  '2025-09-20', 1572.98, 'Paid',   1),
(5,  '2026-01-20', 1572.98, 'Paid',   2),
(6,  '2025-11-25', 2397.00, 'Paid',   1),
(7,  '2026-02-01', 2698.32, 'Paid',   1),
(7,  '2026-05-01', 2698.32, 'Unpaid', 2),
(7,  '2026-08-01', 2698.31, 'Unpaid', 3),
(8,  '2026-01-20', 1873.97, 'Paid',   1),
(9,  '2026-03-05', 1348.99, 'Paid',   1),
(10, '2025-08-01', 2623.49, 'Paid',   1),
(10, '2025-10-01', 2623.48, 'Paid',   2),
(11, '2026-01-15',  978.99, 'Paid',   1),
(11, '2026-04-15',  978.99, 'Unpaid', 2),
(12, '2026-02-10', 4497.00, 'Paid',   1),
(12, '2026-06-10', 4497.00, 'Unpaid', 2),
(13, '2025-10-01', 1557.98, 'Paid',   1),
(14, '2026-03-15', 1697.98, 'Paid',   1),
(14, '2026-06-15', 1697.98, 'Unpaid', 2),
(15, '2026-04-01', 2673.49, 'Paid',   1),
(15, '2026-07-01', 2673.48, 'Unpaid', 2);