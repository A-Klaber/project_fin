-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "alt_fuel_2018" (
    "StationName" object   NOT NULL,
    "City" object   NOT NULL,
    "State" object   NOT NULL,
    "ZIP" float64   NOT NULL,
    "GroupsWithAccessCode" object   NOT NULL,
    "Latitude" float64   NOT NULL,
    "Longitude" float64   NOT NULL,
    "OpenDate" object   NOT NULL,
    "county" object   NOT NULL,
    CONSTRAINT "pk_alt_fuel_2018" PRIMARY KEY (
        "StationName"
     )
);

CREATE TABLE "alt_fuel_2019" (
    "StationName" object   NOT NULL,
    "City" object   NOT NULL,
    "State" object   NOT NULL,
    "ZIP" float64   NOT NULL,
    "GroupsWithAccessCode" object   NOT NULL,
    "Latitude" float64   NOT NULL,
    "Longitude" float64   NOT NULL,
    "OpenDate" object   NOT NULL,
    "county" object   NOT NULL,
    CONSTRAINT "pk_alt_fuel_2019" PRIMARY KEY (
        "StationName"
     )
);

CREATE TABLE "alt_fuel_2020" (
    "StationName" object   NOT NULL,
    "City" object   NOT NULL,
    "State" object   NOT NULL,
    "ZIP" float64   NOT NULL,
    "GroupsWithAccessCode" object   NOT NULL,
    "Latitude" float64   NOT NULL,
    "Longitude" float64   NOT NULL,
    "OpenDate" object   NOT NULL,
    "county" object   NOT NULL,
    CONSTRAINT "pk_alt_fuel_2020" PRIMARY KEY (
        "StationName"
     )
);

CREATE TABLE "alt_fuel_2021" (
    "StationName" object   NOT NULL,
    "City" object   NOT NULL,
    "State" object   NOT NULL,
    "ZIP" float64   NOT NULL,
    "GroupsWithAccessCode" object   NOT NULL,
    "Latitude" float64   NOT NULL,
    "Longitude" float64   NOT NULL,
    "OpenDate" object   NOT NULL,
    "county" object   NOT NULL,
    CONSTRAINT "pk_alt_fuel_2021" PRIMARY KEY (
        "StationName"
     )
);

CREATE TABLE "fl_reg_2018" (
    "DMVID" int64   NOT NULL,
    "DMVSnapshotDate" object   NOT NULL,
    "County" object   NOT NULL,
    "RegistrationDate" float64   NOT NULL,
    CONSTRAINT "pk_fl_reg_2018" PRIMARY KEY (
        "DMVID"
     )
);

CREATE TABLE "fl_reg_2019" (
    "DMVID" int64   NOT NULL,
    "DMVSnapshotDate" object   NOT NULL,
    "County" object   NOT NULL,
    "RegistrationDate" float64   NOT NULL,
    CONSTRAINT "pk_fl_reg_2019" PRIMARY KEY (
        "DMVID"
     )
);

CREATE TABLE "fl_reg_2020" (
    "DMVID" int64   NOT NULL,
    "DMVSnapshotDate" object   NOT NULL,
    "County" object   NOT NULL,
    "RegistrationDate" float64   NOT NULL,
    CONSTRAINT "pk_fl_reg_2020" PRIMARY KEY (
        "DMVID"
     )
);

CREATE TABLE "fl_reg_2021" (
    "DMVID" int64   NOT NULL,
    "DMVSnapshotDate" object   NOT NULL,
    "County" object   NOT NULL,
    "RegistrationDate" float64   NOT NULL,
    CONSTRAINT "pk_fl_reg_2021" PRIMARY KEY (
        "DMVID"
     )
);

CREATE TABLE "StateRegistration" (
    "State" object   NOT NULL,
    "RegistrationCount" int64   NOT NULL
);

ALTER TABLE "alt_fuel_2018" ADD CONSTRAINT "fk_alt_fuel_2018_OpenDate_county" FOREIGN KEY("OpenDate", "county")
REFERENCES "alt_fuel_2019" ("OpenDate", "county");

ALTER TABLE "alt_fuel_2019" ADD CONSTRAINT "fk_alt_fuel_2019_OpenDate" FOREIGN KEY("OpenDate")
REFERENCES "alt_fuel_2019" ("OpenDate");

ALTER TABLE "alt_fuel_2019" ADD CONSTRAINT "fk_alt_fuel_2019_county" FOREIGN KEY("county")
REFERENCES "alt_fuel_2020" ("county");

ALTER TABLE "alt_fuel_2020" ADD CONSTRAINT "fk_alt_fuel_2020_OpenDate" FOREIGN KEY("OpenDate")
REFERENCES "alt_fuel_2019" ("OpenDate");

ALTER TABLE "alt_fuel_2020" ADD CONSTRAINT "fk_alt_fuel_2020_county" FOREIGN KEY("county")
REFERENCES "alt_fuel_2021" ("county");

ALTER TABLE "alt_fuel_2021" ADD CONSTRAINT "fk_alt_fuel_2021_OpenDate" FOREIGN KEY("OpenDate")
REFERENCES "alt_fuel_2019" ("OpenDate");

ALTER TABLE "alt_fuel_2021" ADD CONSTRAINT "fk_alt_fuel_2021_county" FOREIGN KEY("county")
REFERENCES "alt_fuel_2018" ("county");

ALTER TABLE "fl_reg_2018" ADD CONSTRAINT "fk_fl_reg_2018_County_RegistrationDate" FOREIGN KEY("County", "RegistrationDate")
REFERENCES "fl_reg_2019" ("County", "RegistrationDate");

ALTER TABLE "fl_reg_2019" ADD CONSTRAINT "fk_fl_reg_2019_County_RegistrationDate" FOREIGN KEY("County", "RegistrationDate")
REFERENCES "fl_reg_2020" ("County", "RegistrationDate");

ALTER TABLE "fl_reg_2020" ADD CONSTRAINT "fk_fl_reg_2020_County_RegistrationDate" FOREIGN KEY("County", "RegistrationDate")
REFERENCES "fl_reg_2021" ("County", "RegistrationDate");

ALTER TABLE "fl_reg_2021" ADD CONSTRAINT "fk_fl_reg_2021_County" FOREIGN KEY("County")
REFERENCES "fl_reg_2018" ("County");

ALTER TABLE "fl_reg_2021" ADD CONSTRAINT "fk_fl_reg_2021_RegistrationDate" FOREIGN KEY("RegistrationDate")
REFERENCES "fl_reg_2021" ("RegistrationDate");

