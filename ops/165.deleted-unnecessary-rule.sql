-- @operation: export
-- @entity: batch
-- @name: Deleted Unnecessary rule
-- @exportedAt: 2026-05-25T14:53:31.247Z
-- @opIds: 2417, 2418, 2419

-- --- BEGIN op 2417 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'German DL'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2417

-- --- BEGIN op 2418 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux'
  AND custom_format_name = 'German DL'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2418

-- --- BEGIN op 2419 ( delete custom_format "German DL" )
delete from "custom_formats" where "name" = 'German DL';
-- --- END op 2419
