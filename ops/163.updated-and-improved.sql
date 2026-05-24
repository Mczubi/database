-- @operation: export
-- @entity: batch
-- @name: Adjusted to be more like current
-- @exportedAt: 2026-05-24T14:59:48.890Z
-- @opIds: 2157, 2158, 2159, 2160, 2161, 2162, 2163, 2164, 2165, 2166, 2167, 2168, 2169, 2170, 2171, 2172, 2173, 2174, 2175, 2176, 2177, 2178, 2179, 2180, 2181, 2182, 2183, 2184, 2185, 2186, 2187, 2188, 2189, 2190, 2191, 2192, 2193, 2194, 2195, 2196, 2197, 2198, 2199, 2200, 2201, 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209

-- --- BEGIN op 2157 ( update delay_profile "Radarr" )
update "delay_profiles" set "preferred_protocol" = 'prefer_usenet' where "name" = 'Radarr' and "preferred_protocol" = 'prefer_torrent';
-- --- END op 2157

-- --- BEGIN op 2158 ( update delay_profile "Radarr" )
update "delay_profiles" set "usenet_delay" = 0 where "name" = 'Radarr' and "usenet_delay" = 360;
-- --- END op 2158

-- --- BEGIN op 2159 ( update delay_profile "Radarr" )
update "delay_profiles" set "torrent_delay" = 0 where "name" = 'Radarr' and "torrent_delay" = 360;
-- --- END op 2159

-- --- BEGIN op 2160 ( update delay_profile "Sonarr" )
update "delay_profiles" set "preferred_protocol" = 'prefer_usenet' where "name" = 'Sonarr' and "preferred_protocol" = 'prefer_torrent';
-- --- END op 2160

-- --- BEGIN op 2161 ( update delay_profile "Sonarr" )
update "delay_profiles" set "usenet_delay" = 0 where "name" = 'Sonarr' and "usenet_delay" = 360;
-- --- END op 2161

-- --- BEGIN op 2162 ( update delay_profile "Sonarr" )
update "delay_profiles" set "torrent_delay" = 0 where "name" = 'Sonarr' and "torrent_delay" = 360;
-- --- END op 2162

