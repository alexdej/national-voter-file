
  
  ALTER TABLE VOTER_REPORT_FACT ADD CONSTRAINT county_key_fk FOREIGN KEY (COUNTY_KEY) REFERENCES COUNTY_DIM(COUNTY_ID);
  
  alter table VOTER_REPORT_FACT drop column congressional_district_key;
  alter table VOTER_REPORT_FACT drop column state_house_district_key;
  alter table VOTER_REPORT_FACT drop column senate_district_key;
  
  ALTER TABLE VOTER_REPORT_FACT ADD COLUMN CONGRESSIONAL_DIST_KEY INTEGER NULL REFERENCES CONGRESSIONAL_DIST_DIM(CONGRESSIONAL_DIST_ID);
  
  ALTER TABLE VOTER_REPORT_FACT ADD COLUMN     LOWER_HOUSE_DIST_KEY	INTEGER NULL REFERENCES LOWER_HOUSE_DIST_DIM(LOWER_HOUSE_DIST_ID);
  ALTER TABLE VOTER_REPORT_FACT ADD COLUMN     UPPER_HOUSE_DIST_KEY	INTEGER NULL REFERENCES UPPER_HOUSE_DIST_DIM(UPPER_HOUSE_DIST_ID) ;

