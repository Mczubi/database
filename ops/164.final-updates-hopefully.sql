-- @operation: export
-- @entity: batch
-- @name: Final updates hopefully
-- @exportedAt: 2026-05-24T15:33:26.644Z
-- @opIds: 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2219, 2220, 2221, 2222, 2223, 2224, 2225, 2226, 2227, 2228, 2229, 2230, 2231, 2232, 2233, 2234, 2235, 2236, 2237, 2238, 2239, 2240, 2241, 2242, 2243, 2244, 2245, 2246, 2247

-- --- BEGIN op 2211 ( create custom_format "Not German" )
insert into "custom_formats" ("name", "description") values ('Not German', '');
-- --- END op 2211

-- --- BEGIN op 2212 ( update custom_format "Not German" )
update "custom_formats" set "description" = 'Matches releases that don''''t include the Original or English language. Other Languages are allowed.' where "name" = 'Not German' and "description" = '';
-- --- END op 2212

-- --- BEGIN op 2213 ( update custom_format "Not German" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Not German', 'Language');
-- --- END op 2213

-- --- BEGIN op 2214 ( update custom_format "Not German" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German', 'English', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German', 'English', 'English', 0);
-- --- END op 2214

-- --- BEGIN op 2215 ( update custom_format "Not German" )
update "custom_formats" set "description" = 'Matches releases that don''''t include the German language. Other Languages are allowed.' where "name" = 'Not German' and "description" = 'Matches releases that don''''t include the Original or English language. Other Languages are allowed.';
-- --- END op 2215

-- --- BEGIN op 2216 ( update custom_format "Not German" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Not German'
	  AND name = 'English'
	  AND type = 'language'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 2216

-- --- BEGIN op 2217 ( update custom_format "Not German" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not German', 'German', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not German', 'German', 'German', 0);
-- --- END op 2217

-- --- BEGIN op 2218 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Not English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Not English'
    AND arr_type = 'radarr'
);
-- --- END op 2218

-- --- BEGIN op 2219 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Not English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Not English'
    AND arr_type = 'sonarr'
);
-- --- END op 2219

-- --- BEGIN op 2220 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Not English', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Not English'
    AND arr_type = 'radarr'
);
-- --- END op 2220

-- --- BEGIN op 2221 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Not English', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Not English'
    AND arr_type = 'sonarr'
);
-- --- END op 2221

-- --- BEGIN op 2222 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Not German', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Not German'
    AND arr_type = 'radarr'
);
-- --- END op 2222

-- --- BEGIN op 2223 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Not German', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Not German'
    AND arr_type = 'sonarr'
);
-- --- END op 2223

-- --- BEGIN op 2224 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = 'Not Original or English'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2224

-- --- BEGIN op 2225 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = 'Not Original or English'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2225

-- --- BEGIN op 2226 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = 'Sub only'
  AND arr_type = 'radarr'
  AND score = -200000;
-- --- END op 2226

-- --- BEGIN op 2227 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = 'Sub only'
  AND arr_type = 'sonarr'
  AND score = -200000;
-- --- END op 2227

-- --- BEGIN op 2228 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = 'German DL'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2228

-- --- BEGIN op 2229 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = 'German DL'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2229

-- --- BEGIN op 2230 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'German DL'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2230

-- --- BEGIN op 2231 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'German DL'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2231

-- --- BEGIN op 2232 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = 'German DL'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2232

-- --- BEGIN op 2233 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = 'German DL'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2233

-- --- BEGIN op 2234 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'German DL'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2234

-- --- BEGIN op 2235 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'German DL'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2235

-- --- BEGIN op 2236 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Not German', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Not German'
    AND arr_type = 'radarr'
);
-- --- END op 2236

-- --- BEGIN op 2237 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Not German', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Not German'
    AND arr_type = 'sonarr'
);
-- --- END op 2237

-- --- BEGIN op 2238 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = -1000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'Not Original or English'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2238

-- --- BEGIN op 2239 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = -1000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'Not Original or English'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2239

-- --- BEGIN op 2240 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'Sub only'
  AND arr_type = 'radarr'
  AND score = -200000;
-- --- END op 2240

-- --- BEGIN op 2241 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'Sub only'
  AND arr_type = 'sonarr'
  AND score = -200000;
-- --- END op 2241

-- --- BEGIN op 2242 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = 'Sub only'
  AND arr_type = 'radarr'
  AND score = -200000;
-- --- END op 2242

-- --- BEGIN op 2243 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = 'Sub only'
  AND arr_type = 'sonarr'
  AND score = -200000;
-- --- END op 2243

-- --- BEGIN op 2244 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'Sub only'
  AND arr_type = 'radarr'
  AND score = -200000;
-- --- END op 2244

-- --- BEGIN op 2245 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'Sub only'
  AND arr_type = 'sonarr'
  AND score = -200000;
-- --- END op 2245

-- --- BEGIN op 2246 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Not English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Not English'
    AND arr_type = 'radarr'
);
-- --- END op 2246

-- --- BEGIN op 2247 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Not English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Not English'
    AND arr_type = 'sonarr'
);
-- --- END op 2247
