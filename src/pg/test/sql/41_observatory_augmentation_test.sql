\i test/fixtures/load_fixtures.sql
\pset format unaligned
\set ECHO none

--
WITH result as(
  Select count(coalesce(OBS_GetDemographicSnapshot->>'value', 'foo')) expected_columns
  FROM cdb_observatory.OBS_GetDemographicSnapshot(cdb_observatory._TestPoint())
) select expected_columns ='59' as OBS_GetDemographicSnapshot_test_no_returns
FROM result;

--
-- names         | vals
-- --------------|-------
-- median_income | 45122

WITH result as (
  SELECT _OBS_Get::text as expected FROM
  cdb_observatory._OBS_Get(
    cdb_observatory._TestPoint(),
    Array['us.census.acs.B19013001']::text[],
    '2010 - 2014',
    'us.census.tiger.block_group'
  )
) SELECT expected = '{"value":79292,"name":"Median Household Income in the past 12 Months","tablename":"obs_1a098da56badf5f32e336002b0a81708c40d29cd","aggregate":"median","type":"Numeric","description":"Within a geographic area, the median income received by every household on a regular basis before payments for personal income taxes, social security, union dues, medicare deductions, etc.  It includes income received from wages, salary, commissions, bonuses, and tips; self-employment income from own nonfarm or farm businesses, including proprietorships and partnerships; interest, dividends, net rental income, royalty income, or income from estates and trusts; Social Security or Railroad Retirement income; Supplemental Security Income (SSI); any cash public assistance or welfare payments from the state or local welfare office; retirement, survivor, or disability benefits; and any other sources of income received regularly such as Veterans'' (VA) payments, unemployment and/or worker''s compensation, child support, and alimony."}'
  As OBS_Get_median_income_at_test_point
  FROM result;

-- median income at null island
WITH result as (
  SELECT count(_OBS_Get) as expected FROM
  cdb_observatory._OBS_Get(
    ST_SetSRID(ST_Point(0, 0), 4326),
    Array['us.census.acs.B19013001']::text[],
    '2010 - 2014',
    'us.census.tiger.block_group'
  )
) select expected = 0 as OBS_Get_median_income_at_null_island
  from result;

-- OBS_GetPoints
-- obs_getpoints
-- --------------------
-- {4809.33511352425}

-- SELECT
--   (cdb_observatory._OBS_GetPoints(
--     cdb_observatory._TestPoint(),
--     'obs_c6fb99c47d61289fbb8e561ff7773799d3fcc308'::text, -- block groups (see _obs_geomtable)
--     (Array['{"colname":"total_pop","tablename":"obs_1a098da56badf5f32e336002b0a81708c40d29cd","aggregate":"sum","name":"Total Population","type":"Numeric","description":"The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."}'::json])
--   ))[1]::text = '{"value":10923.093200390833950,"name":"Total Population","tablename":"obs_1a098da56badf5f32e336002b0a81708c40d29cd","aggregate":"sum","type":"Numeric","description":"The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."}'
--   as OBS_GetPoints_for_test_point;
WITH cte As (
SELECT
  (cdb_observatory._OBS_GetPoints(
    cdb_observatory._TestPoint(),
    'obs_c6fb99c47d61289fbb8e561ff7773799d3fcc308'::text, -- block groups (see _obs_geomtable)
    (Array['{"colname":"total_pop","tablename":"obs_1a098da56badf5f32e336002b0a81708c40d29cd","aggregate":"sum","name":"Total Population","type":"Numeric","description":"The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."}'::json])
  ))[1]
  as OBS_GetPoints_for_test_point)
SELECT
  (abs((OBS_GetPoints_for_test_point ->> 'value')::numeric - 10923.093200390833950) / 10923.093200390833950) < 0.001 As OBS_GetPoints_for_test_point_value,
  (OBS_GetPoints_for_test_point ->> 'name') = 'Total Population' As OBS_GetPoints_for_test_point_name,
  (OBS_GetPoints_for_test_point ->> 'tablename') = 'obs_1a098da56badf5f32e336002b0a81708c40d29cd' As OBS_GetPoints_for_test_point_tablename,
  (OBS_GetPoints_for_test_point ->> 'aggregate') = 'sum' As OBS_GetPoints_for_test_point_aggregate,
  (OBS_GetPoints_for_test_point ->> 'type') = 'Numeric' As OBS_GetPoints_for_test_point_type,
  (OBS_GetPoints_for_test_point ->> 'description') = 'The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates.' As OBS_GetPoints_for_test_point_description
FROM cte;

-- what happens at null island

