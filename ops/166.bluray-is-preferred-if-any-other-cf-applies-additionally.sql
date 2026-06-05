-- @operation: export
-- @entity: batch
-- @name: Bluray is preferred if any other cf applies additionally
-- @exportedAt: 2026-06-05T20:17:17.191Z
-- @opIds: 2421, 2422, 2423, 2424, 2425, 2426, 2427, 2428, 2429, 2430, 2431, 2432

-- --- BEGIN op 2421 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 379999
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 280000;
-- --- END op 2421

-- --- BEGIN op 2422 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 379999
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 280000;
-- --- END op 2422

-- --- BEGIN op 2423 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 379999
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 280000;
-- --- END op 2423

-- --- BEGIN op 2424 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 379999
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 280000;
-- --- END op 2424

-- --- BEGIN op 2425 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 379999
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 280000;
-- --- END op 2425

-- --- BEGIN op 2426 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 379999
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 280000;
-- --- END op 2426

-- --- BEGIN op 2427 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 439999
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'UHD Bluray'
  AND arr_type = 'radarr'
  AND score = 420000;
-- --- END op 2427

-- --- BEGIN op 2428 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 439999
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'UHD Bluray'
  AND arr_type = 'sonarr'
  AND score = 420000;
-- --- END op 2428

-- --- BEGIN op 2429 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 379999
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 280000;
-- --- END op 2429

-- --- BEGIN op 2430 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 379999
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 280000;
-- --- END op 2430

-- --- BEGIN op 2431 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 379999
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 280000;
-- --- END op 2431

-- --- BEGIN op 2432 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 379999
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 280000;
-- --- END op 2432
