-- @operation: export
-- @entity: batch
-- @name: x265 is acceptable
-- @exportedAt: 2026-06-19T12:56:14.863Z
-- @opIds: 2434, 2435, 2436, 2437, 2438, 2439, 2440, 2441

-- --- BEGIN op 2434 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = -5
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'x265 (Bluray)'
  AND arr_type = 'radarr'
  AND score = -400000;
-- --- END op 2434

-- --- BEGIN op 2435 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = -10
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2435

-- --- BEGIN op 2436 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = -5
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'x265 (Bluray)'
  AND arr_type = 'radarr'
  AND score = -400000;
-- --- END op 2436

-- --- BEGIN op 2437 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = -10
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2437

-- --- BEGIN op 2438 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = -5
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = 'x265 (Bluray)'
  AND arr_type = 'radarr'
  AND score = -400000;
-- --- END op 2438

-- --- BEGIN op 2439 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = -10
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2439

-- --- BEGIN op 2440 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = -5
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = 'x265 (Bluray)'
  AND arr_type = 'radarr'
  AND score = -400000;
-- --- END op 2440

-- --- BEGIN op 2441 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = -10
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2441