SELECT
  (cdb_observatory._OBS_GetPoints(
    ST_SetSRID(ST_Point(0, 0), 4326),
    'obs_1a098da56badf5f32e336002b0a81708c40d29cd'::text, -- see example in obs_geomtable
    (Array['{"colname":"total_pop","tablename":"obs_1a098da56badf5f32e336002b0a81708c40d29cd","aggregate":"sum","name":"Total Population","type":"Numeric","description":"The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."}'::json])
  ))[1]::text  is null
  as OBS_GetPoints_for_null_island;

-- OBS_GetPolygons
--   obs_getpolygons
-- --------------------
--  {12996.8172420752}

SELECT
  (cdb_observatory._OBS_GetPolygons(
    cdb_observatory._TestArea(),
    'obs_c6fb99c47d61289fbb8e561ff7773799d3fcc308'::text, -- see example in obs_geomtable
    Array['{"colname":"total_pop","tablename":"obs_1a098da56badf5f32e336002b0a81708c40d29cd","aggregate":"sum","name":"Total Population","type":"Numeric","description":"The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."}'::json]
))[1]::text = '{"value":12327.3133495107,"name":"Total Population","tablename":"obs_1a098da56badf5f32e336002b0a81708c40d29cd","aggregate":"sum","type":"Numeric","description":"The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."}'
  as OBS_GetPolygons_for_test_point;

-- see what happens around null island
SELECT
  ((cdb_observatory._OBS_GetPolygons(
    ST_Buffer(ST_SetSRID(ST_Point(0, 0), 4326)::geography, 500)::geometry,
    'obs_1a098da56badf5f32e336002b0a81708c40d29cd'::text, -- see example in obs_geomtable
    Array['{"colname":"total_pop","tablename":"obs_1a098da56badf5f32e336002b0a81708c40d29cd","aggregate":"sum","name":"Total Population","type":"Numeric","description":"The total number of all people living in a given geographic area.  This is a very useful catch-all denominator when calculating rates."}'::json])
  )[1]->>'value') is null
  as OBS_GetPolygons_for_null_island;

SELECT cdb_observatory.OBS_GetSegmentSnapshot(
    cdb_observatory._TestPoint(),
    'us.census.tiger.census_tract'
)::text =
 '{"segment_name":"Spielman-Singleton Segments: 10 Clusters","us.census.acs.B01001001_quantile":"0.234783783783784","us.census.acs.B01001002_quantile":"0.422405405405405","us.census.acs.B01001026_quantile":"0.0987567567567568","us.census.acs.B01002001_quantile":"0.0715","us.census.acs.B03002003_quantile":"0.295310810810811","us.census.acs.B03002004_quantile":"0.407189189189189","us.census.acs.B03002006_quantile":"0.625608108108108","us.census.acs.B03002012_quantile":"0.795202702702703","us.census.acs.B05001006_quantile":"0.703797297297297","us.census.acs.B08006001_quantile":"0.59227027027027","us.census.acs.B08006002_quantile":"0.0180540540540541","us.census.acs.B08006008_quantile":"0.993756756756757","us.census.acs.B08006009_quantile":"0.728162162162162","us.census.acs.B08006011_quantile":"0.995972972972973","us.census.acs.B08006015_quantile":"0.929135135135135","us.census.acs.B08006017_quantile":"0.625432432432432","us.census.acs.B09001001_quantile":"0.0386081081081081","us.census.acs.B11001001_quantile":"0.157121621621622","us.census.acs.B14001001_quantile":"0.241878378378378","us.census.acs.B14001002_quantile":"0.173783783783784","us.census.acs.B14001005_quantile":"0.0380675675675676","us.census.acs.B14001006_quantile":"0.0308108108108108","us.census.acs.B14001007_quantile":"0.0486216216216216","us.census.acs.B14001008_quantile":"0.479743243243243","us.census.acs.B15003001_quantile":"0.297675675675676","us.census.acs.B15003017_quantile":"0.190351351351351","us.census.acs.B15003022_quantile":"0.802513513513514","us.census.acs.B15003023_quantile":"0.757148648648649","us.census.acs.B16001001_quantile":"0.255405405405405","us.census.acs.B16001002_quantile":"0.196094594594595","us.census.acs.B16001003_quantile":"0.816851351351351","us.census.acs.B17001001_quantile":"0.252513513513514","us.census.acs.B17001002_quantile":"0.560054054054054","us.census.acs.B19013001_quantile":"0.777472972972973","us.census.acs.B19083001_quantile":"0.336932432432432","us.census.acs.B19301001_quantile":"0.655378378378378","us.census.acs.B25001001_quantile":"0.141810810810811","us.census.acs.B25002003_quantile":"0.362824324324324","us.census.acs.B25004002_quantile":"0.463837837837838","us.census.acs.B25004004_quantile":"0","us.census.acs.B25058001_quantile":"0.939040540540541","us.census.acs.B25071001_quantile":"0.419445945945946","us.census.acs.B25075001_quantile":"0.0387972972972973","us.census.acs.B25075025_quantile":"0"}' as test_point_segmentation;