-- --- BEGIN op 2163 ( update quality_profile "1080p Anime" )
DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Any'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Any') = 2
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Any'
      AND quality_name NOT IN ('HDTV-1080p', 'Remux-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Any'
        AND NOT (
          (quality_name = 'HDTV-1080p'
        AND position = 0)
      OR (quality_name = 'Remux-1080p'
        AND position = 1)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Any'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Anime'
      AND quality_group_name = '1080p Any'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Anime' AS quality_profile_name, '1080p Any' AS quality_group_name, 'Remux-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '1080p Any' AS quality_group_name, 'HDTV-1080p' AS quality_name, 1 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2163

-- --- BEGIN op 2164 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'all'
  AND score = 80000;
-- --- END op 2164

-- --- BEGIN op 2165 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 84000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 144000;
-- --- END op 2165

-- --- BEGIN op 2166 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 84000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 144000;
-- --- END op 2166

-- --- BEGIN op 2167 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 83000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 143000;
-- --- END op 2167

-- --- BEGIN op 2168 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 83000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 143000;
-- --- END op 2168

-- --- BEGIN op 2169 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 82000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 142000;
-- --- END op 2169

-- --- BEGIN op 2170 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 82000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 142000;
-- --- END op 2170

-- --- BEGIN op 2171 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 81000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 5'
  AND arr_type = 'radarr'
  AND score = 141000;
-- --- END op 2171

-- --- BEGIN op 2172 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 81000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 5'
  AND arr_type = 'sonarr'
  AND score = 141000;
-- --- END op 2172

-- --- BEGIN op 2173 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'radarr'
  AND score = 140000;
-- --- END op 2173

-- --- BEGIN op 2174 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'sonarr'
  AND score = 140000;
-- --- END op 2174

-- --- BEGIN op 2175 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 22000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '480p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 82000;
-- --- END op 2175

-- --- BEGIN op 2176 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 22000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '480p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 82000;
-- --- END op 2176

-- --- BEGIN op 2177 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 21000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '480p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 81000;
-- --- END op 2177

-- --- BEGIN op 2178 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 21000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '480p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 81000;
-- --- END op 2178

-- --- BEGIN op 2179 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '480p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 80000;
-- --- END op 2179

-- --- BEGIN op 2180 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '480p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 80000;
-- --- END op 2180

-- --- BEGIN op 2181 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 42000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '576p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 102000;
-- --- END op 2181

-- --- BEGIN op 2182 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 42000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '576p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 102000;
-- --- END op 2182

-- --- BEGIN op 2183 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 41000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '576p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2183

-- --- BEGIN op 2184 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 41000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '576p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 101000;
-- --- END op 2184

-- --- BEGIN op 2185 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '576p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2185

-- --- BEGIN op 2186 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '576p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 100000;
-- --- END op 2186

-- --- BEGIN op 2187 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 6', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2187

-- --- BEGIN op 2188 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 6', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2188

-- --- BEGIN op 2189 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '1080p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2189

-- --- BEGIN op 2190 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '1080p Balanced Tier 2'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2190

-- --- BEGIN op 2191 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '1080p HDTV Tier 1'
  AND arr_type = 'radarr'
  AND score = 42000;
-- --- END op 2191

-- --- BEGIN op 2192 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '1080p HDTV Tier 1'
  AND arr_type = 'sonarr'
  AND score = 42000;
-- --- END op 2192

-- --- BEGIN op 2193 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '1080p HDTV Tier 2'
  AND arr_type = 'radarr'
  AND score = 41000;
-- --- END op 2193

-- --- BEGIN op 2194 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '1080p HDTV Tier 2'
  AND arr_type = 'sonarr'
  AND score = 41000;
-- --- END op 2194

-- --- BEGIN op 2195 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '1080p HDTV Tier 3'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2195

-- --- BEGIN op 2196 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '1080p HDTV Tier 3'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2196

-- --- BEGIN op 2197 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2197

-- --- BEGIN op 2198 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2198

-- --- BEGIN op 2199 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2199

-- --- BEGIN op 2200 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p HDTV Tier 1'
  AND arr_type = 'radarr'
  AND score = 22000;
-- --- END op 2200

-- --- BEGIN op 2201 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p HDTV Tier 1'
  AND arr_type = 'sonarr'
  AND score = 22000;
-- --- END op 2201

-- --- BEGIN op 2202 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p HDTV Tier 2'
  AND arr_type = 'radarr'
  AND score = 21000;
-- --- END op 2202

-- --- BEGIN op 2203 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p HDTV Tier 2'
  AND arr_type = 'sonarr'
  AND score = 21000;
-- --- END op 2203

-- --- BEGIN op 2204 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p HDTV Tier 3'
  AND arr_type = 'radarr'
  AND score = 20000;
-- --- END op 2204

-- --- BEGIN op 2205 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = '720p HDTV Tier 3'
  AND arr_type = 'sonarr'
  AND score = 20000;
-- --- END op 2205

-- --- BEGIN op 2206 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'DVD Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2206

-- --- BEGIN op 2207 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'DVD Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 60000;
-- --- END op 2207

-- --- BEGIN op 2208 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'German DL'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2208

-- --- BEGIN op 2209 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'German DL'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2209


-- --- BEGIN op 2164 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'all'
  AND score = 80000;
-- --- END op 2164

-- --- BEGIN op 2165 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 84000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 144000;
-- --- END op 2165

-- --- BEGIN op 2166 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 84000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 144000;
-- --- END op 2166

-- --- BEGIN op 2167 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 83000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 143000;
-- --- END op 2167

-- --- BEGIN op 2168 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 83000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 143000;
-- --- END op 2168

-- --- BEGIN op 2169 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 82000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 142000;
-- --- END op 2169

-- --- BEGIN op 2170 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 82000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 142000;
-- --- END op 2170

-- --- BEGIN op 2171 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 81000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 5'
  AND arr_type = 'radarr'
  AND score = 141000;
-- --- END op 2171

-- --- BEGIN op 2172 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 81000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 5'
  AND arr_type = 'sonarr'
  AND score = 141000;
-- --- END op 2172

-- --- BEGIN op 2173 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'radarr'
  AND score = 140000;
-- --- END op 2173

-- --- BEGIN op 2174 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'sonarr'
  AND score = 140000;
-- --- END op 2174

-- --- BEGIN op 2175 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 22000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 82000;
-- --- END op 2175

-- --- BEGIN op 2176 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 22000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 82000;
-- --- END op 2176

-- --- BEGIN op 2177 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 21000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 81000;
-- --- END op 2177

-- --- BEGIN op 2178 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 21000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 81000;
-- --- END op 2178

-- --- BEGIN op 2179 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 80000;
-- --- END op 2179

-- --- BEGIN op 2180 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 80000;
-- --- END op 2180

-- --- BEGIN op 2181 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 42000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 102000;
-- --- END op 2181

-- --- BEGIN op 2182 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 42000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 102000;
-- --- END op 2182

-- --- BEGIN op 2183 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 41000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2183

-- --- BEGIN op 2184 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 41000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 101000;
-- --- END op 2184

-- --- BEGIN op 2185 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2185

-- --- BEGIN op 2186 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 100000;
-- --- END op 2186

-- --- BEGIN op 2187 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 6', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2187

-- --- BEGIN op 2188 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 6', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2188

-- --- BEGIN op 2189 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2189

-- --- BEGIN op 2190 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Balanced Tier 2'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2190

-- --- BEGIN op 2191 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p HDTV Tier 1'
  AND arr_type = 'radarr'
  AND score = 42000;
-- --- END op 2191

-- --- BEGIN op 2192 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p HDTV Tier 1'
  AND arr_type = 'sonarr'
  AND score = 42000;
-- --- END op 2192

-- --- BEGIN op 2193 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p HDTV Tier 2'
  AND arr_type = 'radarr'
  AND score = 41000;
-- --- END op 2193

-- --- BEGIN op 2194 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p HDTV Tier 2'
  AND arr_type = 'sonarr'
  AND score = 41000;
-- --- END op 2194

-- --- BEGIN op 2195 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p HDTV Tier 3'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2195

-- --- BEGIN op 2196 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p HDTV Tier 3'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2196

-- --- BEGIN op 2197 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2197

-- --- BEGIN op 2198 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2198

-- --- BEGIN op 2199 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2199

-- --- BEGIN op 2200 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p HDTV Tier 1'
  AND arr_type = 'radarr'
  AND score = 22000;
-- --- END op 2200

-- --- BEGIN op 2201 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p HDTV Tier 1'
  AND arr_type = 'sonarr'
  AND score = 22000;
-- --- END op 2201

-- --- BEGIN op 2202 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p HDTV Tier 2'
  AND arr_type = 'radarr'
  AND score = 21000;
-- --- END op 2202

-- --- BEGIN op 2203 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p HDTV Tier 2'
  AND arr_type = 'sonarr'
  AND score = 21000;
-- --- END op 2203

-- --- BEGIN op 2204 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p HDTV Tier 3'
  AND arr_type = 'radarr'
  AND score = 20000;
-- --- END op 2204

-- --- BEGIN op 2205 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p HDTV Tier 3'
  AND arr_type = 'sonarr'
  AND score = 20000;
-- --- END op 2205

-- --- BEGIN op 2206 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'DVD Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2206

-- --- BEGIN op 2207 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'DVD Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 60000;
-- --- END op 2207


-- --- BEGIN op 2164 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'all'
  AND score = 80000;
-- --- END op 2164

-- --- BEGIN op 2165 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 84000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 144000;
-- --- END op 2165

-- --- BEGIN op 2166 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 84000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 144000;
-- --- END op 2166

-- --- BEGIN op 2167 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 83000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 143000;
-- --- END op 2167

-- --- BEGIN op 2168 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 83000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 143000;
-- --- END op 2168

-- --- BEGIN op 2169 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 82000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 142000;
-- --- END op 2169

-- --- BEGIN op 2170 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 82000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 142000;
-- --- END op 2170

-- --- BEGIN op 2171 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 81000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 5'
  AND arr_type = 'radarr'
  AND score = 141000;
-- --- END op 2171

-- --- BEGIN op 2172 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 81000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 5'
  AND arr_type = 'sonarr'
  AND score = 141000;
-- --- END op 2172

-- --- BEGIN op 2173 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'radarr'
  AND score = 140000;
-- --- END op 2173

-- --- BEGIN op 2174 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'sonarr'
  AND score = 140000;
-- --- END op 2174

-- --- BEGIN op 2175 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 22000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '480p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 82000;
-- --- END op 2175

-- --- BEGIN op 2176 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 22000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '480p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 82000;
-- --- END op 2176

-- --- BEGIN op 2177 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 21000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '480p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 81000;
-- --- END op 2177

-- --- BEGIN op 2178 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 21000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '480p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 81000;
-- --- END op 2178

-- --- BEGIN op 2179 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '480p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 80000;
-- --- END op 2179

-- --- BEGIN op 2180 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '480p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 80000;
-- --- END op 2180

-- --- BEGIN op 2181 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 42000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '576p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 102000;
-- --- END op 2181

-- --- BEGIN op 2182 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 42000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '576p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 102000;
-- --- END op 2182

-- --- BEGIN op 2183 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 41000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '576p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2183

-- --- BEGIN op 2184 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 41000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '576p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 101000;
-- --- END op 2184

-- --- BEGIN op 2185 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '576p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2185

-- --- BEGIN op 2186 ( update quality_profile "1080p HDR" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '576p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 100000;
-- --- END op 2186

-- --- BEGIN op 2187 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 6', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2187

-- --- BEGIN op 2188 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 6', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2188

-- --- BEGIN op 2189 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '1080p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2189

-- --- BEGIN op 2190 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '1080p Balanced Tier 2'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2190

-- --- BEGIN op 2191 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '1080p HDTV Tier 1'
  AND arr_type = 'radarr'
  AND score = 42000;
-- --- END op 2191

-- --- BEGIN op 2192 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '1080p HDTV Tier 1'
  AND arr_type = 'sonarr'
  AND score = 42000;
-- --- END op 2192

-- --- BEGIN op 2193 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '1080p HDTV Tier 2'
  AND arr_type = 'radarr'
  AND score = 41000;
-- --- END op 2193

-- --- BEGIN op 2194 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '1080p HDTV Tier 2'
  AND arr_type = 'sonarr'
  AND score = 41000;
-- --- END op 2194

-- --- BEGIN op 2195 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '1080p HDTV Tier 3'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2195

-- --- BEGIN op 2196 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '1080p HDTV Tier 3'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2196

-- --- BEGIN op 2197 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2197

-- --- BEGIN op 2198 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2198

-- --- BEGIN op 2199 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2199

-- --- BEGIN op 2200 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p HDTV Tier 1'
  AND arr_type = 'radarr'
  AND score = 22000;
-- --- END op 2200

-- --- BEGIN op 2201 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p HDTV Tier 1'
  AND arr_type = 'sonarr'
  AND score = 22000;
-- --- END op 2201

-- --- BEGIN op 2202 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p HDTV Tier 2'
  AND arr_type = 'radarr'
  AND score = 21000;
-- --- END op 2202

-- --- BEGIN op 2203 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p HDTV Tier 2'
  AND arr_type = 'sonarr'
  AND score = 21000;
-- --- END op 2203

-- --- BEGIN op 2204 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p HDTV Tier 3'
  AND arr_type = 'radarr'
  AND score = 20000;
-- --- END op 2204

-- --- BEGIN op 2205 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = '720p HDTV Tier 3'
  AND arr_type = 'sonarr'
  AND score = 20000;
-- --- END op 2205

-- --- BEGIN op 2206 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = 'DVD Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2206

-- --- BEGIN op 2207 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR'
  AND custom_format_name = 'DVD Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 60000;
-- --- END op 2207


-- --- BEGIN op 2164 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'all'
  AND score = 80000;
-- --- END op 2164

-- --- BEGIN op 2165 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 84000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 144000;
-- --- END op 2165

-- --- BEGIN op 2166 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 84000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 144000;
-- --- END op 2166

-- --- BEGIN op 2167 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 83000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 143000;
-- --- END op 2167

-- --- BEGIN op 2168 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 83000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 143000;
-- --- END op 2168

-- --- BEGIN op 2169 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 82000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 142000;
-- --- END op 2169

-- --- BEGIN op 2170 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 82000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 142000;
-- --- END op 2170

-- --- BEGIN op 2171 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 81000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 5'
  AND arr_type = 'radarr'
  AND score = 141000;
-- --- END op 2171

-- --- BEGIN op 2172 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 81000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 5'
  AND arr_type = 'sonarr'
  AND score = 141000;
-- --- END op 2172

-- --- BEGIN op 2173 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'radarr'
  AND score = 140000;
-- --- END op 2173

-- --- BEGIN op 2174 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'sonarr'
  AND score = 140000;
-- --- END op 2174

-- --- BEGIN op 2175 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 22000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '480p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 82000;
-- --- END op 2175

-- --- BEGIN op 2176 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 22000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '480p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 82000;
-- --- END op 2176

-- --- BEGIN op 2177 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 21000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '480p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 81000;
-- --- END op 2177

-- --- BEGIN op 2178 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 21000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '480p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 81000;
-- --- END op 2178

-- --- BEGIN op 2179 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '480p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 80000;
-- --- END op 2179

-- --- BEGIN op 2180 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '480p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 80000;
-- --- END op 2180

-- --- BEGIN op 2181 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 42000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '576p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 102000;
-- --- END op 2181

-- --- BEGIN op 2182 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 42000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '576p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 102000;
-- --- END op 2182

-- --- BEGIN op 2183 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 41000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '576p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2183

-- --- BEGIN op 2184 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 41000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '576p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 101000;
-- --- END op 2184

-- --- BEGIN op 2185 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '576p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2185

-- --- BEGIN op 2186 ( update quality_profile "1080p HDR English" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '576p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 100000;
-- --- END op 2186

-- --- BEGIN op 2187 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 6', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2187

-- --- BEGIN op 2188 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 6', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2188

-- --- BEGIN op 2189 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '1080p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2189

-- --- BEGIN op 2190 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '1080p Balanced Tier 2'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2190

-- --- BEGIN op 2191 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '1080p HDTV Tier 1'
  AND arr_type = 'radarr'
  AND score = 42000;
-- --- END op 2191

-- --- BEGIN op 2192 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '1080p HDTV Tier 1'
  AND arr_type = 'sonarr'
  AND score = 42000;
-- --- END op 2192

-- --- BEGIN op 2193 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '1080p HDTV Tier 2'
  AND arr_type = 'radarr'
  AND score = 41000;
-- --- END op 2193

-- --- BEGIN op 2194 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '1080p HDTV Tier 2'
  AND arr_type = 'sonarr'
  AND score = 41000;
-- --- END op 2194

-- --- BEGIN op 2195 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '1080p HDTV Tier 3'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2195

-- --- BEGIN op 2196 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '1080p HDTV Tier 3'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2196

-- --- BEGIN op 2197 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2197

-- --- BEGIN op 2198 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2198

-- --- BEGIN op 2199 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2199

-- --- BEGIN op 2200 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p HDTV Tier 1'
  AND arr_type = 'radarr'
  AND score = 22000;
-- --- END op 2200

-- --- BEGIN op 2201 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p HDTV Tier 1'
  AND arr_type = 'sonarr'
  AND score = 22000;
-- --- END op 2201

-- --- BEGIN op 2202 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p HDTV Tier 2'
  AND arr_type = 'radarr'
  AND score = 21000;
-- --- END op 2202

-- --- BEGIN op 2203 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p HDTV Tier 2'
  AND arr_type = 'sonarr'
  AND score = 21000;
-- --- END op 2203

-- --- BEGIN op 2204 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p HDTV Tier 3'
  AND arr_type = 'radarr'
  AND score = 20000;
-- --- END op 2204

-- --- BEGIN op 2205 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = '720p HDTV Tier 3'
  AND arr_type = 'sonarr'
  AND score = 20000;
-- --- END op 2205

-- --- BEGIN op 2206 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = 'DVD Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2206

-- --- BEGIN op 2207 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p HDR English'
  AND custom_format_name = 'DVD Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 60000;
-- --- END op 2207


-- --- BEGIN op 2164 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'all'
  AND score = 80000;
-- --- END op 2164

-- --- BEGIN op 2165 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 84000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 144000;
-- --- END op 2165

-- --- BEGIN op 2166 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 84000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 144000;
-- --- END op 2166

-- --- BEGIN op 2167 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 83000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 143000;
-- --- END op 2167

-- --- BEGIN op 2168 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 83000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 143000;
-- --- END op 2168

-- --- BEGIN op 2169 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 82000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 142000;
-- --- END op 2169

-- --- BEGIN op 2170 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 82000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 142000;
-- --- END op 2170

-- --- BEGIN op 2171 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 81000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 5'
  AND arr_type = 'radarr'
  AND score = 141000;
-- --- END op 2171

-- --- BEGIN op 2172 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 81000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 5'
  AND arr_type = 'sonarr'
  AND score = 141000;
-- --- END op 2172

-- --- BEGIN op 2173 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'radarr'
  AND score = 140000;
-- --- END op 2173

-- --- BEGIN op 2174 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Quality Tier 6'
  AND arr_type = 'sonarr'
  AND score = 140000;
-- --- END op 2174

-- --- BEGIN op 2175 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 22000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '480p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 82000;
-- --- END op 2175

-- --- BEGIN op 2176 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 22000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '480p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 82000;
-- --- END op 2176

-- --- BEGIN op 2177 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 21000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '480p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 81000;
-- --- END op 2177

-- --- BEGIN op 2178 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 21000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '480p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 81000;
-- --- END op 2178

-- --- BEGIN op 2179 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '480p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 80000;
-- --- END op 2179

-- --- BEGIN op 2180 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '480p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 80000;
-- --- END op 2180

-- --- BEGIN op 2181 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 42000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '576p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 102000;
-- --- END op 2181

-- --- BEGIN op 2182 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 42000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '576p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 102000;
-- --- END op 2182

-- --- BEGIN op 2183 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 41000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '576p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2183

-- --- BEGIN op 2184 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 41000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '576p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 101000;
-- --- END op 2184

-- --- BEGIN op 2185 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '576p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2185

-- --- BEGIN op 2186 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 40000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '576p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 100000;
-- --- END op 2186

-- --- BEGIN op 2187 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 6', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2187

-- --- BEGIN op 2188 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 6', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2188

-- --- BEGIN op 2189 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2189

-- --- BEGIN op 2190 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p Balanced Tier 2'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2190

-- --- BEGIN op 2191 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p HDTV Tier 1'
  AND arr_type = 'radarr'
  AND score = 42000;
-- --- END op 2191

-- --- BEGIN op 2192 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p HDTV Tier 1'
  AND arr_type = 'sonarr'
  AND score = 42000;
-- --- END op 2192

-- --- BEGIN op 2193 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p HDTV Tier 2'
  AND arr_type = 'radarr'
  AND score = 41000;
-- --- END op 2193

-- --- BEGIN op 2194 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p HDTV Tier 2'
  AND arr_type = 'sonarr'
  AND score = 41000;
-- --- END op 2194

-- --- BEGIN op 2195 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p HDTV Tier 3'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2195

-- --- BEGIN op 2196 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p HDTV Tier 3'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2196

-- --- BEGIN op 2197 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2197

-- --- BEGIN op 2198 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'radarr'
  AND score = 40000;
-- --- END op 2198

-- --- BEGIN op 2199 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p HDTV'
  AND arr_type = 'sonarr'
  AND score = 40000;
-- --- END op 2199

-- --- BEGIN op 2200 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p HDTV Tier 1'
  AND arr_type = 'radarr'
  AND score = 22000;
-- --- END op 2200

-- --- BEGIN op 2201 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p HDTV Tier 1'
  AND arr_type = 'sonarr'
  AND score = 22000;
-- --- END op 2201

-- --- BEGIN op 2202 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p HDTV Tier 2'
  AND arr_type = 'radarr'
  AND score = 21000;
-- --- END op 2202

-- --- BEGIN op 2203 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p HDTV Tier 2'
  AND arr_type = 'sonarr'
  AND score = 21000;
-- --- END op 2203

-- --- BEGIN op 2204 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p HDTV Tier 3'
  AND arr_type = 'radarr'
  AND score = 20000;
-- --- END op 2204

-- --- BEGIN op 2205 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p HDTV Tier 3'
  AND arr_type = 'sonarr'
  AND score = 20000;
-- --- END op 2205

-- --- BEGIN op 2206 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'DVD Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2206

-- --- BEGIN op 2207 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'DVD Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 60000;
-- --- END op 2207