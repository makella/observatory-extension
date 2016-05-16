# Glossary

A list of boundary ids and measure_names for Data Observatory functions. For US based boundaries, the Shoreline Clipped version provides a high-quality shoreline clipping for mapping uses. 

## Boundary IDs

Boundary name | Boundary ID | Shoreline Clipped Boundary ID
--------------------- | --------------------- | ---
US States  |  us.census.tiger.state  |  us.census.tiger.state_clipped
US County  |  us.census.tiger.county  |  us.census.tiger.county_clipped
US Census Zip Code Tabulation Areas  |  us.census.tiger.zcta5  |  us.census.tiger.zcta5_clipped
US Census Tracts  |  us.census.tiger.census_tract  |  us.census.tiger.census_tract_clipped
US Elementary School District  |  us.census.tiger.school_district_elementary  |  us.census.tiger.school_district_elementary_clipped
US Secondary School District  |  us.census.tiger.school_district_secondary  |  us.census.tiger.school_district_secondary_clipped
US Unified School District  |  us.census.tiger.school_district_unified  |  us.census.tiger.school_district_unified_clipped
US Congressional Districts  |  us.census.tiger.congressional_district  |  us.census.tiger.congressional_district_clipped
US Census Blocks  |  us.census.tiger.block  |  us.census.tiger.block_clipped
US Census Block Groups  |  us.census.tiger.block_group  |  us.census.tiger.block_group_clipped
US Census PUMAs  |  us.census.tiger.puma  |  us.census.tiger.puma_clipped
US Incorporated Places  |  us.census.tiger.place  |  us.census.tiger.place_clipped
ES Sección Censal  |  es.ine.geom  |
Regions (First-level Administrative)  |  whosonfirst.wof_region_geom  |
Continents  |  whosonfirst.wof_continent_geom  |
Countries  |  whosonfirst.wof_country_geom  |
Marine Areas  |  whosonfirst.wof_marinearea_geom  |
Disputed Areas  |  whosonfirst.wof_disputed_geom  |



## OBS_GetUSCensusMeasure Names Table

