--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = observatory, pg_catalog;

--
-- Data for Name: obs_table; Type: TABLE DATA; Schema: observatory; Owner: cartodb_user_d377e55d-4326-4faf-97c7-503535e81667
--

INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (1, NULL, NULL, '"us.census.spielman_singleton_segments".spielman_singleton_table_99914b932b', 'obs_65f29658e096ca1485bf683f65fdbc9f05ec3c5d', '2009 - 2013', 'BOX(0 0,0 0)', NULL, '5');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (2, NULL, NULL, '"us.census.acs".extract_block_group_5yr_2013_69b156927c', 'obs_3e7cc9cfd403b912c57b42d5f9195af9ce2f3cdb', '2009 - 2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '1');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (3, NULL, NULL, '"us.census.tiger".sum_level_false_block_group_2013_5c764f39d2', 'obs_85328201013baa14e8e8a4a57a01e6f6fbc5f9b1', '2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '4');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (4, NULL, NULL, '"us.census.acs".quantiles_census_tract_5yr_2013_a0eee6bf1a', 'obs_d34555209878e8c4b37cf0b2b3d072ff129ec470', '2009 - 2013', 'BOX(0 0,0 0)', NULL, '0');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (5, NULL, NULL, '"us.census.tiger".sum_level_false_census_tract_2013_c489085a44', 'obs_a92e1111ad3177676471d66bb8036e6d057f271b', '2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '4');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (6, NULL, NULL, '"us.ny.nyc.opendata".acris_master_99914b932b', 'obs_811c938d1307530a3db53fc69f11a2499174d224', '1966 - present', 'BOX(0 0,0 0)', NULL, '0');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (7, NULL, NULL, '"us.census.tiger".sum_level_false_state_2013_0b919d8984', 'obs_f3f0912fe24bc0c976e837b5a116d0c803cc01ce', '2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '4');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (8, NULL, NULL, '"us.census.tiger".sum_level_false_county_2013_66804ade17', 'obs_b0ef6dd68d5faddbf231fd7f02916b3d00ec43c4', '2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '4');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (9, NULL, NULL, '"us.census.tiger".sum_level_false_puma_2013_4a11a4ba96', 'obs_0008b162b516c295d7204c9ba043ab5dbc67c59c', '2013', 'BOX(-179.231086 13.182335,179.859681 71.441059)', NULL, '4');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (10, NULL, NULL, '"us.census.tiger".sum_level_true_state_2013_f1ab8fce27', 'obs_a20f5260b618a2fe2eb95fc1e23febe0db7db096', '2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '4');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (11, NULL, NULL, '"us.census.tiger".sum_level_true_county_2013_39133ea7a1', 'obs_23da37d4e66e9de2f525572967f8618bde99a8c0', '2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '4');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (12, NULL, NULL, '"us.census.tiger".sum_level_false_zcta5_2013_bf420fa8c1', 'obs_d483723c5cc76c107d9e0af279d1e7056df3c2be', '2013', 'BOX(-176.684744 -14.373765,145.830505 71.341324)', NULL, '4');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (20, NULL, NULL, '"us.bls".raw_qcew_2013_dd20d99063', 'obs_530081a407e8793b7fef6666ebc46db0fcc9db2c', '2013', 'BOX(0 0,0 0)', NULL, '0');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (13, NULL, NULL, '"us.census.tiger".sum_level_true_census_tract_2013_6a2cf9dee9', 'obs_d125aeef87aaa23287a40b454519ece22ee25acf', '2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '4');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (14, NULL, NULL, '"us.census.tiger".sum_level_true_block_group_2013_5ecb940395', 'obs_d610cb3225f282693b8d4dcd98d2c2e2078354c6', '2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '4');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (15, NULL, NULL, '"us.census.acs".extract_state_5yr_2013_c6cc7dd346', 'obs_92bdae84ae8d41fabca52500e4e1f55c394b696e', '2009 - 2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '1');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (16, NULL, NULL, '"us.census.acs".extract_puma_5yr_2013_e9f0d7bc6c', 'obs_a875390344c7e36b72a8d6a3d25ae0f2bb41eaee', '2009 - 2013', 'BOX(-179.231086 13.182335,179.859681 71.441059)', NULL, '1');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (17, NULL, NULL, '"us.census.acs".extract_county_5yr_2013_5d7844896c', 'obs_75edf4ed5271a95f13755e9d06b80740b2fde0ba', '2009 - 2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '1');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (18, NULL, NULL, '"us.census.acs".extract_zcta5_5yr_2013_dc39ebe0d5', 'obs_e99034a8fff4654142aed05d887f745a32cedc9f', '2009 - 2013', 'BOX(-176.684744 -14.373765,145.830505 71.341324)', NULL, '1');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (19, NULL, NULL, '"us.census.acs".extract_census_tract_5yr_2013_a0eee6bf1a', 'obs_ab038198aaab3f3cb055758638ee4de28ad70146', '2009 - 2013', 'BOX(-179.231086 -14.601813,179.859681 71.441059)', NULL, '1');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (21, NULL, NULL, '"us.bls".naics_99914b932b', 'obs_609c848c80950261032da680294bb1e3ddcf43b6', NULL, 'BOX(0 0,0 0)', NULL, '0');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (22, NULL, NULL, '"us.bls".simple_qcew_4_2013_94c2fc9ef1', 'obs_4560238b6b0050979ad151becc37c6eecfb7e6ad', '2013Q4', 'BOX(0 0,0 0)', NULL, '1');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (23, NULL, NULL, '"us.census.lodes".workplace_area_characteristics_2013_dd20d99063', 'obs_5bc83d67ea2863b1712078813a730eee753cf316', '2013', 'BOX(0 0,0 0)', NULL, '0');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (24, NULL, NULL, '"us.bls".qcew_4_2013_94c2fc9ef1', 'obs_5ed30fab78289e09c30cfd16981b8143ca8fdaa4', '2013Q4', 'BOX(0 0,0 0)', NULL, '1');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (25, NULL, NULL, '"us.ny.nyc.opendata".acris_legals_99914b932b', 'obs_fd0a697088f5ffcbe4641fb62ad6e2c74eed55d5', '', 'BOX(0 0,0 0)', NULL, '0');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (26, NULL, NULL, '"us.census.spielman_singleton_segments".create_spielman_singleton_table_99914b932b', 'obs_11ee8b82c877c073438bc935a91d3dfccef875d1', '2009 - 2013', 'BOX(0 0,0 0)', NULL, '3');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (27, NULL, NULL, '"us.census.acs".quantiles_county_5yr_2013_5d7844896c', 'obs_98cefd377c2ff17a2d60b9a6fe090af629073ec4', '2009 - 2013', 'BOX(0 0,0 0)', NULL, '0');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (28, NULL, NULL, '"us.census.acs".quantiles_puma_5yr_2013_e9f0d7bc6c', 'obs_032792417d754aa7708d6ba716eb446904f12c46', '2009 - 2013', 'BOX(0 0,0 0)', NULL, '0');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (29, NULL, NULL, '"us.census.acs".quantiles_state_5yr_2013_c6cc7dd346', 'obs_90e9293f578fab0bf2dabf5e387a57d9a2739a08', '2009 - 2013', 'BOX(0 0,0 0)', NULL, '0');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (30, NULL, NULL, '"us.census.acs".quantiles_zcta5_5yr_2013_dc39ebe0d5', 'obs_a31255ed256a27d69a9ea777621ad218f6f1f030', '2009 - 2013', 'BOX(0 0,0 0)', NULL, '0');
INSERT INTO obs_table (cartodb_id, the_geom, the_geom_webmercator, id, tablename, timespan, bounds, description, version) VALUES (31, NULL, NULL, '"us.census.acs".quantiles_block_group_5yr_2013_69b156927c', 'obs_0932dc0392ca14a6b43e6e131943de9af2ee46b2', '2009 - 2013', 'BOX(0 0,0 0)', NULL, '2');


--
-- Name: obs_table_cartodb_id_seq; Type: SEQUENCE SET; Schema: observatory; Owner: cartodb_user_d377e55d-4326-4faf-97c7-503535e81667
--

SELECT pg_catalog.setval('obs_table_cartodb_id_seq', 31, true);


--
-- PostgreSQL database dump complete
--
