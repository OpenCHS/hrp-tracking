CREATE ROLE hrp_tracking
  NOINHERIT
  NOLOGIN;

GRANT hrp_tracking TO openchs;

GRANT ALL ON ALL TABLES IN SCHEMA public TO hrp_tracking;
GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO hrp_tracking;
GRANT ALL ON ALL FUNCTIONS IN SCHEMA public TO hrp_tracking;


INSERT into organisation(name, db_user, uuid, parent_organisation_id)
    SELECT 'HRP Tracking', 'hrp_tracking', '5364c33a-754c-428c-b358-7ad782f0a5c2', id FROM organisation WHERE name = 'OpenCHS';