This list contains human readable names accepted in the ```OBS_GetUSCensusMeasure``` function. For the more comprehensive list of columns available to the ```OBS_GetMeasure``` function, see the [Data Observatory Catalog](https://cartodb.github.io/bigmetadata/observatory.pdf).

Measure name   |  Measure description
------------------------ | ---
Male Population   |   The number of people within each geography who are male.
Female Population   |   The number of people within each geography who are female.
Median Age   |   The median age of all people in a given geographic area.
Total Population   |   The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates.
Population not Hispanic   |   The number of people not identifying as Hispanic or Latino in each geography.
White Population   |   The number of people identifying as white, non-Hispanic in each geography.
Black or African American Population   |   The number of people identifying as black or African American, non-Hispanic in each geography.
American Indian and Alaska Native Population   |   The number of people identifying as American Indian or Alaska native in each geography.
Asian Population   |   The number of people identifying as Asian, non-Hispanic in each geography.
Other Race population   |   The number of people identifying as another race in each geography
Two or more races population   |   The number of people identifying as two or more races in each geography
Hispanic Population   |   The number of people identifying as Hispanic or Latino in each geography.
Not a U.S. Citizen Population   |   The number of people within each geography who indicated that they are not U.S. citizens.
Workers over the Age of 16   |   The number of people in each geography who work. Workers include those employed at private for-profit companies, the self-employed, government workers and non-profit employees.
Commuters by Car, Truck, or Van   |   The number of workers age 16 years and over within  a geographic area who primarily traveled to work by car, truck or  van.  This is the principal mode of travel or type of conveyance,  by distance rather than time, that the worker usually used to get  from home to work.
Commuters who drove alone   |   The number of workers age 16 years and over within a geographic area who primarily traveled by car driving alone. This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work.
Commuters by Carpool   |   The number of workers age 16 years and over within a geographic area who primarily traveled to work by carpool.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work.
Commuters by Bus   |   The number of workers age 16 years and over within a geographic area who primarily traveled to work by bus.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work.  This is a subset of workers who commuted by public transport.
Commuters by Subway or Elevated   |   The number of workers age 16 years and over within a geographic area who primarily traveled to work by subway or elevated train.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work.  This is a subset of workers who commuted by public transport.
Walked to Work   |   The number of workers age 16 years and over within a geographic area who primarily walked to work.  This would mean that of any way of getting to work, they travelled the most distance walking.
Worked at Home   |   The count within a geographical area of workers over the age of 16 who worked at home.
Workers age 16 and over who do not work from home   |   The number of workers over the age of 16 who do not work from home in a geographic area
Number of workers with less than 10 minute commute   |   The number of workers over the age of 16 who do not work from home and commute in less than 10 minutes in a geographic area
Number of workers with a commute between 35 and 44 minutes   |   The number of workers over the age of 16 who do not work from home and commute in between 35 and 44 minutes in a geographic area
Number of workers with a commute of over 60 minutes   |   The number of workers over the age of 16 who do not work from home and commute in over 60 minutes in a geographic area
Aggregate travel time to work   |   The total number of minutes every worker over the age of 16 who did not work from home spent spent commuting to work in one day in a geographic area
Commuters by Public Transportation   |   The number of workers age 16 years and over within a geographic area who primarily traveled to work by public transportation.  This is the principal mode of travel or type of conveyance, by distance rather than time, that the worker usually used to get from home to work.
Number of workers with a commute between 10 and 14 minutes   |   The number of workers over the age of 16 who do not work from home and commute in between 10 and 14 minutes in a geographic area
Number of workers with a commute between 15 and 19 minutes   |   The number of workers over the age of 16 who do not work from home and commute in between 15 and 19 minutes in a geographic area
Number of workers with a commute between 20 and 24 minutes   |   The number of workers over the age of 16 who do not work from home and commute in between 20 and 24 minutes in a geographic area
Number of workers with a commute between 25 and 29 minutes   |   The number of workers over the age of 16 who do not work from home and commute in between 25 and 29 minutes in a geographic area
Number of workers with a commute between 30 and 34 minutes   |   The number of workers over the age of 16 who do not work from home and commute in between 30 and 34 minutes in a geographic area
Number of workers with a commute between 45 and 59 minutes   |   The number of workers over the age of 16 who do not work from home and commute in between 45 and 59 minutes in a geographic area
Children under 18 Years of Age   |   The number of people within each geography who are under 18 years of age.
Households   |   A count of the number of households in each geography. A household consists of one or more people who live in the same dwelling and also share at meals or living accommodation, and may consist of a single family or some other grouping of people. 
Population 15 Years and Over   |   The number of people in a geographic area who are over the age of 15.  This is used mostly as a denominator of marital status.
Never Married   |   The number of people in a geographic area who have never been married.
Currently married   |   The number of people in a geographic area who are currently married
Married but separated   |   The number of people in a geographic area who are married but separated
Widowed   |   The number of people in a geographic area who are widowed
Divorced   |   The number of people in a geographic area who are divorced
Population 3 Years and Over   |   The total number of people in each geography age 3 years and over.  This denominator is mostly used to calculate rates of school enrollment.
Students Enrolled in School   |   The total number of people in each geography currently enrolled at any level of school, from nursery or pre-school to advanced post-graduate education.  Only includes those over the age of 3.
Students Enrolled in Grades 1 to 4   |   The total number of people in each geography currently enrolled in grades 1 through 4 inclusive.  This corresponds roughly to elementary school.
Students Enrolled in Grades 5 to 8   |   The total number of people in each geography currently enrolled in grades 5 through 8 inclusive.  This corresponds roughly to middle school.
Students Enrolled in Grades 9 to 12   |   The total number of people in each geography currently enrolled in grades 9 through 12 inclusive.  This corresponds roughly to high school.
Students Enrolled as Undergraduate in College   |   The number of people in a geographic area who are enrolled in college at the undergraduate level. Enrollment refers to being registered or listed as a student in an educational program leading to a college degree. This may be a public school or college, a private school or college.
Population 25 Years and Over   |   The number of people in a geographic area who are over the age of 25.  This is used mostly as a denominator of educational attainment.
Population Completed High School   |   The number of people in a geographic area over the age of 25 who completed high school, and did not complete a more advanced degree.
Population completed less than one year of college, no degree   |   The number of people in a geographic area over the age of 25 who attended college for less than one year and no further.
Population completed more than one year of college, no degree   |   The number of people in a geographic area over the age of 25 who attended college for more than one year but did not obtain a degree
Population Completed Associate's Degree   |   The number of people in a geographic area over the age of 25 who obtained a associate's degree, and did not complete a more advanced degree.
Population Completed Bachelor's Degree   |   The number of people in a geographic area over the age of 25 who obtained a bachelor's degree, and did not complete a more advanced degree.
Population Completed Master's Degree   |   The number of people in a geographic area over the age of 25 who obtained a master's degree, but did not complete a more advanced degree.
Population 5 Years and Over   |   The number of people in a geographic area who are over the age of 5.  This is primarily used as a denominator of measures of language spoken at home.
Speaks only English at Home   |   The number of people in a geographic area over age 5 who speak only English at home.
Speaks Spanish at Home   |   The number of people in a geographic area over age 5 who speak Spanish at home, possibly in addition to other languages.
Population for Whom Poverty Status Determined   |   The number of people in each geography who could be identified as either living in poverty or not.  This should be used as the denominator when calculating poverty rates, as it excludes people for whom it was not possible to determine poverty.
Income In The Past 12 Months Below Poverty Level   |   The number of people in a geographic area who are part of a family (which could be just them as an individual) determined to be in poverty following the Office of Management and Budget's Directive 14. (https://www.census.gov/hhes/povmeas/methodology/ombdir14.html)
Households with income less than $10,000   |   The number of households in a geographic area whose annual income was less than $10,000.
Households with income of $10,000 to $14,999   |   The number of households in a geographic area whose annual income was between $10,000 and $14,999.
Households with income of $15,000 to $19,999   |   The number of households in a geographic area whose annual income was between $15,000 and $19,999.
Households with income of $20,000 To $24,999   |   The number of households in a geographic area whose annual income was between $20,000 and $24,999.
Households with income of $25,000 To $29,999   |   The number of households in a geographic area whose annual income was between $20,000 and $24,999.
Households with income of $30,000 To $34,999   |   The number of households in a geographic area whose annual income was between $30,000 and $34,999.
Households with income of $35,000 To $39,999   |   The number of households in a geographic area whose annual income was between $35,000 and $39,999.
Households with income of $40,000 To $44,999   |   The number of households in a geographic area whose annual income was between $40,000 and $44,999.
Households with income of $45,000 To $49,999   |   The number of households in a geographic area whose annual income was between $45,000 and $49,999.
Households with income of $50,000 To $59,999   |   The number of households in a geographic area whose annual income was between $50,000 and $59,999.
Households with income of $60,000 To $74,999   |   The number of households in a geographic area whose annual income was between $60,000 and $74,999.
Households with income of $75,000 To $99,999   |   The number of households in a geographic area whose annual income was between $75,000 and $99,999.
Households with income of $100,000 To $124,999   |   The number of households in a geographic area whose annual income was between $100,000 and $124,999.
Households with income of $125,000 To $149,999   |   The number of households in a geographic area whose annual income was between $125,000 and $149,999.
Households with income of $150,000 To $199,999   |   The number of households in a geographic area whose annual income was between $150,000 and $1999,999.
Households with income of $200,000 Or More   |   The number of households in a geographic area whose annual income was more than $200,000.
Median Household Income in the past 12 Months   |   Within a geographic area, the median income received by every household on a regular basis before payments for personal income taxes, social security, union dues, medicare deductions, etc.  It includes income received from wages, salary, commissions, bonuses, and tips; self-employment income from own nonfarm or farm businesses, including proprietorships and partnerships; interest, dividends, net rental income, royalty income, or income from estates and trusts; Social Security or Railroad Retirement income; Supplemental Security Income (SSI); any cash public assistance or welfare payments from the state or local welfare office; retirement, survivor, or disability benefits; and any other sources of income received regularly such as Veterans' (VA) payments, unemployment and/or worker's compensation, child support, and alimony.
Population age 16 and over   |   The number of people in each geography who are age 16 or over.
Population in Labor Force   |   The number of people in each geography who are either in the civilian labor force or are members of the U.S. Armed Forces (people on active duty with the United States Army, Air Force, Navy, Marine Corps, or Coast Guard).
Population in Civilian Labor Force   |   The number of civilians 16 years and over in each geography who can be classified as either employed or unemployed below.
Employed Population   |   The number of civilians 16 years old and over in each geography who either (1) were at work, that is, those who did any work at all during the reference week as paid employees, worked in their own business or profession, worked on their own farm, or worked 15 hours or more as unpaid workers on a family farm or in a family business; or (2) were with a job but not at work, that is, those who did not work during the reference week but had jobs or businesses from which they were temporarily absent due to illness, bad weather, industrial dispute, vacation, or other personal reasons. Excluded from the employed are people whose only activity consisted of work around the house or unpaid volunteer work for religious, charitable, and similar organizations; also excluded are all institutionalized people and people on active duty in the United States Armed Forces.
Unemployed Population   |   The number of civilians in each geography who are 16 years old and over and are classified as unemployed
Population in Armed Forces   |   The number of people in each geography who are members of the U.S. Armed Forces (people on active duty with the United States Army, Air Force, Navy, Marine Corps, or Coast Guard).
Population Not in Labor Force   |   The number of people in each geography who are 16 years old and over who are not classified as members of the labor force. This category consists mainly of students, homemakers, retired workers, seasonal workers interviewed in an off season who were not looking for work, institutionalized people, and people doing only incidental unpaid family work.
Housing Units   |   A count of housing units in each geography.  A housing unit is a house, an apartment, a mobile home or trailer, a group of rooms, or a single room occupied as separate living quarters, or if vacant, intended for occupancy as separate living quarters.
Vacant Housing Units   |   The count of vacant housing units in a geographic area. A housing unit is vacant if no one is living in it at the time of enumeration, unless its occupants are only temporarily absent. Units temporarily occupied at the time of enumeration entirely by people who have a usual residence elsewhere are also classified as vacant.
Vacant Housing Units for Rent   |   The count of vacant housing units in a geographic area that are for rent. A housing unit is vacant if no one is living in it at the time of enumeration, unless its occupants are only temporarily absent. Units temporarily occupied at the time of enumeration entirely by people who have a usual residence elsewhere are also classified as vacant.
Vacant Housing Units for Sale   |   The count of vacant housing units in a geographic area that are for sale. A housing unit is vacant if no one is living in it at the time of enumeration, unless its occupants are only temporarily absent. Units temporarily occupied at the time of enumeration entirely by people who have a usual residence elsewhere are also classified as vacant.
Median Rent   |   The median contract rent within a geographic area. The contract rent is the monthly rent agreed to or contracted for, regardless of any furnishings, utilities, fees, meals, or services that may be included. For vacant units, it is the monthly rent asked for the rental unit at the time of interview.
Percent of Household Income Spent on Rent   |   Within a geographic area, the median percentage of household income which was spent on gross rent.  Gross rent is the amount of the contract rent plus the estimated average monthly cost of utilities (electricity, gas, water, sewer etc.) and fuels (oil, coal, wood, etc.) if these are paid by the renter.  Household income is the sum of the income of all people 15 years and older living in the household.
Owner-occupied Housing Units valued at $1,000,000 or more.   |   The count of owner occupied housing units in a geographic area that are valued at $1,000,000 or more.  Value is the respondent's estimate of how much the property (house and lot, mobile home and lot, or condominium unit) would sell for if it were for sale.
Owner-occupied Housing Units with a Mortgage   |   The count of housing units within a geographic area that are mortagaged. Mortgage refers to all forms of debt where the property is pledged as security for repayment of the debt, including deeds of trust, trust deed, contracts to purchase, land contracts, junior mortgages, and home equity loans.