CREATE TABLE constituents (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR NOT NULL,
    email       VARCHAR UNIQUE,
    phone       VARCHAR,
    address     VARCHAR,
    created_at   DATE NOT NULL
);

CREATE TABLE attributes (
    id          SERIAL NOT NULL PRIMARY KEY,
    type        VARCHAR NOT NULL,
    name        VARCHAR NOT NULL,
    description VARCHAR
);

CREATE TABLE constituents_attributes (
    constituent_id  INT NOT NULL REFERENCES constituents(id),
    attribute_id    INT NOT NULL REFERENCES attributes(id),
    PRIMARY KEY (constituent_id, attribute_id)
);

CREATE TABLE donations (
    id              SERIAL PRIMARY KEY,
    constituent_id  INT NOT NULL REFERENCES constituents(id),
    campaign_id     INT REFERENCES campaigns(id),
    amount          DECIMAL NOT NULL,
    donated_at      DATE NOT NULL
);

CREATE TABLE campaigns (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR NOT NULL UNIQUE,
    goal        DECIMAL,
    start_at    DATE NOT NULL,
    end_at      DATE
);

-- CREATE TABLE donations_campaigns (
--     donation_id     INT NOT NULL REFERENCES donations(id),
--     campaign_id     INT NOT NULL REFERENCES campaigns(id),
--     PRIMARY KEY (donation_id, campaign_id)
-- );

CREATE TABLE interactions (
    id              SERIAL PRIMARY KEY,
    constituent_id  INT NOT NULL REFERENCES constituents(id),
    channel         VARCHAR NOT NULL,
    happened_on     DATE NOT NULL,
    content         VARCHAR 
);

-- CREATE TABLE constituents_interactions (
--     constituent_id  INT NOT NULL REFERENCES constituents(id),
--     interaction_id  INT NOT NULL REFERENCES interactions(id),
--     PRIMARY KEY (constituent_id, interaction_id)
-- );
