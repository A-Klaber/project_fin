-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/cbMW7k
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "fl_reg_df_by_year" (
    "county" varchar   NOT NULL,
    "2018_Fl_reg" int   NOT NULL,
    "2019_Fl_reg" int   NOT NULL,
    "2020_Fl_reg" int   NOT NULL,
    "2021_Fl_reg" int   NOT NULL,
    CONSTRAINT "pk_fl_reg_df_by_year" PRIMARY KEY (
        "county"
     )
);

CREATE TABLE "station_totals_by_year" (
    "2017" int   NOT NULL,
    "2018" int   NOT NULL,
    "2019" int   NOT NULL,
    "2020" int   NOT NULL,
    "2021" int   NOT NULL,
    "county" varchar   NOT NULL,
    "2018_Total_Stations" int   NOT NULL,
    "2019_Total_Stations" int   NOT NULL,
    "2020_Total_Stations" int   NOT NULL,
    "2021_Total_Stations" int   NOT NULL,
    CONSTRAINT "pk_station_totals_by_year" PRIMARY KEY (
        "county"
     )
);

CREATE TABLE "Full_alt_list_Station" (
    "Station_Name" varchar   NOT NULL,
    "City" varchar   NOT NULL,
    "State" varchar   NOT NULL,
    "ZIP" int   NOT NULL,
    "Access_Code" int   NOT NULL,
    "Latitude" float   NOT NULL,
    "Longitude" float   NOT NULL,
    "Open_Date" int   NOT NULL,
    "county" varchar   NOT NULL,
    CONSTRAINT "pk_Full_alt_list_Station" PRIMARY KEY (
        "Station_Name"
     )
);

ALTER TABLE "fl_reg_df_by_year" ADD CONSTRAINT "fk_fl_reg_df_by_year_county" FOREIGN KEY("county")
REFERENCES "station_totals_by_year" ("2021");

ALTER TABLE "Full_alt_list_Station" ADD CONSTRAINT "fk_Full_alt_list_Station_county" FOREIGN KEY("county")
REFERENCES "station_totals_by_year" ("2021");

