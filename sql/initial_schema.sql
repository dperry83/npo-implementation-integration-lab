CREATE TABLE constituents (
    id          SERIAL NOT NULL PRIMARY KEY UNIQUE,
    name        VARCHAR,
    email       VARCHAR,
    phone       VARCHAR,
    address     VARCHAR,
    create_at   DATE NOT NULL
);

CREATE TABLE attributes (
    id          SERIAL NOT NULL PRIMARY KEY UNIQUE,
    type        VARCHAR NOT NULL,
    name        VARCHAR NOT NULL,
    description VARCHAR
);

CREATE TABLE constituents_attributes (
    constituent_id  INT NOT NULL REFERENCES constituents(id),
    attribute_id    INT NOT NULL REFERENCES attributes(id)
);

CREATE TABLE donations (
    id          SERIAL NOT NULL PRIMARY KEY UNIQUE,
    amount      DECIMAL NOT NULL
    date        DATE NOT NULL
);

CREATE TABLE campaigns (
    id          SERIAL NOT NULL PRIMARY KEY UNIQUE,
    name        VARCHAR NOT NULL UNIQUE,
    goal        DECIMAL,
    start_at    DATE NOT NULL,
    end_at      DATE
);

CREATE TABLE donations_campaigns (
    donation_id     INT NOT NULL REFERENCES donations(id),
    campaign_id     INT NOT NULL REFERENCES campaigns(id)
);

CREATE TABLE interactions (
    id          SERIAL NOT NULL PRIMARY KEY UNIQUE,
    channel     VARCHAR NOT NULL,
    date        DATE NOT NULL,
    content     VARCHAR 
);

CREATE TABLE constituents_interactions (
    constituent_id  INT NOT NULL REFERENCES constituents(id),
    interaction_id  INT NOT NULL REFERENCES interactions(id)
);