-- segmentation around null island
SELECT cdb_observatory.OBS_GetSegmentSnapshot(
    ST_SetSRID(ST_Point(0, 0), 4326),
    'us.census.tiger.census_tract'
)::text = '{"segment_name":null,"us.census.acs.B01001001_quantile":null,"us.census.acs.B01001002_quantile":null,"us.census.acs.B01001026_quantile":null,"us.census.acs.B01002001_quantile":null,"us.census.acs.B03002003_quantile":null,"us.census.acs.B03002004_quantile":null,"us.census.acs.B03002006_quantile":null,"us.census.acs.B03002012_quantile":null,"us.census.acs.B05001006_quantile":null,"us.census.acs.B08006001_quantile":null,"us.census.acs.B08006002_quantile":null,"us.census.acs.B08006008_quantile":null,"us.census.acs.B08006009_quantile":null,"us.census.acs.B08006011_quantile":null,"us.census.acs.B08006015_quantile":null,"us.census.acs.B08006017_quantile":null,"us.census.acs.B09001001_quantile":null,"us.census.acs.B11001001_quantile":null,"us.census.acs.B14001001_quantile":null,"us.census.acs.B14001002_quantile":null,"us.census.acs.B14001005_quantile":null,"us.census.acs.B14001006_quantile":null,"us.census.acs.B14001007_quantile":null,"us.census.acs.B14001008_quantile":null,"us.census.acs.B15003001_quantile":null,"us.census.acs.B15003017_quantile":null,"us.census.acs.B15003022_quantile":null,"us.census.acs.B15003023_quantile":null,"us.census.acs.B16001001_quantile":null,"us.census.acs.B16001002_quantile":null,"us.census.acs.B16001003_quantile":null,"us.census.acs.B17001001_quantile":null,"us.census.acs.B17001002_quantile":null,"us.census.acs.B19013001_quantile":null,"us.census.acs.B19083001_quantile":null,"us.census.acs.B19301001_quantile":null,"us.census.acs.B25001001_quantile":null,"us.census.acs.B25002003_quantile":null,"us.census.acs.B25004002_quantile":null,"us.census.acs.B25004004_quantile":null,"us.census.acs.B25058001_quantile":null,"us.census.acs.B25071001_quantile":null,"us.census.acs.B25075001_quantile":null,"us.census.acs.B25075025_quantile":null}' as null_island_segmentation;

WITH result as (
  SELECT array_agg(_OBS_GetCategories) as expected FROM
    cdb_observatory._OBS_GetCategories(
      cdb_observatory._TestPoint(),
      Array['us.census.spielman_singleton_segments.X10'],
      'us.census.tiger.census_tract'
  )
)
  select (expected)[1]::text = '{"category":"Wealthy, urban without Kids","name":"Spielman-Singleton Segments: 10 Clusters","tablename":"obs_65f29658e096ca1485bf683f65fdbc9f05ec3c5d","aggregate":null,"type":"Text","description":"Sociodemographic classes from Spielman and Singleton 2015, 10 clusters"}' as GetCategories_at_test_point_1
  from result;

WITH result as (
  SELECT array_agg(_OBS_GetCategories) as expected FROM
    cdb_observatory._OBS_GetCategories(
      ST_SetSRID(ST_Point(0,0), 4326),
      Array['us.census.spielman_singleton_segments.X10'],
      'us.census.tiger.census_tract'
  )
)
  select expected[0] is NULL as GetCategories_at_null_island
  from result;

-- Point-based OBS_GetMeasure with zillow
SELECT abs(OBS_GetMeasure_zhvi_point - 583600) / 583600 < 0.001 AS OBS_GetMeasure_zhvi_point_test FROM cdb_observatory.OBS_GetMeasure(
  ST_SetSRID(ST_Point(-73.94602417945862, 40.6768220087458), 4326),
  'us.zillow.AllHomes_Zhvi', 'area', 'us.census.tiger.zcta5', '2014-01'
) As t(OBS_GetMeasure_zhvi_point);

