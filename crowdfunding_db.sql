-- Drop Table Conditions

DROP TABLE IF EXISTS "category";
DROP TABLE IF EXISTS "subcategory";
DROP TABLE IF EXISTS "contacts";
DROP TABLE IF EXISTS "campaign";

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/dnqcDG

CREATE TABLE "category" (
    "category_id" varchar(20)   NOT NULL,
    "category" varchar(20)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(20)   NOT NULL,
    "subcategory" varchar(20)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(40)   NOT NULL,
    "last_name" varchar(40)   NOT NULL,
    "email" varchar(60)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(80)   NOT NULL,
    "description" varchar(120)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(20)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(10)   NOT NULL,
    "currency" varchar(10)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(20)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");


-- Verify successful data import

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;

-- Extra queries for data analysis
-- Category with the most successful/failed campaigns
SELECT category_id, outcome, COUNT(*) AS "Campaign Outcome Counts"
FROM campaign
GROUP BY category_id, outcome
ORDER BY "Campaign Outcome Counts" DESC;

-- Subcategory with the most successful/failed projects
SELECT subcategory_id, outcome, COUNT(*) AS "Campaign Outcome Counts"
FROM campaign
GROUP BY subcategory_id, outcome
ORDER BY "Campaign Outcome Counts" DESC;

-- Category with the highest/lowest sum of pledged amounts
SELECT category_id, SUM(pledged) AS "Total Campaign Pledge Amount"
FROM campaign
GROUP BY category_id
ORDER BY "Total Campaign Pledge Amount" DESC;

-- Top countries with the highest sum of pledged amounts
SELECT country, SUM(pledged) AS "Total Campaign Pledge Amount"
FROM campaign
GROUP BY country
ORDER BY "Total Campaign Pledge Amount" DESC;

--