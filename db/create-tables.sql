CREATE TABLE branch (
    branch_id      SERIAL PRIMARY KEY,
    branch_name    VARCHAR(100) NOT NULL,
    branch_city    VARCHAR(60)  NOT NULL,
    branch_address VARCHAR(200) NOT NULL,
    branch_phone   VARCHAR(20)  NOT NULL,
    branch_email   VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE role (
    role_id           SERIAL PRIMARY KEY,
    role_name         VARCHAR(50) NOT NULL UNIQUE,
    can_view_payments BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) NOT NULL UNIQUE,
    phone       VARCHAR(20)  NOT NULL,
    hire_date   DATE         NOT NULL,
    branch_id   INTEGER      NOT NULL REFERENCES branch(branch_id),
    role_id     INTEGER      NOT NULL REFERENCES role(role_id)
);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name  VARCHAR(50)  NOT NULL,
    last_name   VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) NOT NULL UNIQUE,
    phone       VARCHAR(20),
    address     VARCHAR(250),
    dob         DATE,
    created_at  TIMESTAMP DEFAULT NOW()
);

CREATE TABLE partner (
    partner_id    SERIAL PRIMARY KEY,
    partner_name  VARCHAR(100) NOT NULL,
    partner_type  VARCHAR(50)  NOT NULL CHECK (partner_type IN ('Hotel','Insurance','Resort','Other')),
    contact_name  VARCHAR(100),
    contact_email VARCHAR(100),
    contact_phone VARCHAR(20),
    address       VARCHAR(250)
);

CREATE TABLE hotel (
    hotel_id    SERIAL PRIMARY KEY,
    partner_id  INTEGER      NOT NULL REFERENCES partner(partner_id),
    hotel_name  VARCHAR(100) NOT NULL,
    location    VARCHAR(100) NOT NULL,
    country     VARCHAR(60)  NOT NULL,
    star_rating SMALLINT CHECK (star_rating BETWEEN 1 AND 5)
);

CREATE TABLE flight (
    flight_id      SERIAL PRIMARY KEY,
    airline        VARCHAR(80)  NOT NULL,
    origin_airport VARCHAR(10)  NOT NULL,
    dest_airport   VARCHAR(10)  NOT NULL,
    departure_time TIME         NOT NULL,
    duration_hours NUMERIC(4,1) NOT NULL CHECK (duration_hours > 0)
);

CREATE TABLE package (
    package_id       SERIAL PRIMARY KEY,
    package_name     VARCHAR(150) NOT NULL,
    hotel_id         INTEGER      NOT NULL REFERENCES hotel(hotel_id),
    flight_id        INTEGER      NOT NULL REFERENCES flight(flight_id),
    destination      VARCHAR(100) NOT NULL,
    duration_days    SMALLINT     NOT NULL CHECK (duration_days > 0),
    price_per_person NUMERIC(8,2) NOT NULL CHECK (price_per_person > 0),
    is_active        BOOLEAN DEFAULT TRUE
);

CREATE TABLE insurance (
    insurance_id     SERIAL PRIMARY KEY,
    partner_id       INTEGER      NOT NULL REFERENCES partner(partner_id),
    policy_name      VARCHAR(100) NOT NULL,
    price_per_person NUMERIC(6,2) NOT NULL CHECK (price_per_person >= 0),
    coverage_details TEXT
);

CREATE TABLE booking (
    booking_id     SERIAL PRIMARY KEY,
    customer_id    INTEGER       NOT NULL REFERENCES customer(customer_id),
    employee_id    INTEGER       NOT NULL REFERENCES employee(employee_id),
    branch_id      INTEGER       NOT NULL REFERENCES branch(branch_id),
    package_id     INTEGER       NOT NULL REFERENCES package(package_id),
    insurance_id   INTEGER       REFERENCES insurance(insurance_id),
    booking_date   DATE          NOT NULL DEFAULT CURRENT_DATE,
    travel_date    DATE          NOT NULL,
    return_date    DATE          NOT NULL,
    num_adults     SMALLINT      NOT NULL CHECK (num_adults >= 1),
    num_children   SMALLINT      NOT NULL DEFAULT 0 CHECK (num_children >= 0),
    total_cost     NUMERIC(10,2) NOT NULL CHECK (total_cost > 0),
    booking_status VARCHAR(10)   NOT NULL DEFAULT 'Confirmed'
                   CHECK (booking_status IN ('Confirmed','Cancelled','Completed'))
);

CREATE TABLE payment (
    payment_id        SERIAL PRIMARY KEY,
    booking_id        INTEGER       NOT NULL REFERENCES booking(booking_id),
    payment_date      DATE          NOT NULL,
    amount_paid       NUMERIC(10,2) NOT NULL CHECK (amount_paid > 0),
    payment_status    VARCHAR(10)   NOT NULL CHECK (payment_status IN ('Paid','Unpaid')),
    instalment_number SMALLINT      NOT NULL DEFAULT 1 CHECK (instalment_number >= 1)
);