-- Point-based OBS_GetMeasure with zillow default to latest
SELECT abs(OBS_GetMeasure_zhvi_point_default_latest - 972900) / 972900 < 0.001 AS OBS_GetMeasure_zhvi_point_default_latest_test FROM cdb_observatory.OBS_GetMeasure(
  ST_SetSRID(ST_Point(-73.94602417945862, 40.6768220087458), 4326),
  'us.zillow.AllHomes_Zhvi'
) As t(OBS_GetMeasure_zhvi_point_default_latest);

-- Point-based OBS_GetMeasure, default normalization (area)
-- is result within 0.1% of expected
SELECT abs(OBS_GetMeasure_total_pop_point - 10923.093200390833950) / 10923.093200390833950 < 0.001 As OBS_GetMeasure_total_pop_point_test FROM
  cdb_observatory.OBS_GetMeasure(
    cdb_observatory._TestPoint(),
    'us.census.acs.B01001001'
) As t(OBS_GetMeasure_total_pop_point);

-- Poly-based OBS_GetMeasure, default normalization (none)
-- is result within 0.1% of expected
SELECT abs(OBS_GetMeasure_total_pop_polygon - 12327.3133495107) / 12327.3133495107 < 0.001 As OBS_GetMeasure_total_pop_polygon_test FROM
  cdb_observatory.OBS_GetMeasure(
    cdb_observatory._TestArea(),
    'us.census.acs.B01001001'
) As t(OBS_GetMeasure_total_pop_polygon);

-- Point-based OBS_GetMeasure with denominator normalization
SELECT (abs(cdb_observatory.OBS_GetMeasure(
  cdb_observatory._TestPoint(),
  'us.census.acs.B01001002', 'denominator') - 0.62157894736842105263) / 0.62157894736842105263) < 0.001 As OBS_GetMeasure_total_male_point_denominator;

-- Poly-based OBS_GetMeasure with denominator normalization
SELECT abs(cdb_observatory.OBS_GetMeasure(
  cdb_observatory._TestArea(),
  'us.census.acs.B01001002', 'denominator') - 0.49026340444793965457) / 0.49026340444793965457 < 0.001 As OBS_GetMeasure_total_male_poly_denominator;

-- Point-based OBS_GetCategory
SELECT cdb_observatory.OBS_GetCategory(
  cdb_observatory._TestPoint(), 'us.census.spielman_singleton_segments.X10') = 'Wealthy, urban without Kids' As OBS_GetCategory_point;

-- Poly-based OBS_GetCategory
SELECT cdb_observatory.OBS_GetCategory(
  cdb_observatory._TestArea(), 'us.census.spielman_singleton_segments.X10') = 'Low income, mix of minorities' As obs_getcategory_polygon;

-- Point-based OBS_GetPopulation, default normalization (area)
SELECT (abs(OBS_GetPopulation - 10923.093200390833950) / 10923.093200390833950) < 0.001 As OBS_GetPopulation FROM
  cdb_observatory.OBS_GetPopulation(
    cdb_observatory._TestPoint()
  ) As m(OBS_GetPopulation);

-- Poly-based OBS_GetPopulation, default normalization (none)
SELECT (abs(obs_getpopulation_polygon - 12327.3133495107) / 12327.3133495107) < 0.001 As obs_getpopulation_polygon_test
FROM
  cdb_observatory.OBS_GetPopulation(
    cdb_observatory._TestArea()
  ) As m(obs_getpopulation_polygon);

-- Point-based OBS_GetUSCensusMeasure, default normalization (area)
SELECT (abs(cdb_observatory.obs_getuscensusmeasure(
  cdb_observatory._testpoint(), 'male population') - 6789.5647735060920500) / 6789.5647735060920500) < 0.001 As obs_getuscensusmeasure_point_male_pop;

-- Poly-based OBS_GetUSCensusMeasure, default normalization (none)
SELECT (abs(cdb_observatory.obs_getuscensusmeasure(
  cdb_observatory._testarea(), 'male population') - 6043.63061042765) / 6043.63061042765) < 0.001 As obs_getuscensusmeasure;

-- Point-based OBS_GetUSCensusCategory
SELECT cdb_observatory.OBS_GetUSCensusCategory(
  cdb_observatory._testpoint(), 'Spielman-Singleton Segments: 10 Clusters') = 'Wealthy, urban without Kids' As OBS_GetUSCensusCategory_point;

-- Area-based OBS_GetUSCensusCategory
SELECT cdb_observatory.OBS_GetUSCensusCategory(
  cdb_observatory._testarea(), 'Spielman-Singleton Segments: 10 Clusters') = 'Low income, mix of minorities' As OBS_GetUSCensusCategory_polygon;


\i test/fixtures/drop_fixtures.sql
