-- @operation: export
-- @entity: batch
-- @name: Implement status quo into db
-- @exportedAt: 2026-05-23T19:49:22.789Z
-- @opIds: 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991, 992, 993, 994, 995, 996, 997, 998, 999, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082, 1083, 1084, 1085, 1086, 1087, 1088, 1089, 1090, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1101, 1102, 1103, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135, 1136, 1137, 1138, 1139, 1140, 1141, 1142, 1143, 1144, 1145, 1146, 1147, 1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1165, 1166, 1167, 1168, 1169, 1170, 1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189, 1190, 1191, 1192, 1193, 1194, 1195, 1196, 1197, 1198, 1199, 1200, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268, 1269, 1270, 1271, 1272, 1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1284, 1285, 1286, 1287, 1288, 1289, 1290, 1291, 1292, 1293, 1294, 1295, 1296, 1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1319, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1327, 1328, 1329, 1330, 1331, 1332, 1333, 1334, 1335, 1336, 1337, 1338, 1339, 1340, 1341, 1342, 1343, 1344, 1345, 1346, 1347, 1348, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357, 1358, 1359, 1360, 1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374, 1375, 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391, 1392, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1416, 1417, 1418, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1436, 1437, 1438, 1439, 1440, 1441, 1442, 1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1460, 1461, 1462, 1463, 1464, 1465, 1466, 1467, 1468, 1469, 1470, 1471, 1472, 1473, 1474, 1475, 1476, 1477, 1478, 1479, 1480, 1481, 1482, 1483, 1484, 1485, 1486, 1487, 1488, 1489, 1490, 1491, 1492, 1493, 1494, 1495, 1496, 1497, 1498, 1499, 1500, 1501, 1502, 1503, 1504, 1505, 1506, 1507, 1508, 1509, 1510, 1511, 1512, 1513, 1514, 1515, 1516, 1517, 1518, 1519, 1520, 1521, 1522, 1523, 1524, 1525, 1526, 1527, 1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535, 1536, 1537, 1538, 1539, 1540, 1541, 1542, 1543, 1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551, 1552, 1553, 1554, 1555, 1556, 1557, 1558, 1559, 1560, 1561, 1562, 1563, 1564, 1565, 1566, 1567, 1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575, 1576, 1577, 1578, 1579, 1580, 1581, 1582, 1583, 1584, 1585, 1586, 1587, 1588, 1589, 1590, 1591, 1592, 1593, 1594, 1595, 1596, 1597, 1598, 1599, 1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608, 1609, 1610, 1611, 1612, 1613, 1614, 1615, 1616, 1617, 1618, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1627, 1628, 1629, 1630, 1631, 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1642, 1643, 1644, 1645, 1646, 1647, 1648, 1649, 1650, 1651, 1652, 1653, 1654, 1655, 1656, 1657, 1658, 1659, 1660, 1661, 1662, 1663, 1664, 1665, 1666, 1667, 1668, 1669, 1670, 1671, 1672, 1673, 1674, 1675, 1676, 1677, 1678, 1679, 1680, 1681, 1682, 1683, 1684, 1685, 1686, 1687, 1688, 1689, 1690, 1691, 1692, 1693, 1694, 1695, 1696, 1697, 1698, 1699, 1700, 1701, 1702, 1703, 1704, 1705, 1706, 1707, 1708, 1709, 1710, 1711, 1712, 1713, 1714, 1715, 1716, 1717, 1718, 1719, 1720, 1721, 1722, 1723, 1724, 1725, 1726, 1727, 1728, 1729, 1730, 1731, 1732, 1733, 1734, 1735, 1736, 1737, 1738, 1739, 1740, 1741, 1742, 1743, 1744, 1745, 1746, 1747, 1748, 1749, 1750, 1751, 1752, 1753, 1754, 1755, 1756, 1757, 1758, 1759, 1760, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772, 1773, 1774, 1775, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785, 1786, 1787, 1788, 1789, 1790, 1791, 1792, 1793, 1794, 1795, 1796, 1797, 1798, 1799, 1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808, 1809, 1810, 1811, 1812, 1813, 1814, 1815, 1816, 1817, 1818, 1819, 1820, 1821, 1822, 1823, 1824, 1825, 1826, 1827, 1828, 1829, 1830, 1831, 1832, 1833, 1834, 1835, 1836, 1837, 1838, 1839, 1840, 1841, 1842, 1843, 1844, 1845, 1846, 1847, 1848, 1849, 1850, 1851, 1852, 1853, 1854, 1855, 1856, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864, 1865, 1866, 1867, 1868, 1869, 1870, 1871, 1872, 1873, 1874, 1875, 1876, 1877, 1878, 1879, 1880, 1881, 1882, 1883, 1884, 1885, 1886, 1887, 1888, 1889, 1890, 1891, 1892, 1893, 1894, 1895, 1896, 1897, 1898, 1899, 1900, 1901, 1902, 1903, 1904, 1905, 1906, 1907, 1908, 1909, 1910, 1911, 1912, 1913, 1914, 1915, 1916, 1917, 1918, 1919, 1920, 1921, 1922, 1923, 1924, 1925, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1935, 1936, 1937, 1938, 1939, 1940, 1941, 1942, 1943, 1944, 1945, 1946, 1947, 1948, 1949, 1950, 1951, 1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 2065, 2066, 2067, 2068, 2069, 2070, 2071, 2072, 2073, 2074, 2075, 2076, 2077, 2078, 2079, 2080, 2081, 2082, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2093, 2094, 2095, 2096, 2097, 2098, 2099, 2100, 2101, 2102, 2103, 2104, 2105, 2106, 2107, 2108, 2109, 2110, 2111, 2112, 2113, 2114, 2115, 2116, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2127, 2128, 2129, 2130, 2131, 2132, 2133, 2134, 2135, 2136, 2137, 2138, 2139, 2140, 2141, 2142, 2143, 2144, 2145, 2146, 2147, 2148, 2149, 2150, 2151, 2152, 2153, 2154, 2155

-- --- BEGIN op 325 ( update radarr_naming "Radarr" )
update "radarr_naming" set "replace_illegal_characters" = 1 where "name" = 'Radarr' and "replace_illegal_characters" = 0;
-- --- END op 325

-- --- BEGIN op 326 ( update sonarr_naming "Sonarr" )
update "sonarr_naming" set "replace_illegal_characters" = 1 where "name" = 'Sonarr' and "replace_illegal_characters" = 0;
-- --- END op 326

-- --- BEGIN op 327 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 20, "preferred_size" = 10 where "name" = 'Radarr' and "quality_name" = 'BR-DISK' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 327

-- --- BEGIN op 328 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 40, "max_size" = 0, "preferred_size" = 1990 where "name" = 'Radarr' and "quality_name" = 'Bluray-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 328

-- --- BEGIN op 329 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 100, "max_size" = 0, "preferred_size" = 1990 where "name" = 'Radarr' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 329

-- --- BEGIN op 330 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 90 where "name" = 'Radarr' and "quality_name" = 'Bluray-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 330

-- --- BEGIN op 331 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 200, "preferred_size" = 190 where "name" = 'Radarr' and "quality_name" = 'Bluray-576p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 331

-- --- BEGIN op 332 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 200, "preferred_size" = 190 where "name" = 'Radarr' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 332

-- --- BEGIN op 333 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 20, "preferred_size" = 10 where "name" = 'Radarr' and "quality_name" = 'CAM' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 333

-- --- BEGIN op 334 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 90 where "name" = 'Radarr' and "quality_name" = 'DVD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 334

-- --- BEGIN op 335 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 90 where "name" = 'Radarr' and "quality_name" = 'DVD-R' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 335

-- --- BEGIN op 336 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 20, "preferred_size" = 10 where "name" = 'Radarr' and "quality_name" = 'DVDSCR' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 336

-- --- BEGIN op 337 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 200, "preferred_size" = 190 where "name" = 'Radarr' and "quality_name" = 'HDTV-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 337

-- --- BEGIN op 338 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 60, "max_size" = 0, "preferred_size" = 1990 where "name" = 'Radarr' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 338

-- --- BEGIN op 339 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 90 where "name" = 'Radarr' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 339

-- --- BEGIN op 340 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 200, "preferred_size" = 10 where "name" = 'Radarr' and "quality_name" = 'REGIONAL' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 340

-- --- BEGIN op 341 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 20, "preferred_size" = 10 where "name" = 'Radarr' and "quality_name" = 'Raw-HD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 341

-- --- BEGIN op 342 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 60, "max_size" = 0, "preferred_size" = 1990 where "name" = 'Radarr' and "quality_name" = 'Remux-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 342

-- --- BEGIN op 343 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 150, "max_size" = 0, "preferred_size" = 1990 where "name" = 'Radarr' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 343

-- --- BEGIN op 344 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 90 where "name" = 'Radarr' and "quality_name" = 'SDTV' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 344

-- --- BEGIN op 345 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 20, "preferred_size" = 10 where "name" = 'Radarr' and "quality_name" = 'TELECINE' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 345

-- --- BEGIN op 346 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 90 where "name" = 'Radarr' and "quality_name" = 'TELESYNC' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 346

-- --- BEGIN op 347 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 20, "preferred_size" = 10 where "name" = 'Radarr' and "quality_name" = 'Unknown' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 347

-- --- BEGIN op 348 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 200, "preferred_size" = 190 where "name" = 'Radarr' and "quality_name" = 'WEBDL-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 348

-- --- BEGIN op 349 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 25, "max_size" = 0, "preferred_size" = 1990 where "name" = 'Radarr' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 349

-- --- BEGIN op 350 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 90 where "name" = 'Radarr' and "quality_name" = 'WEBDL-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 350

-- --- BEGIN op 351 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 90 where "name" = 'Radarr' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 351

-- --- BEGIN op 352 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 200, "preferred_size" = 190 where "name" = 'Radarr' and "quality_name" = 'WEBRip-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 352

-- --- BEGIN op 353 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 25, "max_size" = 0, "preferred_size" = 1990 where "name" = 'Radarr' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 353

-- --- BEGIN op 354 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 90 where "name" = 'Radarr' and "quality_name" = 'WEBRip-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 354

-- --- BEGIN op 355 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 100, "preferred_size" = 90 where "name" = 'Radarr' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 355

-- --- BEGIN op 356 ( update radarr_quality_definitions "Radarr" )
update "radarr_quality_definitions" set "min_size" = 0, "max_size" = 20, "preferred_size" = 10 where "name" = 'Radarr' and "quality_name" = 'WORKPRINT' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 1990;
-- --- END op 356

-- --- BEGIN op 357 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 130, "preferred_size" = 120 where "name" = 'Sonarr' and "quality_name" = 'Bluray-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 357

-- --- BEGIN op 358 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 60, "max_size" = 0, "preferred_size" = 990 where "name" = 'Sonarr' and "quality_name" = 'Bluray-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 358

-- --- BEGIN op 359 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 100, "preferred_size" = 90 where "name" = 'Sonarr' and "quality_name" = 'Bluray-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 359

-- --- BEGIN op 360 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 100, "preferred_size" = 90 where "name" = 'Sonarr' and "quality_name" = 'Bluray-576p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 360

-- --- BEGIN op 361 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 10, "max_size" = 130, "preferred_size" = 120 where "name" = 'Sonarr' and "quality_name" = 'Bluray-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 361

-- --- BEGIN op 362 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 100, "preferred_size" = 90 where "name" = 'Sonarr' and "quality_name" = 'DVD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 362

-- --- BEGIN op 363 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 130, "preferred_size" = 95 where "name" = 'Sonarr' and "quality_name" = 'HDTV-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 363

-- --- BEGIN op 364 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 25, "max_size" = 0, "preferred_size" = 190 where "name" = 'Sonarr' and "quality_name" = 'HDTV-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 364

-- --- BEGIN op 365 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 10, "max_size" = 130, "preferred_size" = 115 where "name" = 'Sonarr' and "quality_name" = 'HDTV-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 365

-- --- BEGIN op 366 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Sonarr' and "quality_name" = 'Raw-HD' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 366

-- --- BEGIN op 367 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 70, "max_size" = 0, "preferred_size" = 400 where "name" = 'Sonarr' and "quality_name" = 'Remux-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 367

-- --- BEGIN op 368 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 100, "max_size" = 0, "preferred_size" = 990 where "name" = 'Sonarr' and "quality_name" = 'Remux-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 368

-- --- BEGIN op 369 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 100, "preferred_size" = 90 where "name" = 'Sonarr' and "quality_name" = 'SDTV' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 369

-- --- BEGIN op 370 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 0, "preferred_size" = 95 where "name" = 'Sonarr' and "quality_name" = 'Unknown' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 370

-- --- BEGIN op 371 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 130, "preferred_size" = 120 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 371

-- --- BEGIN op 372 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 25, "max_size" = 0, "preferred_size" = 990 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 372

-- --- BEGIN op 373 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 100, "preferred_size" = 90 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 373

-- --- BEGIN op 374 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 10, "max_size" = 130, "preferred_size" = 115 where "name" = 'Sonarr' and "quality_name" = 'WEBDL-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 374

-- --- BEGIN op 375 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 0, "max_size" = 130, "preferred_size" = 120 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-1080p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 375

-- --- BEGIN op 376 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 25, "max_size" = 0, "preferred_size" = 990 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-2160p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 376

-- --- BEGIN op 377 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 2, "max_size" = 100, "preferred_size" = 90 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-480p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 377

-- --- BEGIN op 378 ( update sonarr_quality_definitions "Sonarr" )
update "sonarr_quality_definitions" set "min_size" = 10, "max_size" = 130, "preferred_size" = 120 where "name" = 'Sonarr' and "quality_name" = 'WEBRip-720p' and "min_size" = 0 and "max_size" = 0 and "preferred_size" = 990;
-- --- END op 378

-- --- BEGIN op 379 ( create custom_format "Anime Dual Audio" )
insert into "custom_formats" ("name", "description") values ('Anime Dual Audio', '');
-- --- END op 379

-- --- BEGIN op 380 ( update custom_format "Anime Dual Audio" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime Dual Audio', 'Anime');

insert into "tags" ("name") values ('Audio') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Anime Dual Audio', 'Audio');
-- --- END op 380

-- --- BEGIN op 381 ( update custom_format "Anime Dual Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Dual Audio', 'Chinese', 'language', 'all', 1, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Anime Dual Audio', 'Chinese', 'Chinese', 0);
-- --- END op 381

-- --- BEGIN op 382 ( update custom_format "Anime Dual Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Dual Audio', 'Japanese', 'language', 'all', 1, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Anime Dual Audio', 'Japanese', 'Japanese', 0);
-- --- END op 382

-- --- BEGIN op 383 ( update custom_format "Anime Dual Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Dual Audio', 'Korean', 'language', 'all', 1, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Anime Dual Audio', 'Korean', 'Korean', 0);
-- --- END op 383

-- --- BEGIN op 384 ( update custom_format "Anime Dual Audio" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Anime Dual Audio', 'Dual Audio', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Anime Dual Audio', 'Dual Audio', 'Dual Audio');
-- --- END op 384

-- --- BEGIN op 385 ( create regular_expression "torenter69" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('torenter69', '\b(torenter69)\b', NULL, NULL);
-- --- END op 385

-- --- BEGIN op 386 ( create regular_expression "Yameii" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Yameii', '\[Yameii\]|-Yameii\b', 'Matches "<group>" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Yameii', 'Release Group');
-- --- END op 386

-- --- BEGIN op 387 ( create regular_expression "Ulysse" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Ulysse', '.*Ulysse.*', 'French release group', NULL);

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ulysse', 'Anime');

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Ulysse', 'Release Group');
-- --- END op 387

-- --- BEGIN op 388 ( create regular_expression "Subtitles" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Subtitles', '^(?!.*(Sub(title)?)).*', 'Checks if subtitles are in text', NULL);
-- --- END op 388

-- --- BEGIN op 389 ( create regular_expression "LYPSG" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('LYPSG', '(?<=^|[\s.-])LYPSG\b', 'Matches "<group>" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LYPSG', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('LYPSG', 'Anime');
-- --- END op 389

-- --- BEGIN op 390 ( create regular_expression "KamiFS" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KamiFS', '(?<=^|[\s.-])KamiFS\b', 'Matches "<group>" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KamiFS', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KamiFS', 'Anime');
-- --- END op 390

-- --- BEGIN op 391 ( create regular_expression "KaiDubs" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KaiDubs', '(?<=^|[\s.-])KaiDubs\b', 'Matches "<group>" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KaiDubs', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('KaiDubs', 'Anime');
-- --- END op 391

-- --- BEGIN op 392 ( create regular_expression "KS (Not Dual Audio)" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('KS (Not Dual Audio)', '^(?!.*(dual[ ._-]?audio|[\[(]dual[\]]|(JA|ZH)\+EN|EN\+(JA|ZH))).*\bKS\b', NULL, NULL);
-- --- END op 392

-- --- BEGIN op 393 ( create regular_expression "Golumpa" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('Golumpa', '(?<=^|[\s.-])Golumpa\b', 'Matches "<group>" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Golumpa', 'Release Group');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Golumpa', 'Anime');
-- --- END op 393

-- --- BEGIN op 394 ( update regular_expression "Dual Audio" )
insert into "tags" ("name") values ('Audio') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('Dual Audio', 'Audio');
-- --- END op 394

-- --- BEGIN op 395 ( create regular_expression "CEBRAY" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CEBRAY', '(?<=^|[\s.-])CEBRAY\b', 'Matches "<group>" when preceded by whitespace, a hyphen or dot', NULL);

insert into "tags" ("name") values ('Release Group') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CEBRAY', 'Release Group');
-- --- END op 395

-- --- BEGIN op 396 ( update regular_expression "CEBRAY" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO regular_expression_tags (regular_expression_name, tag_name) VALUES ('CEBRAY', 'Anime');
-- --- END op 396

-- --- BEGIN op 397 ( create custom_format "Unwanted Anime Languages" )
insert into "custom_formats" ("name", "description") values ('Unwanted Anime Languages', '');
-- --- END op 397

-- --- BEGIN op 398 ( update custom_format "Unwanted Anime Languages" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Unwanted Anime Languages', 'Anime');

insert into "tags" ("name") values ('Audio') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Unwanted Anime Languages', 'Audio');
-- --- END op 398

-- --- BEGIN op 399 ( update custom_format "Unwanted Anime Languages" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Unwanted Anime Languages', 'CEBRAY', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Unwanted Anime Languages', 'CEBRAY', 'CEBRAY');
-- --- END op 399

-- --- BEGIN op 400 ( update custom_format "Unwanted Anime Languages" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Unwanted Anime Languages', 'LYPSG', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Unwanted Anime Languages', 'LYPSG', 'LYPSG');
-- --- END op 400

-- --- BEGIN op 401 ( update custom_format "Unwanted Anime Languages" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Unwanted Anime Languages', 'Ulysse', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Unwanted Anime Languages', 'Ulysse', 'Ulysse');
-- --- END op 401

-- --- BEGIN op 402 ( update custom_format "Unwanted Anime Languages" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Unwanted Anime Languages', 'French', 'language', 'all', 0, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Unwanted Anime Languages', 'French', 'French', 0);
-- --- END op 402

-- --- BEGIN op 403 ( update custom_format "Unwanted Anime Languages" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Unwanted Anime Languages', 'German', 'language', 'all', 0, 0);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Unwanted Anime Languages', 'German', 'German', 0);
-- --- END op 403

-- --- BEGIN op 404 ( create custom_format "Sub only" )
insert into "custom_formats" ("name", "description") values ('Sub only', '');
-- --- END op 404

-- --- BEGIN op 405 ( update custom_format "Sub only" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Sub only', 'Anime');

insert into "tags" ("name") values ('Subtitles') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Sub only', 'Subtitles');
-- --- END op 405

-- --- BEGIN op 406 ( update custom_format "Sub only" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Sub only', 'No Dual Audio', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Sub only', 'No Dual Audio', 'Dual Audio');
-- --- END op 406

-- --- BEGIN op 407 ( update custom_format "Sub only" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Sub only', 'Sub detected', 'release_title', 'all', 1, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Sub only', 'Sub detected', 'Subtitles');
-- --- END op 407

-- --- BEGIN op 408 ( create custom_format "Dubs only" )
insert into "custom_formats" ("name", "description") values ('Dubs only', '');
-- --- END op 408

-- --- BEGIN op 409 ( update custom_format "Dubs only" )
insert into "tags" ("name") values ('Audio') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Dubs only', 'Audio');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Dubs only', 'Anime');
-- --- END op 409

-- --- BEGIN op 410 ( update custom_format "Dubs only" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dubs only', 'Koten Gars', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dubs only', 'Koten Gars', 'Koten_Gars');
-- --- END op 410

-- --- BEGIN op 411 ( update custom_format "Dubs only" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dubs only', 'Yamei', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dubs only', 'Yamei', 'Yameii');
-- --- END op 411

-- --- BEGIN op 412 ( update custom_format "Dubs only" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dubs only', 'torenter69', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dubs only', 'torenter69', 'torenter69');
-- --- END op 412

-- --- BEGIN op 413 ( update custom_format "Dubs only" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dubs only', 'KS (Not Dual Audio)', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dubs only', 'KS (Not Dual Audio)', 'KS (Not Dual Audio)');
-- --- END op 413

-- --- BEGIN op 414 ( update custom_format "Dubs only" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dubs only', 'KamiFS', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dubs only', 'KamiFS', 'KamiFS');
-- --- END op 414

-- --- BEGIN op 415 ( update custom_format "Dubs only" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dubs only', 'KaiDubs', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dubs only', 'KaiDubs', 'KaiDubs');
-- --- END op 415

-- --- BEGIN op 416 ( update custom_format "Dubs only" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dubs only', 'Golumpa', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dubs only', 'Golumpa', 'Golumpa');
-- --- END op 416

-- --- BEGIN op 417 ( update custom_format "Dubs only" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Dubs only', 'Dubbed', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dubs only', 'Dubbed', 'Dual Audio');
-- --- END op 417

-- --- BEGIN op 418 ( update custom_format "Anime Dual Audio" )
UPDATE custom_format_conditions
SET required = 1
WHERE custom_format_name = 'Anime Dual Audio'
  AND name = 'Dual Audio'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 418

-- --- BEGIN op 419 ( delete quality_profile "720p Quality" )
delete from "quality_profile_tags" where "quality_profile_name" = '720p Quality';

delete from "quality_profile_languages" where "quality_profile_name" = '720p Quality';

delete from "quality_profile_qualities" where "quality_profile_name" = '720p Quality';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '720p Quality';

delete from "quality_groups" where "quality_profile_name" = '720p Quality';

delete from "quality_profiles" where "name" = '720p Quality';
-- --- END op 419

-- --- BEGIN op 420 ( update quality_profile "2160p Remux" )
DELETE FROM quality_profile_languages WHERE quality_profile_name = '2160p Remux' AND language_name = 'Any';

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT '2160p Remux', 'German', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = '2160p Remux'
);
-- --- END op 420

-- --- BEGIN op 421 ( update quality_profile "2160p Remux" )
insert into "tags" ("name") values ('Builtin') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Remux', 'Builtin');
-- --- END op 421

-- --- BEGIN op 422 ( update quality_profile "1080p Remux" )
DELETE FROM quality_profile_languages WHERE quality_profile_name = '1080p Remux' AND language_name = 'Any';

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT '1080p Remux', 'German', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = '1080p Remux'
);
-- --- END op 422

-- --- BEGIN op 423 ( update quality_profile "1080p Remux" )
insert into "tags" ("name") values ('Builtin') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Remux', 'Builtin');
-- --- END op 423

-- --- BEGIN op 424 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_languages WHERE quality_profile_name = '2160p Quality' AND language_name = 'Any';

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT '2160p Quality', 'German', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = '2160p Quality'
);
-- --- END op 424

-- --- BEGIN op 425 ( update quality_profile "2160p Quality" )
insert into "tags" ("name") values ('Builtin') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Quality', 'Builtin');

insert into "tags" ("name") values ('Sync') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Quality', 'Sync');
-- --- END op 425

-- --- BEGIN op 426 ( delete quality_profile "2160p Efficient" )
delete from "quality_profile_tags" where "quality_profile_name" = '2160p Efficient';

delete from "quality_profile_languages" where "quality_profile_name" = '2160p Efficient';

delete from "quality_profile_qualities" where "quality_profile_name" = '2160p Efficient';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Efficient';

delete from "quality_groups" where "quality_profile_name" = '2160p Efficient';

delete from "quality_profiles" where "name" = '2160p Efficient';
-- --- END op 426

-- --- BEGIN op 427 ( delete quality_profile "2160p Balanced" )
delete from "quality_profile_tags" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profile_languages" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profile_qualities" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Balanced';

delete from "quality_groups" where "quality_profile_name" = '2160p Balanced';

delete from "quality_profiles" where "name" = '2160p Balanced';
-- --- END op 427

-- --- BEGIN op 428 ( delete quality_profile "1080p Remux" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Remux';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Remux';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Remux';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Remux';

delete from "quality_groups" where "quality_profile_name" = '1080p Remux';

delete from "quality_profiles" where "name" = '1080p Remux';
-- --- END op 428

-- --- BEGIN op 429 ( delete quality_profile "1080p Quality" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Quality';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Quality';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Quality';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Quality';

delete from "quality_groups" where "quality_profile_name" = '1080p Quality';

delete from "quality_profiles" where "name" = '1080p Quality';
-- --- END op 429

-- --- BEGIN op 430 ( delete quality_profile "1080p Efficient" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Efficient';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Efficient';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Efficient';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Efficient';

delete from "quality_groups" where "quality_profile_name" = '1080p Efficient';

delete from "quality_profiles" where "name" = '1080p Efficient';
-- --- END op 430

-- --- BEGIN op 431 ( delete quality_profile "1080p Compact" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Compact';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Compact';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Compact';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Compact';

delete from "quality_groups" where "quality_profile_name" = '1080p Compact';

delete from "quality_profiles" where "name" = '1080p Compact';
-- --- END op 431

-- --- BEGIN op 432 ( delete quality_profile "1080p Balanced" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Balanced';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Balanced';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Balanced';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Balanced';

delete from "quality_groups" where "quality_profile_name" = '1080p Balanced';

delete from "quality_profiles" where "name" = '1080p Balanced';
-- --- END op 432

-- --- BEGIN op 433 ( create quality_profile "1080p Quality HDR English" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('1080p Quality HDR English', '1080p Quality HDR utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent x265 HDR** 1080p Encodes. 

- Average Movie Sizes ~ 10 to 20gb per Movie
- Movie Quality Ranking ~ 9/10
- Average TV Sizes ~ 4 to 10gb per Episode
- TV Quality Ranking ~ 9/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Quality HDR English', '1080p');

insert into "tags" ("name") values ('HDR') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Quality HDR English', 'HDR');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Quality HDR English', 'Lossy Audio');

insert into "tags" ("name") values ('Quality Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Quality HDR English', 'Quality Focused');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Quality HDR English', 'x264');

insert into "tags" ("name") values ('x265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Quality HDR English', 'x265');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Quality HDR English', '1080p Quality HDR');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'Bluray-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'WEBDL-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'WEBRip-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'Bluray-720p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'WEBDL-720p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'WEBRip-720p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'Bluray-576p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'Bluray-480p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'WEBDL-480p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'DVD', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'HDTV-1080p', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'HDTV-720p', 11);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Quality HDR English', '1080p Quality HDR', 'SDTV', 12);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', NULL, '1080p Quality HDR', 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'Bluray-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'WEBDL-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'WEBRip-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'Remux-1080p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'WEBRip-480p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'HDTV-480p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'BR-DISK', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'CAM', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'DVD-R', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'DVDSCR', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'Raw-HD', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'REGIONAL', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'TELECINE', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'TELESYNC', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'WORKPRINT', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Quality HDR English', 'Unknown', NULL, 18, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('1080p Quality HDR English', 'Any', 'simple');
-- --- END op 433

-- --- BEGIN op 434 ( update quality_profile "1080p Quality HDR English" )
update "quality_profiles" set "minimum_custom_format_score" = 200000 where "name" = '1080p Quality HDR English' and "minimum_custom_format_score" = 0;
-- --- END op 434

-- --- BEGIN op 435 ( update quality_profile "1080p Quality HDR English" )
update "quality_profiles" set "upgrade_until_score" = 1000000 where "name" = '1080p Quality HDR English' and "upgrade_until_score" = 0;
-- --- END op 435

-- --- BEGIN op 436 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Balanced Tier 1', 'radarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 436

-- --- BEGIN op 437 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Balanced Tier 1', 'sonarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 437

-- --- BEGIN op 438 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Balanced Tier 2', 'radarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 438

-- --- BEGIN op 439 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Balanced Tier 2', 'sonarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 439

-- --- BEGIN op 440 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Bluray', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 440

-- --- BEGIN op 441 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Bluray', 'sonarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 441

-- --- BEGIN op 442 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 442

-- --- BEGIN op 443 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 443

-- --- BEGIN op 444 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 444

-- --- BEGIN op 445 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 445

-- --- BEGIN op 446 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 446

-- --- BEGIN op 447 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 447

-- --- BEGIN op 448 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 448

-- --- BEGIN op 449 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 449

-- --- BEGIN op 450 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 1', 'all', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 450

-- --- BEGIN op 451 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 1', 'radarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 451

-- --- BEGIN op 452 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 1', 'sonarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 452

-- --- BEGIN op 453 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 453

-- --- BEGIN op 454 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 2', 'radarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 454

-- --- BEGIN op 455 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 2', 'sonarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 455

-- --- BEGIN op 456 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 456

-- --- BEGIN op 457 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 3', 'radarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 457

-- --- BEGIN op 458 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 3', 'sonarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 458

-- --- BEGIN op 459 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 459

-- --- BEGIN op 460 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 4', 'radarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 460

-- --- BEGIN op 461 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 4', 'sonarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 461

-- --- BEGIN op 462 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 462

-- --- BEGIN op 463 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 5', 'radarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 463

-- --- BEGIN op 464 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 5', 'sonarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 464

-- --- BEGIN op 465 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 465

-- --- BEGIN op 466 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 6', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 466

-- --- BEGIN op 467 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p Quality Tier 6', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 467

-- --- BEGIN op 468 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p WEB-DL', 'radarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 468

-- --- BEGIN op 469 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p WEB-DL', 'sonarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 469

-- --- BEGIN op 470 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '1080p WEBRip', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 470

-- --- BEGIN op 471 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 471

-- --- BEGIN op 472 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p Bluray', 'radarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 472

-- --- BEGIN op 473 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p Bluray', 'sonarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 473

-- --- BEGIN op 474 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p Quality Tier 1', 'radarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 474

-- --- BEGIN op 475 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p Quality Tier 1', 'sonarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 475

-- --- BEGIN op 476 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 476

-- --- BEGIN op 477 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 477

-- --- BEGIN op 478 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 478

-- --- BEGIN op 479 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 479

-- --- BEGIN op 480 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 480

-- --- BEGIN op 481 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 481

-- --- BEGIN op 482 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p WEB-DL', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 482

-- --- BEGIN op 483 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '480p WEB-DL', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 483

-- --- BEGIN op 484 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 484

-- --- BEGIN op 485 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 485

-- --- BEGIN op 486 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p Quality Tier 1', 'radarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 486

-- --- BEGIN op 487 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p Quality Tier 1', 'sonarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 487

-- --- BEGIN op 488 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 488

-- --- BEGIN op 489 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 489

-- --- BEGIN op 490 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 490

-- --- BEGIN op 491 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 491

-- --- BEGIN op 492 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 492

-- --- BEGIN op 493 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 493

-- --- BEGIN op 494 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p WEB-DL', 'radarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 494

-- --- BEGIN op 495 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '576p WEB-DL', 'sonarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 495

-- --- BEGIN op 496 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Balanced Tier 1', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 496

-- --- BEGIN op 497 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Balanced Tier 1', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 497

-- --- BEGIN op 498 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Bluray', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 498

-- --- BEGIN op 499 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Bluray', 'sonarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 499

-- --- BEGIN op 500 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 500

-- --- BEGIN op 501 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 501

-- --- BEGIN op 502 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 502

-- --- BEGIN op 503 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 503

-- --- BEGIN op 504 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 504

-- --- BEGIN op 505 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 505

-- --- BEGIN op 506 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 506

-- --- BEGIN op 507 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 507

-- --- BEGIN op 508 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 508

-- --- BEGIN op 509 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 1', 'radarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 509

-- --- BEGIN op 510 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 1', 'sonarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 510

-- --- BEGIN op 511 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 511

-- --- BEGIN op 512 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 512

-- --- BEGIN op 513 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 513

-- --- BEGIN op 514 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 514

-- --- BEGIN op 515 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 515

-- --- BEGIN op 516 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 516

-- --- BEGIN op 517 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 517

-- --- BEGIN op 518 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 518

-- --- BEGIN op 519 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 519

-- --- BEGIN op 520 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 520

-- --- BEGIN op 521 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 521

-- --- BEGIN op 522 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 522

-- --- BEGIN op 523 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 523

-- --- BEGIN op 524 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 524

-- --- BEGIN op 525 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 525

-- --- BEGIN op 526 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p WEB-DL', 'radarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 526

-- --- BEGIN op 527 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p WEB-DL', 'sonarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 527

-- --- BEGIN op 528 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', '720p WEBRip', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 528

-- --- BEGIN op 529 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 529

-- --- BEGIN op 530 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'AMZN', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'all'
);
-- --- END op 530

-- --- BEGIN op 531 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 531

-- --- BEGIN op 532 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 532

-- --- BEGIN op 533 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 533

-- --- BEGIN op 534 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 534

-- --- BEGIN op 535 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 535

-- --- BEGIN op 536 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 536

-- --- BEGIN op 537 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 537

-- --- BEGIN op 538 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 538

-- --- BEGIN op 539 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Banned UHD Bluray', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'all'
);
-- --- END op 539

-- --- BEGIN op 540 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 540

-- --- BEGIN op 541 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 541

-- --- BEGIN op 542 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 542

-- --- BEGIN op 543 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 543

-- --- BEGIN op 544 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 544

-- --- BEGIN op 545 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DSNP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 545

-- --- BEGIN op 546 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DSNP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 546

-- --- BEGIN op 547 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 547

-- --- BEGIN op 548 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 548

-- --- BEGIN op 549 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 549

-- --- BEGIN op 550 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DVD', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 550

-- --- BEGIN op 551 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DVD', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 551

-- --- BEGIN op 552 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DVD Quality Tier 1', 'radarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 552

-- --- BEGIN op 553 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DVD Quality Tier 1', 'sonarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 553

-- --- BEGIN op 554 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 554

-- --- BEGIN op 555 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 555

-- --- BEGIN op 556 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DVD Remux', 'radarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 556

-- --- BEGIN op 557 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'DVD Remux', 'sonarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 557

-- --- BEGIN op 558 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Dolby Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'all'
);
-- --- END op 558

-- --- BEGIN op 559 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 559

-- --- BEGIN op 560 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 560

-- --- BEGIN op 561 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Dolby Vision', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 561

-- --- BEGIN op 562 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Dolby Vision (Without Fallback)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'all'
);
-- --- END op 562

-- --- BEGIN op 563 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 563

-- --- BEGIN op 564 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 564

-- --- BEGIN op 565 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 565

-- --- BEGIN op 566 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 566

-- --- BEGIN op 567 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 567

-- --- BEGIN op 568 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 568

-- --- BEGIN op 569 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 569

-- --- BEGIN op 570 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 570

-- --- BEGIN op 571 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'HDR', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 571

-- --- BEGIN op 572 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'HDR (Missing)', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'all'
);
-- --- END op 572

-- --- BEGIN op 573 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'HDR10+', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 573

-- --- BEGIN op 574 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'HMAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'all'
);
-- --- END op 574

-- --- BEGIN op 575 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 575

-- --- BEGIN op 576 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 576

-- --- BEGIN op 577 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'MA', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 577

-- --- BEGIN op 578 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'MAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'MAX'
    AND arr_type = 'all'
);
-- --- END op 578

-- --- BEGIN op 579 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 579

-- --- BEGIN op 580 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 580

-- --- BEGIN op 581 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 581

-- --- BEGIN op 582 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 582

-- --- BEGIN op 583 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 583

-- --- BEGIN op 584 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 584

-- --- BEGIN op 585 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 585

-- --- BEGIN op 586 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 586

-- --- BEGIN op 587 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 587

-- --- BEGIN op 588 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 588

-- --- BEGIN op 589 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 589

-- --- BEGIN op 590 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 590

-- --- BEGIN op 591 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 591

-- --- BEGIN op 592 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 592

-- --- BEGIN op 593 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 593

-- --- BEGIN op 594 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 594

-- --- BEGIN op 595 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 595

-- --- BEGIN op 596 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 596

-- --- BEGIN op 597 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 597

-- --- BEGIN op 598 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 598

-- --- BEGIN op 599 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 599

-- --- BEGIN op 600 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 600

-- --- BEGIN op 601 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 601

-- --- BEGIN op 602 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 602

-- --- BEGIN op 603 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 603

-- --- BEGIN op 604 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 604

-- --- BEGIN op 605 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 605

-- --- BEGIN op 606 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'UHD Bluray', 'radarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 606

-- --- BEGIN op 607 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'UHD Bluray', 'sonarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 607

-- --- BEGIN op 608 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 608

-- --- BEGIN op 609 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 609

-- --- BEGIN op 610 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 610

-- --- BEGIN op 611 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 611

-- --- BEGIN op 612 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 612

-- --- BEGIN op 613 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 613

-- --- BEGIN op 614 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 614

-- --- BEGIN op 615 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 615

-- --- BEGIN op 616 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 616

-- --- BEGIN op 617 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 617

-- --- BEGIN op 618 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'h265', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'h265'
    AND arr_type = 'all'
);
-- --- END op 618

-- --- BEGIN op 619 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 619

-- --- BEGIN op 620 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'iT', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'iT'
    AND arr_type = 'all'
);
-- --- END op 620

-- --- BEGIN op 621 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'x265 (Bluray)', 'radarr', -820000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'radarr'
);
-- --- END op 621

-- --- BEGIN op 622 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'x265 (Bluray)', 'sonarr', -820000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'sonarr'
);
-- --- END op 622

-- --- BEGIN op 623 ( update quality_profile "1080p Quality HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Quality HDR English', 'x265 (WEB)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Quality HDR English'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'all'
);
-- --- END op 623

-- --- BEGIN op 624 ( create quality_profile "1080p Anime" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('1080p Anime', '1080p Quality HDR utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent x265 HDR** 1080p Encodes. 

- Average Movie Sizes ~ 10 to 20gb per Movie
- Movie Quality Ranking ~ 9/10
- Average TV Sizes ~ 4 to 10gb per Episode
- TV Quality Ranking ~ 9/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', '1080p');

insert into "tags" ("name") values ('HDR') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'HDR');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'Lossy Audio');

insert into "tags" ("name") values ('Quality Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'Quality Focused');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'x264');

insert into "tags" ("name") values ('x265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'x265');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Anime', '1080p Quality HDR');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'Bluray-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'WEBDL-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'WEBRip-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'Bluray-720p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'WEBDL-720p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'WEBRip-720p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'Bluray-576p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'Bluray-480p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'WEBDL-480p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'DVD', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'HDTV-1080p', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'HDTV-720p', 11);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'SDTV', 12);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', NULL, '1080p Quality HDR', 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'Bluray-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'WEBDL-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'WEBRip-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'Remux-1080p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'WEBRip-480p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'HDTV-480p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'BR-DISK', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'CAM', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'DVD-R', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'DVDSCR', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'Raw-HD', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'REGIONAL', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'TELECINE', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'TELESYNC', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'WORKPRINT', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'Unknown', NULL, 18, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('1080p Anime', 'Any', 'simple');
-- --- END op 624

-- --- BEGIN op 625 ( update quality_profile "1080p Anime" )
update "quality_profiles" set "minimum_custom_format_score" = 200000 where "name" = '1080p Anime' and "minimum_custom_format_score" = 0;
-- --- END op 625

-- --- BEGIN op 626 ( update quality_profile "1080p Anime" )
update "quality_profiles" set "upgrade_until_score" = 1000000 where "name" = '1080p Anime' and "upgrade_until_score" = 0;
-- --- END op 626

-- --- BEGIN op 627 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Balanced Tier 1', 'radarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 627

-- --- BEGIN op 628 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Balanced Tier 1', 'sonarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 628

-- --- BEGIN op 629 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Balanced Tier 2', 'radarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 629

-- --- BEGIN op 630 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Balanced Tier 2', 'sonarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 630

-- --- BEGIN op 631 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Bluray', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 631

-- --- BEGIN op 632 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Bluray', 'sonarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 632

-- --- BEGIN op 633 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 633

-- --- BEGIN op 634 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 634

-- --- BEGIN op 635 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 635

-- --- BEGIN op 636 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 636

-- --- BEGIN op 637 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 637

-- --- BEGIN op 638 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 638

-- --- BEGIN op 639 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 639

-- --- BEGIN op 640 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 640

-- --- BEGIN op 641 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 1', 'all', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 641

-- --- BEGIN op 642 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 1', 'radarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 642

-- --- BEGIN op 643 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 1', 'sonarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 643

-- --- BEGIN op 644 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 644

-- --- BEGIN op 645 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 2', 'radarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 645

-- --- BEGIN op 646 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 2', 'sonarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 646

-- --- BEGIN op 647 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 647

-- --- BEGIN op 648 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 3', 'radarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 648

-- --- BEGIN op 649 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 3', 'sonarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 649

-- --- BEGIN op 650 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 650

-- --- BEGIN op 651 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 4', 'radarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 651

-- --- BEGIN op 652 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 4', 'sonarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 652

-- --- BEGIN op 653 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 653

-- --- BEGIN op 654 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 5', 'radarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 654

-- --- BEGIN op 655 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 5', 'sonarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 655

-- --- BEGIN op 656 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 656

-- --- BEGIN op 657 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 6', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 657

-- --- BEGIN op 658 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 6', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 658

-- --- BEGIN op 659 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p WEB-DL', 'radarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 659

-- --- BEGIN op 660 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p WEB-DL', 'sonarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 660

-- --- BEGIN op 661 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p WEBRip', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 661

-- --- BEGIN op 662 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 662

-- --- BEGIN op 663 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Bluray', 'radarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 663

-- --- BEGIN op 664 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Bluray', 'sonarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 664

-- --- BEGIN op 665 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 1', 'radarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 665

-- --- BEGIN op 666 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 1', 'sonarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 666

-- --- BEGIN op 667 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 667

-- --- BEGIN op 668 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 668

-- --- BEGIN op 669 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 669

-- --- BEGIN op 670 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 670

-- --- BEGIN op 671 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 671

-- --- BEGIN op 672 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 672

-- --- BEGIN op 673 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p WEB-DL', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 673

-- --- BEGIN op 674 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p WEB-DL', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 674

-- --- BEGIN op 675 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 675

-- --- BEGIN op 676 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 676

-- --- BEGIN op 677 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 1', 'radarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 677

-- --- BEGIN op 678 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 1', 'sonarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 678

-- --- BEGIN op 679 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 679

-- --- BEGIN op 680 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 680

-- --- BEGIN op 681 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 681

-- --- BEGIN op 682 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 682

-- --- BEGIN op 683 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 683

-- --- BEGIN op 684 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 684

-- --- BEGIN op 685 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p WEB-DL', 'radarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 685

-- --- BEGIN op 686 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p WEB-DL', 'sonarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 686

-- --- BEGIN op 687 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Balanced Tier 1', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 687

-- --- BEGIN op 688 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Balanced Tier 1', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 688

-- --- BEGIN op 689 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Bluray', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 689

-- --- BEGIN op 690 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Bluray', 'sonarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 690

-- --- BEGIN op 691 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 691

-- --- BEGIN op 692 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 692

-- --- BEGIN op 693 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 693

-- --- BEGIN op 694 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 694

-- --- BEGIN op 695 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 695

-- --- BEGIN op 696 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 696

-- --- BEGIN op 697 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 697

-- --- BEGIN op 698 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 698

-- --- BEGIN op 699 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 699

-- --- BEGIN op 700 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 1', 'radarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 700

-- --- BEGIN op 701 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 1', 'sonarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 701

-- --- BEGIN op 702 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 702

-- --- BEGIN op 703 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 703

-- --- BEGIN op 704 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 704

-- --- BEGIN op 705 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 705

-- --- BEGIN op 706 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 706

-- --- BEGIN op 707 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 707

-- --- BEGIN op 708 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 708

-- --- BEGIN op 709 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 709

-- --- BEGIN op 710 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 710

-- --- BEGIN op 711 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 711

-- --- BEGIN op 712 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 712

-- --- BEGIN op 713 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 713

-- --- BEGIN op 714 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 714

-- --- BEGIN op 715 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 715

-- --- BEGIN op 716 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 716

-- --- BEGIN op 717 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p WEB-DL', 'radarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 717

-- --- BEGIN op 718 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p WEB-DL', 'sonarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 718

-- --- BEGIN op 719 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p WEBRip', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 719

-- --- BEGIN op 720 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 720

-- --- BEGIN op 721 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'AMZN', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'all'
);
-- --- END op 721

-- --- BEGIN op 722 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 722

-- --- BEGIN op 723 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 723

-- --- BEGIN op 724 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 724

-- --- BEGIN op 725 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 725

-- --- BEGIN op 726 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 726

-- --- BEGIN op 727 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 727

-- --- BEGIN op 728 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 728

-- --- BEGIN op 729 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 729

-- --- BEGIN op 730 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Banned UHD Bluray', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'all'
);
-- --- END op 730

-- --- BEGIN op 731 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 731

-- --- BEGIN op 732 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 732

-- --- BEGIN op 733 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 733

-- --- BEGIN op 734 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 734

-- --- BEGIN op 735 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 735

-- --- BEGIN op 736 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DSNP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 736

-- --- BEGIN op 737 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DSNP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 737

-- --- BEGIN op 738 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 738

-- --- BEGIN op 739 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 739

-- --- BEGIN op 740 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 740

-- --- BEGIN op 741 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 741

-- --- BEGIN op 742 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 742

-- --- BEGIN op 743 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Quality Tier 1', 'radarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 743

-- --- BEGIN op 744 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Quality Tier 1', 'sonarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 744

-- --- BEGIN op 745 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 745

-- --- BEGIN op 746 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 746

-- --- BEGIN op 747 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Remux', 'radarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 747

-- --- BEGIN op 748 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Remux', 'sonarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 748

-- --- BEGIN op 749 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'all'
);
-- --- END op 749

-- --- BEGIN op 750 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 750

-- --- BEGIN op 751 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 751

-- --- BEGIN op 752 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Vision', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 752

-- --- BEGIN op 753 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Vision (Without Fallback)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'all'
);
-- --- END op 753

-- --- BEGIN op 754 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 754

-- --- BEGIN op 755 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 755

-- --- BEGIN op 756 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 756

-- --- BEGIN op 757 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 757

-- --- BEGIN op 758 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 758

-- --- BEGIN op 759 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 759

-- --- BEGIN op 760 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 760

-- --- BEGIN op 761 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 761

-- --- BEGIN op 762 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HDR', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 762

-- --- BEGIN op 763 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HDR (Missing)', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'all'
);
-- --- END op 763

-- --- BEGIN op 764 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HDR10+', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 764

-- --- BEGIN op 765 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HMAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'all'
);
-- --- END op 765

-- --- BEGIN op 766 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 766

-- --- BEGIN op 767 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 767

-- --- BEGIN op 768 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'MA', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 768

-- --- BEGIN op 769 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'MAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'MAX'
    AND arr_type = 'all'
);
-- --- END op 769

-- --- BEGIN op 770 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 770

-- --- BEGIN op 771 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 771

-- --- BEGIN op 772 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 772

-- --- BEGIN op 773 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 773

-- --- BEGIN op 774 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 774

-- --- BEGIN op 775 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 775

-- --- BEGIN op 776 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 776

-- --- BEGIN op 777 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 777

-- --- BEGIN op 778 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 778

-- --- BEGIN op 779 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 779

-- --- BEGIN op 780 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 780

-- --- BEGIN op 781 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 781

-- --- BEGIN op 782 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 782

-- --- BEGIN op 783 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 783

-- --- BEGIN op 784 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 784

-- --- BEGIN op 785 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 785

-- --- BEGIN op 786 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 786

-- --- BEGIN op 787 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 787

-- --- BEGIN op 788 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 788

-- --- BEGIN op 789 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 789

-- --- BEGIN op 790 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 790

-- --- BEGIN op 791 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 791

-- --- BEGIN op 792 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 792

-- --- BEGIN op 793 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 793

-- --- BEGIN op 794 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 794

-- --- BEGIN op 795 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 795

-- --- BEGIN op 796 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 796

-- --- BEGIN op 797 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'UHD Bluray', 'radarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 797

-- --- BEGIN op 798 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'UHD Bluray', 'sonarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 798

-- --- BEGIN op 799 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 799

-- --- BEGIN op 800 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 800

-- --- BEGIN op 801 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 801

-- --- BEGIN op 802 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 802

-- --- BEGIN op 803 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 803

-- --- BEGIN op 804 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 804

-- --- BEGIN op 805 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 805

-- --- BEGIN op 806 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 806

-- --- BEGIN op 807 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 807

-- --- BEGIN op 808 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 808

-- --- BEGIN op 809 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'h265', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'h265'
    AND arr_type = 'all'
);
-- --- END op 809

-- --- BEGIN op 810 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 810

-- --- BEGIN op 811 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'iT', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'iT'
    AND arr_type = 'all'
);
-- --- END op 811

-- --- BEGIN op 812 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'x265 (Bluray)', 'radarr', -820000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'radarr'
);
-- --- END op 812

-- --- BEGIN op 813 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'x265 (Bluray)', 'sonarr', -820000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'sonarr'
);
-- --- END op 813

-- --- BEGIN op 814 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'x265 (WEB)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'all'
);
-- --- END op 814

-- --- BEGIN op 815 ( create quality_profile "1080p Cartoon" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('1080p Cartoon', '1080p Quality HDR utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent x265 HDR** 1080p Encodes. 

- Average Movie Sizes ~ 10 to 20gb per Movie
- Movie Quality Ranking ~ 9/10
- Average TV Sizes ~ 4 to 10gb per Episode
- TV Quality Ranking ~ 9/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', '1080p');

insert into "tags" ("name") values ('HDR') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'HDR');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'Lossy Audio');

insert into "tags" ("name") values ('Quality Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'Quality Focused');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'x264');

insert into "tags" ("name") values ('x265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'x265');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Cartoon', '1080p Quality HDR');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'Bluray-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'WEBDL-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'WEBRip-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'Bluray-720p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'WEBDL-720p', 4);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'WEBRip-720p', 5);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'Bluray-576p', 6);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'Bluray-480p', 7);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'WEBDL-480p', 8);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'DVD', 9);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'HDTV-1080p', 10);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'HDTV-720p', 11);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'SDTV', 12);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', NULL, '1080p Quality HDR', 0, 1, 1);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'Remux-2160p', NULL, 1, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'Bluray-2160p', NULL, 2, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'WEBDL-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'WEBRip-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'HDTV-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'Remux-1080p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'WEBRip-480p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'HDTV-480p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'BR-DISK', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'CAM', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'DVD-R', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'DVDSCR', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'Raw-HD', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'REGIONAL', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'TELECINE', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'TELESYNC', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'WORKPRINT', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'Unknown', NULL, 18, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('1080p Cartoon', 'Any', 'simple');
-- --- END op 815

-- --- BEGIN op 816 ( update quality_profile "1080p Cartoon" )
update "quality_profiles" set "minimum_custom_format_score" = 200000 where "name" = '1080p Cartoon' and "minimum_custom_format_score" = 0;
-- --- END op 816

-- --- BEGIN op 817 ( update quality_profile "1080p Cartoon" )
update "quality_profiles" set "upgrade_until_score" = 1000000 where "name" = '1080p Cartoon' and "upgrade_until_score" = 0;
-- --- END op 817

-- --- BEGIN op 818 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Balanced Tier 1', 'radarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 818

-- --- BEGIN op 819 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Balanced Tier 1', 'sonarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 819

-- --- BEGIN op 820 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Balanced Tier 2', 'radarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 820

-- --- BEGIN op 821 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Balanced Tier 2', 'sonarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 821

-- --- BEGIN op 822 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Bluray', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 822

-- --- BEGIN op 823 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Bluray', 'sonarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 823

-- --- BEGIN op 824 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 824

-- --- BEGIN op 825 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 825

-- --- BEGIN op 826 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 826

-- --- BEGIN op 827 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 827

-- --- BEGIN op 828 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 828

-- --- BEGIN op 829 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 829

-- --- BEGIN op 830 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 830

-- --- BEGIN op 831 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 831

-- --- BEGIN op 832 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 1', 'all', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 832

-- --- BEGIN op 833 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 1', 'radarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 833

-- --- BEGIN op 834 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 1', 'sonarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 834

-- --- BEGIN op 835 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 835

-- --- BEGIN op 836 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 2', 'radarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 836

-- --- BEGIN op 837 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 2', 'sonarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 837

-- --- BEGIN op 838 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 838

-- --- BEGIN op 839 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 3', 'radarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 839

-- --- BEGIN op 840 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 3', 'sonarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 840

-- --- BEGIN op 841 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 841

-- --- BEGIN op 842 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 4', 'radarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 842

-- --- BEGIN op 843 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 4', 'sonarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 843

-- --- BEGIN op 844 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 844

-- --- BEGIN op 845 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 5', 'radarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 845

-- --- BEGIN op 846 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 5', 'sonarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 846

-- --- BEGIN op 847 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 847

-- --- BEGIN op 848 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 6', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 848

-- --- BEGIN op 849 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 6', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 849

-- --- BEGIN op 850 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p WEB-DL', 'radarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 850

-- --- BEGIN op 851 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p WEB-DL', 'sonarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 851

-- --- BEGIN op 852 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p WEBRip', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 852

-- --- BEGIN op 853 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 853

-- --- BEGIN op 854 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Bluray', 'radarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 854

-- --- BEGIN op 855 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Bluray', 'sonarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 855

-- --- BEGIN op 856 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 1', 'radarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 856

-- --- BEGIN op 857 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 1', 'sonarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 857

-- --- BEGIN op 858 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 858

-- --- BEGIN op 859 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 859

-- --- BEGIN op 860 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 860

-- --- BEGIN op 861 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 861

-- --- BEGIN op 862 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 862

-- --- BEGIN op 863 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 863

-- --- BEGIN op 864 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p WEB-DL', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 864

-- --- BEGIN op 865 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p WEB-DL', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 865

-- --- BEGIN op 866 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 866

-- --- BEGIN op 867 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 867

-- --- BEGIN op 868 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 1', 'radarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 868

-- --- BEGIN op 869 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 1', 'sonarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 869

-- --- BEGIN op 870 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 870

-- --- BEGIN op 871 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 871

-- --- BEGIN op 872 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 872

-- --- BEGIN op 873 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 873

-- --- BEGIN op 874 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 874

-- --- BEGIN op 875 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 875

-- --- BEGIN op 876 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p WEB-DL', 'radarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 876

-- --- BEGIN op 877 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p WEB-DL', 'sonarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 877

-- --- BEGIN op 878 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Balanced Tier 1', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 878

-- --- BEGIN op 879 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Balanced Tier 1', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 879

-- --- BEGIN op 880 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Bluray', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 880

-- --- BEGIN op 881 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Bluray', 'sonarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 881

-- --- BEGIN op 882 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 882

-- --- BEGIN op 883 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 883

-- --- BEGIN op 884 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 884

-- --- BEGIN op 885 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 885

-- --- BEGIN op 886 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 886

-- --- BEGIN op 887 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 887

-- --- BEGIN op 888 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 888

-- --- BEGIN op 889 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 889

-- --- BEGIN op 890 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 890

-- --- BEGIN op 891 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 1', 'radarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 891

-- --- BEGIN op 892 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 1', 'sonarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 892

-- --- BEGIN op 893 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 893

-- --- BEGIN op 894 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 894

-- --- BEGIN op 895 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 895

-- --- BEGIN op 896 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 896

-- --- BEGIN op 897 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 897

-- --- BEGIN op 898 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 898

-- --- BEGIN op 899 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 899

-- --- BEGIN op 900 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 900

-- --- BEGIN op 901 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 901

-- --- BEGIN op 902 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 902

-- --- BEGIN op 903 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 903

-- --- BEGIN op 904 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 904

-- --- BEGIN op 905 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 905

-- --- BEGIN op 906 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 906

-- --- BEGIN op 907 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 907

-- --- BEGIN op 908 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p WEB-DL', 'radarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 908

-- --- BEGIN op 909 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p WEB-DL', 'sonarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 909

-- --- BEGIN op 910 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p WEBRip', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 910

-- --- BEGIN op 911 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 911

-- --- BEGIN op 912 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'AMZN', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'all'
);
-- --- END op 912

-- --- BEGIN op 913 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 913

-- --- BEGIN op 914 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 914

-- --- BEGIN op 915 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 915

-- --- BEGIN op 916 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 916

-- --- BEGIN op 917 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 917

-- --- BEGIN op 918 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 918

-- --- BEGIN op 919 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 919

-- --- BEGIN op 920 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 920

-- --- BEGIN op 921 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Banned UHD Bluray', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'all'
);
-- --- END op 921

-- --- BEGIN op 922 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 922

-- --- BEGIN op 923 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 923

-- --- BEGIN op 924 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 924

-- --- BEGIN op 925 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 925

-- --- BEGIN op 926 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 926

-- --- BEGIN op 927 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DSNP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 927

-- --- BEGIN op 928 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DSNP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 928

-- --- BEGIN op 929 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 929

-- --- BEGIN op 930 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 930

-- --- BEGIN op 931 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 931

-- --- BEGIN op 932 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 932

-- --- BEGIN op 933 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 933

-- --- BEGIN op 934 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Quality Tier 1', 'radarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 934

-- --- BEGIN op 935 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Quality Tier 1', 'sonarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 935

-- --- BEGIN op 936 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 936

-- --- BEGIN op 937 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 937

-- --- BEGIN op 938 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Remux', 'radarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 938

-- --- BEGIN op 939 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Remux', 'sonarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 939

-- --- BEGIN op 940 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dolby Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'all'
);
-- --- END op 940

-- --- BEGIN op 941 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 941

-- --- BEGIN op 942 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 942

-- --- BEGIN op 943 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dolby Vision', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 943

-- --- BEGIN op 944 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dolby Vision (Without Fallback)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'all'
);
-- --- END op 944

-- --- BEGIN op 945 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 945

-- --- BEGIN op 946 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 946

-- --- BEGIN op 947 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 947

-- --- BEGIN op 948 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 948

-- --- BEGIN op 949 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 949

-- --- BEGIN op 950 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 950

-- --- BEGIN op 951 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 951

-- --- BEGIN op 952 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 952

-- --- BEGIN op 953 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HDR', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 953

-- --- BEGIN op 954 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HDR (Missing)', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'all'
);
-- --- END op 954

-- --- BEGIN op 955 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HDR10+', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 955

-- --- BEGIN op 956 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HMAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'all'
);
-- --- END op 956

-- --- BEGIN op 957 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 957

-- --- BEGIN op 958 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 958

-- --- BEGIN op 959 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'MA', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 959

-- --- BEGIN op 960 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'MAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'MAX'
    AND arr_type = 'all'
);
-- --- END op 960

-- --- BEGIN op 961 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 961

-- --- BEGIN op 962 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 962

-- --- BEGIN op 963 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 963

-- --- BEGIN op 964 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 964

-- --- BEGIN op 965 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 965

-- --- BEGIN op 966 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 966

-- --- BEGIN op 967 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 967

-- --- BEGIN op 968 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 968

-- --- BEGIN op 969 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 969

-- --- BEGIN op 970 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 970

-- --- BEGIN op 971 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 971

-- --- BEGIN op 972 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 972

-- --- BEGIN op 973 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 973

-- --- BEGIN op 974 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 974

-- --- BEGIN op 975 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 975

-- --- BEGIN op 976 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 976

-- --- BEGIN op 977 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 977

-- --- BEGIN op 978 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 978

-- --- BEGIN op 979 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 979

-- --- BEGIN op 980 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 980

-- --- BEGIN op 981 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 981

-- --- BEGIN op 982 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 982

-- --- BEGIN op 983 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 983

-- --- BEGIN op 984 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 984

-- --- BEGIN op 985 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 985

-- --- BEGIN op 986 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 986

-- --- BEGIN op 987 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 987

-- --- BEGIN op 988 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'UHD Bluray', 'radarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 988

-- --- BEGIN op 989 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'UHD Bluray', 'sonarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 989

-- --- BEGIN op 990 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 990

-- --- BEGIN op 991 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 991

-- --- BEGIN op 992 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 992

-- --- BEGIN op 993 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 993

-- --- BEGIN op 994 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 994

-- --- BEGIN op 995 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 995

-- --- BEGIN op 996 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 996

-- --- BEGIN op 997 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 997

-- --- BEGIN op 998 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 998

-- --- BEGIN op 999 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 999

-- --- BEGIN op 1000 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'h265', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'h265'
    AND arr_type = 'all'
);
-- --- END op 1000

-- --- BEGIN op 1001 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 1001

-- --- BEGIN op 1002 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'iT', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'iT'
    AND arr_type = 'all'
);
-- --- END op 1002

-- --- BEGIN op 1003 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'x265 (Bluray)', 'radarr', -820000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'radarr'
);
-- --- END op 1003

-- --- BEGIN op 1004 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'x265 (Bluray)', 'sonarr', -820000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'sonarr'
);
-- --- END op 1004

-- --- BEGIN op 1005 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'x265 (WEB)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'all'
);
-- --- END op 1005

-- --- BEGIN op 1006 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'h265', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'h265'
    AND arr_type = 'radarr'
);
-- --- END op 1006

-- --- BEGIN op 1007 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'h265', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'h265'
    AND arr_type = 'sonarr'
);
-- --- END op 1007

-- --- BEGIN op 1008 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'h265'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 1008

-- --- BEGIN op 1009 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 1009

-- --- BEGIN op 1010 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'x265 (WEB)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'sonarr'
);
-- --- END op 1010

-- --- BEGIN op 1011 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'all'
  AND score = -999999;
-- --- END op 1011

-- --- BEGIN op 1012 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime Dual Audio', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'radarr'
);
-- --- END op 1012

-- --- BEGIN op 1013 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime Dual Audio', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 1013

-- --- BEGIN op 1014 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dubs only', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dubs only'
    AND arr_type = 'radarr'
);
-- --- END op 1014

-- --- BEGIN op 1015 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dubs only', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dubs only'
    AND arr_type = 'sonarr'
);
-- --- END op 1015

-- --- BEGIN op 1016 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'h265'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 1016

-- --- BEGIN op 1017 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'h265'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 1017

-- --- BEGIN op 1018 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Sub only', 'radarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'radarr'
);
-- --- END op 1018

-- --- BEGIN op 1019 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Sub only', 'sonarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'sonarr'
);
-- --- END op 1019

-- --- BEGIN op 1020 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Unwanted Anime Languages', 'radarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Unwanted Anime Languages'
    AND arr_type = 'radarr'
);
-- --- END op 1020

-- --- BEGIN op 1021 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Unwanted Anime Languages', 'sonarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Unwanted Anime Languages'
    AND arr_type = 'sonarr'
);
-- --- END op 1021

-- --- BEGIN op 1022 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'x265 (Bluray)'
  AND arr_type = 'radarr'
  AND score = -820000;
-- --- END op 1022

-- --- BEGIN op 1023 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'x265 (Bluray)'
  AND arr_type = 'sonarr'
  AND score = -820000;
-- --- END op 1023

-- --- BEGIN op 1024 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 1024

-- --- BEGIN op 1025 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Anime'
  AND custom_format_name = 'x265 (WEB)'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 1025

-- --- BEGIN op 1026 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_languages WHERE quality_profile_name = '1080p Anime' AND language_name = 'Any';

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT '1080p Anime', 'English', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = '1080p Anime'
);
-- --- END op 1026

-- --- BEGIN op 1027 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Remux-1080p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p Anime', '720p'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p Anime'
    AND name = '720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '720p', 'Bluray-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '720p'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '720p', 'WEBDL-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '720p'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '720p', 'WEBRip-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '720p'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '720p', 'HDTV-720p', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '720p'
    AND quality_name = 'HDTV-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', NULL, '720p', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name IS NULL
    AND quality_group_name = '720p'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p Anime', 'Ouch'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p Anime'
    AND name = 'Ouch'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', 'Ouch', 'Bluray-576p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = 'Ouch'
    AND quality_name = 'Bluray-576p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', 'Ouch', 'Bluray-480p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = 'Ouch'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', 'Ouch', 'WEBDL-480p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = 'Ouch'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', 'Ouch', 'DVD', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = 'Ouch'
    AND quality_name = 'DVD'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', 'Ouch', 'SDTV', 4
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = 'Ouch'
    AND quality_name = 'SDTV'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', NULL, 'Ouch', 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name IS NULL
    AND quality_group_name = 'Ouch'
);

UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 1
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 2
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Quality HDR'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Quality HDR') = 13
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Quality HDR'
      AND quality_name NOT IN ('Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'Bluray-720p', 'WEBDL-720p', 'WEBRip-720p', 'Bluray-576p', 'Bluray-480p', 'WEBDL-480p', 'DVD', 'HDTV-1080p', 'HDTV-720p', 'SDTV')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Quality HDR'
        AND NOT (
          (quality_name = 'Bluray-1080p'
        AND position = 0)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 1)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 2)
      OR (quality_name = 'Bluray-720p'
        AND position = 3)
      OR (quality_name = 'WEBDL-720p'
        AND position = 4)
      OR (quality_name = 'WEBRip-720p'
        AND position = 5)
      OR (quality_name = 'Bluray-576p'
        AND position = 6)
      OR (quality_name = 'Bluray-480p'
        AND position = 7)
      OR (quality_name = 'WEBDL-480p'
        AND position = 8)
      OR (quality_name = 'DVD'
        AND position = 9)
      OR (quality_name = 'HDTV-1080p'
        AND position = 10)
      OR (quality_name = 'HDTV-720p'
        AND position = 11)
      OR (quality_name = 'SDTV'
        AND position = 12)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Quality HDR'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Anime'
      AND quality_group_name = '1080p Quality HDR'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Anime' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'Remux-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'Bluray-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 2 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 3 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'HDTV-1080p' AS quality_name, 4 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 1027

-- --- BEGIN op 1028 ( update quality_profile "1080p Anime" )
insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'Anime');
-- --- END op 1028

-- --- BEGIN op 1029 ( delete quality_profile "1080p Cartoon" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Cartoon';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Cartoon';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Cartoon';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Cartoon';

delete from "quality_groups" where "quality_profile_name" = '1080p Cartoon';

delete from "quality_profiles" where "name" = '1080p Cartoon';
-- --- END op 1029

-- --- BEGIN op 1030 ( create quality_profile "1080p Cartoon" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('1080p Cartoon', '1080p Quality HDR utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent x265 HDR** 1080p Encodes. 

- Average Movie Sizes ~ 10 to 20gb per Movie
- Movie Quality Ranking ~ 9/10
- Average TV Sizes ~ 4 to 10gb per Episode
- TV Quality Ranking ~ 9/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', '1080p');

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'Anime');

insert into "tags" ("name") values ('HDR') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'HDR');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'Lossy Audio');

insert into "tags" ("name") values ('Quality Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'Quality Focused');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'x264');

insert into "tags" ("name") values ('x265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'x265');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Cartoon', '1080p Quality HDR');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'Remux-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'Bluray-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'WEBDL-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'WEBRip-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '1080p Quality HDR', 'HDTV-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', NULL, '1080p Quality HDR', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Cartoon', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '720p', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', NULL, '720p', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Cartoon', 'Ouch');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', 'Ouch', 'Bluray-576p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', 'Ouch', 'Bluray-480p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', 'Ouch', 'WEBDL-480p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', 'Ouch', 'DVD', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Cartoon', 'Ouch', 'SDTV', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', NULL, 'Ouch', 2, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'Remux-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'Bluray-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'WEBDL-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'WEBRip-2160p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'HDTV-2160p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'WEBRip-480p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'HDTV-480p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'BR-DISK', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'CAM', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'DVD-R', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'DVDSCR', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'Raw-HD', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'REGIONAL', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'TELECINE', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'TELESYNC', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'WORKPRINT', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Cartoon', 'Unknown', NULL, 19, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('1080p Cartoon', 'English', 'simple');
-- --- END op 1030

-- --- BEGIN op 1031 ( update quality_profile "1080p Cartoon" )
update "quality_profiles" set "minimum_custom_format_score" = 200000 where "name" = '1080p Cartoon' and "minimum_custom_format_score" = 0;
-- --- END op 1031

-- --- BEGIN op 1032 ( update quality_profile "1080p Cartoon" )
update "quality_profiles" set "upgrade_until_score" = 1000000 where "name" = '1080p Cartoon' and "upgrade_until_score" = 0;
-- --- END op 1032

-- --- BEGIN op 1033 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Balanced Tier 1', 'radarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1033

-- --- BEGIN op 1034 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Balanced Tier 1', 'sonarr', 161000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1034

-- --- BEGIN op 1035 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Balanced Tier 2', 'radarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1035

-- --- BEGIN op 1036 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Balanced Tier 2', 'sonarr', 160000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1036

-- --- BEGIN op 1037 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Bluray', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1037

-- --- BEGIN op 1038 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Bluray', 'sonarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1038

-- --- BEGIN op 1039 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1039

-- --- BEGIN op 1040 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1040

-- --- BEGIN op 1041 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1041

-- --- BEGIN op 1042 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1042

-- --- BEGIN op 1043 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1043

-- --- BEGIN op 1044 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1044

-- --- BEGIN op 1045 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1045

-- --- BEGIN op 1046 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1046

-- --- BEGIN op 1047 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 1', 'all', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 1047

-- --- BEGIN op 1048 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 1', 'radarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1048

-- --- BEGIN op 1049 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 1', 'sonarr', 185000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1049

-- --- BEGIN op 1050 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1050

-- --- BEGIN op 1051 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 2', 'radarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1051

-- --- BEGIN op 1052 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 2', 'sonarr', 184000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1052

-- --- BEGIN op 1053 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1053

-- --- BEGIN op 1054 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 3', 'radarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1054

-- --- BEGIN op 1055 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 3', 'sonarr', 183000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1055

-- --- BEGIN op 1056 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1056

-- --- BEGIN op 1057 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 4', 'radarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1057

-- --- BEGIN op 1058 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 4', 'sonarr', 182000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1058

-- --- BEGIN op 1059 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1059

-- --- BEGIN op 1060 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 5', 'radarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 1060

-- --- BEGIN op 1061 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 5', 'sonarr', 181000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 1061

-- --- BEGIN op 1062 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 1062

-- --- BEGIN op 1063 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 6', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1063

-- --- BEGIN op 1064 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p Quality Tier 6', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1064

-- --- BEGIN op 1065 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p WEB-DL', 'radarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1065

-- --- BEGIN op 1066 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p WEB-DL', 'sonarr', 860000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1066

-- --- BEGIN op 1067 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p WEBRip', 'radarr', 700000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 1067

-- --- BEGIN op 1068 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 1068

-- --- BEGIN op 1069 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Bluray', 'radarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1069

-- --- BEGIN op 1070 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Bluray', 'sonarr', 320000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1070

-- --- BEGIN op 1071 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 1', 'radarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1071

-- --- BEGIN op 1072 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 1', 'sonarr', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1072

-- --- BEGIN op 1073 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1073

-- --- BEGIN op 1074 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1074

-- --- BEGIN op 1075 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1075

-- --- BEGIN op 1076 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1076

-- --- BEGIN op 1077 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1077

-- --- BEGIN op 1078 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1078

-- --- BEGIN op 1079 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p WEB-DL', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1079

-- --- BEGIN op 1080 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '480p WEB-DL', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1080

-- --- BEGIN op 1081 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1081

-- --- BEGIN op 1082 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1082

-- --- BEGIN op 1083 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 1', 'radarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1083

-- --- BEGIN op 1084 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 1', 'sonarr', 103000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1084

-- --- BEGIN op 1085 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1085

-- --- BEGIN op 1086 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1086

-- --- BEGIN op 1087 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1087

-- --- BEGIN op 1088 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1088

-- --- BEGIN op 1089 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1089

-- --- BEGIN op 1090 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1090

-- --- BEGIN op 1091 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p WEB-DL', 'radarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1091

-- --- BEGIN op 1092 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '576p WEB-DL', 'sonarr', 300000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1092

-- --- BEGIN op 1093 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Balanced Tier 1', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1093

-- --- BEGIN op 1094 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Balanced Tier 1', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1094

-- --- BEGIN op 1095 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Bluray', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1095

-- --- BEGIN op 1096 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Bluray', 'sonarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1096

-- --- BEGIN op 1097 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1097

-- --- BEGIN op 1098 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1098

-- --- BEGIN op 1099 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1099

-- --- BEGIN op 1100 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1100

-- --- BEGIN op 1101 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1101

-- --- BEGIN op 1102 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1102

-- --- BEGIN op 1103 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1103

-- --- BEGIN op 1104 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1104

-- --- BEGIN op 1105 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 1105

-- --- BEGIN op 1106 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 1', 'radarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1106

-- --- BEGIN op 1107 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 1', 'sonarr', 145000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1107

-- --- BEGIN op 1108 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1108

-- --- BEGIN op 1109 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1109

-- --- BEGIN op 1110 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1110

-- --- BEGIN op 1111 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1111

-- --- BEGIN op 1112 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1112

-- --- BEGIN op 1113 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1113

-- --- BEGIN op 1114 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1114

-- --- BEGIN op 1115 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1115

-- --- BEGIN op 1116 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1116

-- --- BEGIN op 1117 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1117

-- --- BEGIN op 1118 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 1118

-- --- BEGIN op 1119 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 1119

-- --- BEGIN op 1120 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 1120

-- --- BEGIN op 1121 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1121

-- --- BEGIN op 1122 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1122

-- --- BEGIN op 1123 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p WEB-DL', 'radarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1123

-- --- BEGIN op 1124 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p WEB-DL', 'sonarr', 660000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1124

-- --- BEGIN op 1125 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p WEBRip', 'radarr', 540000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 1125

-- --- BEGIN op 1126 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 1126

-- --- BEGIN op 1127 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'AMZN', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'all'
);
-- --- END op 1127

-- --- BEGIN op 1128 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 1128

-- --- BEGIN op 1129 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 1129

-- --- BEGIN op 1130 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Anime Dual Audio', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'radarr'
);
-- --- END op 1130

-- --- BEGIN op 1131 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Anime Dual Audio', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 1131

-- --- BEGIN op 1132 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 1132

-- --- BEGIN op 1133 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 1133

-- --- BEGIN op 1134 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 1134

-- --- BEGIN op 1135 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1135

-- --- BEGIN op 1136 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1136

-- --- BEGIN op 1137 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 1137

-- --- BEGIN op 1138 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Banned UHD Bluray', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'all'
);
-- --- END op 1138

-- --- BEGIN op 1139 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 1139

-- --- BEGIN op 1140 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 1140

-- --- BEGIN op 1141 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 1141

-- --- BEGIN op 1142 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 1142

-- --- BEGIN op 1143 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 1143

-- --- BEGIN op 1144 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DSNP', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 1144

-- --- BEGIN op 1145 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DSNP', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 1145

-- --- BEGIN op 1146 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 1146

-- --- BEGIN op 1147 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 1147

-- --- BEGIN op 1148 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 1148

-- --- BEGIN op 1149 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 1149

-- --- BEGIN op 1150 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 1150

-- --- BEGIN op 1151 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Quality Tier 1', 'radarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1151

-- --- BEGIN op 1152 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Quality Tier 1', 'sonarr', 61000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1152

-- --- BEGIN op 1153 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1153

-- --- BEGIN op 1154 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1154

-- --- BEGIN op 1155 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Remux', 'radarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 1155

-- --- BEGIN op 1156 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'DVD Remux', 'sonarr', 220000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 1156

-- --- BEGIN op 1157 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dolby Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'all'
);
-- --- END op 1157

-- --- BEGIN op 1158 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 1158

-- --- BEGIN op 1159 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 1159

-- --- BEGIN op 1160 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dolby Vision', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 1160

-- --- BEGIN op 1161 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dolby Vision (Without Fallback)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'all'
);
-- --- END op 1161

-- --- BEGIN op 1162 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dubs only', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dubs only'
    AND arr_type = 'radarr'
);
-- --- END op 1162

-- --- BEGIN op 1163 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Dubs only', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Dubs only'
    AND arr_type = 'sonarr'
);
-- --- END op 1163

-- --- BEGIN op 1164 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 1164

-- --- BEGIN op 1165 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 1165

-- --- BEGIN op 1166 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 1166

-- --- BEGIN op 1167 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 1167

-- --- BEGIN op 1168 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 1168

-- --- BEGIN op 1169 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 1169

-- --- BEGIN op 1170 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 1170

-- --- BEGIN op 1171 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1171

-- --- BEGIN op 1172 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HDR', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 1172

-- --- BEGIN op 1173 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HDR (Missing)', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'all'
);
-- --- END op 1173

-- --- BEGIN op 1174 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HDR10+', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 1174

-- --- BEGIN op 1175 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HMAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'all'
);
-- --- END op 1175

-- --- BEGIN op 1176 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 1176

-- --- BEGIN op 1177 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 1177

-- --- BEGIN op 1178 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'MA', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 1178

-- --- BEGIN op 1179 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'MAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'MAX'
    AND arr_type = 'all'
);
-- --- END op 1179

-- --- BEGIN op 1180 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 1180

-- --- BEGIN op 1181 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 1181

-- --- BEGIN op 1182 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 1182

-- --- BEGIN op 1183 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 1183

-- --- BEGIN op 1184 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 1184

-- --- BEGIN op 1185 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 1185

-- --- BEGIN op 1186 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 1186

-- --- BEGIN op 1187 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 1187

-- --- BEGIN op 1188 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 1188

-- --- BEGIN op 1189 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 1189

-- --- BEGIN op 1190 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 1190

-- --- BEGIN op 1191 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 1191

-- --- BEGIN op 1192 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 1192

-- --- BEGIN op 1193 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 1193

-- --- BEGIN op 1194 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 1194

-- --- BEGIN op 1195 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 1195

-- --- BEGIN op 1196 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1196

-- --- BEGIN op 1197 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1197

-- --- BEGIN op 1198 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1198

-- --- BEGIN op 1199 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1199

-- --- BEGIN op 1200 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 1200

-- --- BEGIN op 1201 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 1201

-- --- BEGIN op 1202 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 1202

-- --- BEGIN op 1203 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 1203

-- --- BEGIN op 1204 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 1204

-- --- BEGIN op 1205 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 1205

-- --- BEGIN op 1206 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 1206

-- --- BEGIN op 1207 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Sub only', 'radarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'radarr'
);
-- --- END op 1207

-- --- BEGIN op 1208 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Sub only', 'sonarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'sonarr'
);
-- --- END op 1208

-- --- BEGIN op 1209 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'UHD Bluray', 'radarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1209

-- --- BEGIN op 1210 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'UHD Bluray', 'sonarr', 840000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1210

-- --- BEGIN op 1211 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Unwanted Anime Languages', 'radarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Unwanted Anime Languages'
    AND arr_type = 'radarr'
);
-- --- END op 1211

-- --- BEGIN op 1212 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Unwanted Anime Languages', 'sonarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Unwanted Anime Languages'
    AND arr_type = 'sonarr'
);
-- --- END op 1212

-- --- BEGIN op 1213 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 1213

-- --- BEGIN op 1214 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 1214

-- --- BEGIN op 1215 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 1215

-- --- BEGIN op 1216 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 1216

-- --- BEGIN op 1217 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 1217

-- --- BEGIN op 1218 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1218

-- --- BEGIN op 1219 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1219

-- --- BEGIN op 1220 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1220

-- --- BEGIN op 1221 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1221

-- --- BEGIN op 1222 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 1222

-- --- BEGIN op 1223 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 1223

-- --- BEGIN op 1224 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'iT', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'iT'
    AND arr_type = 'all'
);
-- --- END op 1224

-- --- BEGIN op 1225 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_tags WHERE quality_profile_name = '1080p Cartoon' AND tag_name = 'Anime';

insert into "tags" ("name") values ('Cartoon') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Cartoon', 'Cartoon');
-- --- END op 1225

-- --- BEGIN op 1226 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'Anime Dual Audio'
  AND arr_type = 'radarr'
  AND score = 200000;
-- --- END op 1226

-- --- BEGIN op 1227 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'Anime Dual Audio'
  AND arr_type = 'sonarr'
  AND score = 200000;
-- --- END op 1227

-- --- BEGIN op 1228 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'Unwanted Anime Languages'
  AND arr_type = 'radarr'
  AND score = -200000;
-- --- END op 1228

-- --- BEGIN op 1229 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'Unwanted Anime Languages'
  AND arr_type = 'sonarr'
  AND score = -200000;
-- --- END op 1229

-- --- BEGIN op 1230 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 1'
  AND arr_type = 'all'
  AND score = 125000;
-- --- END op 1230

-- --- BEGIN op 1231 ( update quality_profile "1080p Cartoon" )
update "quality_profiles" set "minimum_custom_format_score" = 20000 where "name" = '1080p Cartoon' and "minimum_custom_format_score" = 200000;
-- --- END op 1231

-- --- BEGIN op 1232 ( update quality_profile "1080p Cartoon" )
update "quality_profiles" set "upgrade_until_score" = 888888 where "name" = '1080p Cartoon' and "upgrade_until_score" = 1000000;
-- --- END op 1232

-- --- BEGIN op 1233 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 280000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'radarr'
  AND score = 700000;
-- --- END op 1233

-- --- BEGIN op 1234 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 280000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Bluray'
  AND arr_type = 'sonarr'
  AND score = 700000;
-- --- END op 1234

-- --- BEGIN op 1235 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 185003
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 1'
  AND arr_type = 'radarr'
  AND score = 185000;
-- --- END op 1235

-- --- BEGIN op 1236 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 380000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 860000;
-- --- END op 1236

-- --- BEGIN op 1237 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 380000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 860000;
-- --- END op 1237

-- --- BEGIN op 1238 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 280000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p WEBRip'
  AND arr_type = 'radarr'
  AND score = 700000;
-- --- END op 1238

-- --- BEGIN op 1239 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '1080p WEBRip', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1239

-- --- BEGIN op 1240 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 80000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p Bluray'
  AND arr_type = 'radarr'
  AND score = 320000;
-- --- END op 1240

-- --- BEGIN op 1241 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 80000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p Bluray'
  AND arr_type = 'sonarr'
  AND score = 320000;
-- --- END op 1241

-- --- BEGIN op 1242 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 60000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 280000;
-- --- END op 1242

-- --- BEGIN op 1243 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 60000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 280000;
-- --- END op 1243

-- --- BEGIN op 1244 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 120000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'radarr'
  AND score = 420000;
-- --- END op 1244

-- --- BEGIN op 1245 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 120000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p Bluray'
  AND arr_type = 'sonarr'
  AND score = 420000;
-- --- END op 1245

-- --- BEGIN op 1246 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 120000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 300000;
-- --- END op 1246

-- --- BEGIN op 1247 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 120000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 300000;
-- --- END op 1247

-- --- BEGIN op 1248 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 180000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 1248

-- --- BEGIN op 1249 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 180000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Bluray'
  AND arr_type = 'sonarr'
  AND score = 540000;
-- --- END op 1249

-- --- BEGIN op 1250 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 240000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p WEB-DL'
  AND arr_type = 'radarr'
  AND score = 660000;
-- --- END op 1250

-- --- BEGIN op 1251 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 240000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p WEB-DL'
  AND arr_type = 'sonarr'
  AND score = 660000;
-- --- END op 1251

-- --- BEGIN op 1252 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 180000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND score = 540000;
-- --- END op 1252

-- --- BEGIN op 1253 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', '720p WEBRip', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1253

-- --- BEGIN op 1254 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'DVD'
  AND arr_type = 'radarr'
  AND score = 200000;
-- --- END op 1254

-- --- BEGIN op 1255 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'DVD'
  AND arr_type = 'sonarr'
  AND score = 200000;
-- --- END op 1255

-- --- BEGIN op 1256 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'DVD Remux'
  AND arr_type = 'radarr'
  AND score = 220000;
-- --- END op 1256

-- --- BEGIN op 1257 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 20000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'DVD Remux'
  AND arr_type = 'sonarr'
  AND score = 220000;
-- --- END op 1257

-- --- BEGIN op 1258 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 420000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'UHD Bluray'
  AND arr_type = 'radarr'
  AND score = 840000;
-- --- END op 1258

-- --- BEGIN op 1259 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 420000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'UHD Bluray'
  AND arr_type = 'sonarr'
  AND score = 840000;
-- --- END op 1259

-- --- BEGIN op 1260 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 125000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 1'
  AND arr_type = 'radarr'
  AND score = 185003;
-- --- END op 1260

-- --- BEGIN op 1261 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 125000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 1'
  AND arr_type = 'sonarr'
  AND score = 185000;
-- --- END op 1261

-- --- BEGIN op 1262 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 124000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 2'
  AND arr_type = 'radarr'
  AND score = 184000;
-- --- END op 1262

-- --- BEGIN op 1263 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 124000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 2'
  AND arr_type = 'sonarr'
  AND score = 184000;
-- --- END op 1263

-- --- BEGIN op 1264 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 123000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 3'
  AND arr_type = 'radarr'
  AND score = 183000;
-- --- END op 1264

-- --- BEGIN op 1265 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 123000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 3'
  AND arr_type = 'sonarr'
  AND score = 183000;
-- --- END op 1265

-- --- BEGIN op 1266 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 122000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 4'
  AND arr_type = 'radarr'
  AND score = 182000;
-- --- END op 1266

-- --- BEGIN op 1267 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 122000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 4'
  AND arr_type = 'sonarr'
  AND score = 182000;
-- --- END op 1267

-- --- BEGIN op 1268 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 121000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 5'
  AND arr_type = 'radarr'
  AND score = 181000;
-- --- END op 1268

-- --- BEGIN op 1269 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 121000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 5'
  AND arr_type = 'sonarr'
  AND score = 181000;
-- --- END op 1269

-- --- BEGIN op 1270 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 120000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 6'
  AND arr_type = 'radarr'
  AND score = 180000;
-- --- END op 1270

-- --- BEGIN op 1271 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 120000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Quality Tier 6'
  AND arr_type = 'sonarr'
  AND score = 180000;
-- --- END op 1271

-- --- BEGIN op 1272 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'Dubs only'
  AND arr_type = 'radarr'
  AND score = 200000;
-- --- END op 1272

-- --- BEGIN op 1273 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'Dubs only'
  AND arr_type = 'sonarr'
  AND score = 200000;
-- --- END op 1273

-- --- BEGIN op 1274 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 101000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 161000;
-- --- END op 1274

-- --- BEGIN op 1275 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Balanced Tier 1'
  AND arr_type = 'sonarr'
  AND score = 161000;
-- --- END op 1275

-- --- BEGIN op 1276 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 100000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Balanced Tier 2'
  AND arr_type = 'radarr'
  AND score = 160000;
-- --- END op 1276

-- --- BEGIN op 1277 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '1080p Balanced Tier 2'
  AND arr_type = 'sonarr'
  AND score = 160000;
-- --- END op 1277

-- --- BEGIN op 1278 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 23000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p Quality Tier 1'
  AND arr_type = 'radarr'
  AND score = 83000;
-- --- END op 1278

-- --- BEGIN op 1279 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 23000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '480p Quality Tier 1'
  AND arr_type = 'sonarr'
  AND score = 83000;
-- --- END op 1279

-- --- BEGIN op 1280 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 43000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p Quality Tier 1'
  AND arr_type = 'radarr'
  AND score = 103000;
-- --- END op 1280

-- --- BEGIN op 1281 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 43000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '576p Quality Tier 1'
  AND arr_type = 'sonarr'
  AND score = 103000;
-- --- END op 1281

-- --- BEGIN op 1282 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 60000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 120000;
-- --- END op 1282

-- --- BEGIN op 1283 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Balanced Tier 1'
  AND arr_type = 'sonarr'
  AND score = 120000;
-- --- END op 1283

-- --- BEGIN op 1284 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 85000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 1'
  AND arr_type = 'radarr'
  AND score = 145000;
-- --- END op 1284

-- --- BEGIN op 1285 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 85000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = '720p Quality Tier 1'
  AND arr_type = 'sonarr'
  AND score = 145000;
-- --- END op 1285

-- --- BEGIN op 1286 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'BCORE', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 1286

-- --- BEGIN op 1287 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'radarr'
  AND score = 2000;
-- --- END op 1287

-- --- BEGIN op 1288 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 1288

-- --- BEGIN op 1289 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 11000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'DVD Quality Tier 1'
  AND arr_type = 'radarr'
  AND score = 61000;
-- --- END op 1289

-- --- BEGIN op 1290 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 11000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'DVD Quality Tier 1'
  AND arr_type = 'sonarr'
  AND score = 61000;
-- --- END op 1290

-- --- BEGIN op 1291 ( update quality_profile "1080p Cartoon" )
UPDATE quality_profile_custom_formats
SET score = 4000
WHERE quality_profile_name = '1080p Cartoon'
  AND custom_format_name = 'MA'
  AND arr_type = 'radarr'
  AND score = 3000;
-- --- END op 1291

-- --- BEGIN op 1292 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'x265 (Bluray)', 'radarr', -400000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'radarr'
);
-- --- END op 1292

-- --- BEGIN op 1293 ( update quality_profile "1080p Cartoon" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Cartoon', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Cartoon'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 1293

-- --- BEGIN op 1294 ( delete quality_profile "1080p Anime" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Anime';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Anime';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Anime';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Anime';

delete from "quality_groups" where "quality_profile_name" = '1080p Anime';

delete from "quality_profiles" where "name" = '1080p Anime';
-- --- END op 1294

-- --- BEGIN op 1295 ( create quality_profile "1080p Anime" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('1080p Anime', '1080p Quality HDR utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent x265 HDR** 1080p Encodes. 

- Average Movie Sizes ~ 10 to 20gb per Movie
- Movie Quality Ranking ~ 9/10
- Average TV Sizes ~ 4 to 10gb per Episode
- TV Quality Ranking ~ 9/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', '1080p');

insert into "tags" ("name") values ('Cartoon') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'Cartoon');

insert into "tags" ("name") values ('HDR') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'HDR');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'Lossy Audio');

insert into "tags" ("name") values ('Quality Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'Quality Focused');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'x264');

insert into "tags" ("name") values ('x265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'x265');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Anime', '1080p Quality HDR');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'Remux-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'Bluray-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'WEBDL-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'WEBRip-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '1080p Quality HDR', 'HDTV-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', NULL, '1080p Quality HDR', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Anime', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '720p', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', NULL, '720p', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p Anime', 'Ouch');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', 'Ouch', 'Bluray-576p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', 'Ouch', 'Bluray-480p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', 'Ouch', 'WEBDL-480p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', 'Ouch', 'DVD', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p Anime', 'Ouch', 'SDTV', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', NULL, 'Ouch', 2, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'Remux-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'Bluray-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'WEBDL-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'WEBRip-2160p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'HDTV-2160p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'WEBRip-480p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'HDTV-480p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'BR-DISK', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'CAM', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'DVD-R', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'DVDSCR', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'Raw-HD', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'REGIONAL', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'TELECINE', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'TELESYNC', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'WORKPRINT', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p Anime', 'Unknown', NULL, 19, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('1080p Anime', 'English', 'simple');
-- --- END op 1295

-- --- BEGIN op 1296 ( update quality_profile "1080p Anime" )
update "quality_profiles" set "minimum_custom_format_score" = 20000 where "name" = '1080p Anime' and "minimum_custom_format_score" = 0;
-- --- END op 1296

-- --- BEGIN op 1297 ( update quality_profile "1080p Anime" )
update "quality_profiles" set "upgrade_until_score" = 888888 where "name" = '1080p Anime' and "upgrade_until_score" = 0;
-- --- END op 1297

-- --- BEGIN op 1298 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Balanced Tier 1', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1298

-- --- BEGIN op 1299 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Balanced Tier 2', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1299

-- --- BEGIN op 1300 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Bluray', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1300

-- --- BEGIN op 1301 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Bluray', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1301

-- --- BEGIN op 1302 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1302

-- --- BEGIN op 1303 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1303

-- --- BEGIN op 1304 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1304

-- --- BEGIN op 1305 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1305

-- --- BEGIN op 1306 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1306

-- --- BEGIN op 1307 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1307

-- --- BEGIN op 1308 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1308

-- --- BEGIN op 1309 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1309

-- --- BEGIN op 1310 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 1', 'radarr', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1310

-- --- BEGIN op 1311 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 1', 'sonarr', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1311

-- --- BEGIN op 1312 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1312

-- --- BEGIN op 1313 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 2', 'radarr', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1313

-- --- BEGIN op 1314 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 2', 'sonarr', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1314

-- --- BEGIN op 1315 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1315

-- --- BEGIN op 1316 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 3', 'radarr', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1316

-- --- BEGIN op 1317 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 3', 'sonarr', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1317

-- --- BEGIN op 1318 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1318

-- --- BEGIN op 1319 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 4', 'radarr', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1319

-- --- BEGIN op 1320 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 4', 'sonarr', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1320

-- --- BEGIN op 1321 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1321

-- --- BEGIN op 1322 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 5', 'radarr', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 1322

-- --- BEGIN op 1323 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 5', 'sonarr', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 1323

-- --- BEGIN op 1324 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 1324

-- --- BEGIN op 1325 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 6', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1325

-- --- BEGIN op 1326 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p Quality Tier 6', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1326

-- --- BEGIN op 1327 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p WEB-DL', 'radarr', 380000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1327

-- --- BEGIN op 1328 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p WEB-DL', 'sonarr', 380000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1328

-- --- BEGIN op 1329 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p WEBRip', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 1329

-- --- BEGIN op 1330 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '1080p WEBRip', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1330

-- --- BEGIN op 1331 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 1331

-- --- BEGIN op 1332 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Bluray', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1332

-- --- BEGIN op 1333 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Bluray', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1333

-- --- BEGIN op 1334 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 1', 'radarr', 23000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1334

-- --- BEGIN op 1335 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 1', 'sonarr', 23000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1335

-- --- BEGIN op 1336 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1336

-- --- BEGIN op 1337 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1337

-- --- BEGIN op 1338 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1338

-- --- BEGIN op 1339 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1339

-- --- BEGIN op 1340 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1340

-- --- BEGIN op 1341 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1341

-- --- BEGIN op 1342 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p WEB-DL', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1342

-- --- BEGIN op 1343 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '480p WEB-DL', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1343

-- --- BEGIN op 1344 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Bluray', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1344

-- --- BEGIN op 1345 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Bluray', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1345

-- --- BEGIN op 1346 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 1', 'radarr', 43000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1346

-- --- BEGIN op 1347 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 1', 'sonarr', 43000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1347

-- --- BEGIN op 1348 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1348

-- --- BEGIN op 1349 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1349

-- --- BEGIN op 1350 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1350

-- --- BEGIN op 1351 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1351

-- --- BEGIN op 1352 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1352

-- --- BEGIN op 1353 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1353

-- --- BEGIN op 1354 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p WEB-DL', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1354

-- --- BEGIN op 1355 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '576p WEB-DL', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1355

-- --- BEGIN op 1356 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Balanced Tier 1', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1356

-- --- BEGIN op 1357 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Bluray', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1357

-- --- BEGIN op 1358 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Bluray', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1358

-- --- BEGIN op 1359 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1359

-- --- BEGIN op 1360 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1360

-- --- BEGIN op 1361 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1361

-- --- BEGIN op 1362 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1362

-- --- BEGIN op 1363 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1363

-- --- BEGIN op 1364 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1364

-- --- BEGIN op 1365 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1365

-- --- BEGIN op 1366 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1366

-- --- BEGIN op 1367 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 1367

-- --- BEGIN op 1368 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 1', 'radarr', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1368

-- --- BEGIN op 1369 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 1', 'sonarr', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1369

-- --- BEGIN op 1370 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1370

-- --- BEGIN op 1371 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1371

-- --- BEGIN op 1372 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1372

-- --- BEGIN op 1373 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1373

-- --- BEGIN op 1374 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1374

-- --- BEGIN op 1375 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1375

-- --- BEGIN op 1376 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1376

-- --- BEGIN op 1377 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1377

-- --- BEGIN op 1378 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1378

-- --- BEGIN op 1379 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1379

-- --- BEGIN op 1380 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 1380

-- --- BEGIN op 1381 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 1381

-- --- BEGIN op 1382 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 1382

-- --- BEGIN op 1383 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1383

-- --- BEGIN op 1384 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1384

-- --- BEGIN op 1385 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p WEB-DL', 'radarr', 240000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1385

-- --- BEGIN op 1386 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p WEB-DL', 'sonarr', 240000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1386

-- --- BEGIN op 1387 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p WEBRip', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 1387

-- --- BEGIN op 1388 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', '720p WEBRip', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1388

-- --- BEGIN op 1389 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 1389

-- --- BEGIN op 1390 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'AMZN', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'all'
);
-- --- END op 1390

-- --- BEGIN op 1391 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 1391

-- --- BEGIN op 1392 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 1392

-- --- BEGIN op 1393 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 1393

-- --- BEGIN op 1394 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 1394

-- --- BEGIN op 1395 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 1395

-- --- BEGIN op 1396 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'BCORE', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 1396

-- --- BEGIN op 1397 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1397

-- --- BEGIN op 1398 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1398

-- --- BEGIN op 1399 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 1399

-- --- BEGIN op 1400 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Banned UHD Bluray', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'all'
);
-- --- END op 1400

-- --- BEGIN op 1401 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 1401

-- --- BEGIN op 1402 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 1402

-- --- BEGIN op 1403 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 1403

-- --- BEGIN op 1404 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 1404

-- --- BEGIN op 1405 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 1405

-- --- BEGIN op 1406 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DSNP', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 1406

-- --- BEGIN op 1407 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DSNP', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 1407

-- --- BEGIN op 1408 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 1408

-- --- BEGIN op 1409 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 1409

-- --- BEGIN op 1410 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 1410

-- --- BEGIN op 1411 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 1411

-- --- BEGIN op 1412 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 1412

-- --- BEGIN op 1413 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Quality Tier 1', 'radarr', 11000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1413

-- --- BEGIN op 1414 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Quality Tier 1', 'sonarr', 11000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1414

-- --- BEGIN op 1415 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1415

-- --- BEGIN op 1416 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1416

-- --- BEGIN op 1417 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Remux', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 1417

-- --- BEGIN op 1418 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'DVD Remux', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 1418

-- --- BEGIN op 1419 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'all'
);
-- --- END op 1419

-- --- BEGIN op 1420 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 1420

-- --- BEGIN op 1421 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 1421

-- --- BEGIN op 1422 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Vision', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 1422

-- --- BEGIN op 1423 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dolby Vision (Without Fallback)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'all'
);
-- --- END op 1423

-- --- BEGIN op 1424 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 1424

-- --- BEGIN op 1425 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 1425

-- --- BEGIN op 1426 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 1426

-- --- BEGIN op 1427 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 1427

-- --- BEGIN op 1428 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 1428

-- --- BEGIN op 1429 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 1429

-- --- BEGIN op 1430 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 1430

-- --- BEGIN op 1431 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1431

-- --- BEGIN op 1432 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HDR', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 1432

-- --- BEGIN op 1433 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HDR (Missing)', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'all'
);
-- --- END op 1433

-- --- BEGIN op 1434 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HDR10+', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 1434

-- --- BEGIN op 1435 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HMAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'all'
);
-- --- END op 1435

-- --- BEGIN op 1436 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 1436

-- --- BEGIN op 1437 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 1437

-- --- BEGIN op 1438 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'MA', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 1438

-- --- BEGIN op 1439 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'MAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'MAX'
    AND arr_type = 'all'
);
-- --- END op 1439

-- --- BEGIN op 1440 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 1440

-- --- BEGIN op 1441 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 1441

-- --- BEGIN op 1442 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 1442

-- --- BEGIN op 1443 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 1443

-- --- BEGIN op 1444 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 1444

-- --- BEGIN op 1445 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 1445

-- --- BEGIN op 1446 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 1446

-- --- BEGIN op 1447 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 1447

-- --- BEGIN op 1448 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 1448

-- --- BEGIN op 1449 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 1449

-- --- BEGIN op 1450 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 1450

-- --- BEGIN op 1451 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 1451

-- --- BEGIN op 1452 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 1452

-- --- BEGIN op 1453 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 1453

-- --- BEGIN op 1454 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 1454

-- --- BEGIN op 1455 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 1455

-- --- BEGIN op 1456 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1456

-- --- BEGIN op 1457 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1457

-- --- BEGIN op 1458 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1458

-- --- BEGIN op 1459 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1459

-- --- BEGIN op 1460 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 1460

-- --- BEGIN op 1461 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 1461

-- --- BEGIN op 1462 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 1462

-- --- BEGIN op 1463 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 1463

-- --- BEGIN op 1464 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 1464

-- --- BEGIN op 1465 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 1465

-- --- BEGIN op 1466 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 1466

-- --- BEGIN op 1467 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Sub only', 'radarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'radarr'
);
-- --- END op 1467

-- --- BEGIN op 1468 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Sub only', 'sonarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'sonarr'
);
-- --- END op 1468

-- --- BEGIN op 1469 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'UHD Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1469

-- --- BEGIN op 1470 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'UHD Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1470

-- --- BEGIN op 1471 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 1471

-- --- BEGIN op 1472 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 1472

-- --- BEGIN op 1473 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 1473

-- --- BEGIN op 1474 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 1474

-- --- BEGIN op 1475 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 1475

-- --- BEGIN op 1476 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1476

-- --- BEGIN op 1477 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1477

-- --- BEGIN op 1478 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1478

-- --- BEGIN op 1479 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1479

-- --- BEGIN op 1480 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 1480

-- --- BEGIN op 1481 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 1481

-- --- BEGIN op 1482 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'iT', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'iT'
    AND arr_type = 'all'
);
-- --- END op 1482

-- --- BEGIN op 1483 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'x265 (Bluray)', 'radarr', -400000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'radarr'
);
-- --- END op 1483

-- --- BEGIN op 1484 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 1484

-- --- BEGIN op 1485 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_tags WHERE quality_profile_name = '1080p Anime' AND tag_name = 'Cartoon';

insert into "tags" ("name") values ('Anime') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p Anime', 'Anime');
-- --- END op 1485

-- --- BEGIN op 1486 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime Dual Audio', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'radarr'
);
-- --- END op 1486

-- --- BEGIN op 1487 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Anime Dual Audio', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Anime Dual Audio'
    AND arr_type = 'sonarr'
);
-- --- END op 1487

-- --- BEGIN op 1488 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dubs only', 'radarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dubs only'
    AND arr_type = 'radarr'
);
-- --- END op 1488

-- --- BEGIN op 1489 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Dubs only', 'sonarr', 200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Dubs only'
    AND arr_type = 'sonarr'
);
-- --- END op 1489

-- --- BEGIN op 1490 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Not Only Original', 'radarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Not Only Original'
    AND arr_type = 'radarr'
);
-- --- END op 1490

-- --- BEGIN op 1491 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Not Only Original', 'sonarr', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Not Only Original'
    AND arr_type = 'sonarr'
);
-- --- END op 1491

-- --- BEGIN op 1492 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Unwanted Anime Languages', 'radarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Unwanted Anime Languages'
    AND arr_type = 'radarr'
);
-- --- END op 1492

-- --- BEGIN op 1493 ( update quality_profile "1080p Anime" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p Anime', 'Unwanted Anime Languages', 'sonarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p Anime'
    AND custom_format_name = 'Unwanted Anime Languages'
    AND arr_type = 'sonarr'
);
-- --- END op 1493

-- --- BEGIN op 1494 ( delete quality_profile "1080p Quality HDR English" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Quality HDR English';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Quality HDR English';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Quality HDR English';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Quality HDR English';

delete from "quality_groups" where "quality_profile_name" = '1080p Quality HDR English';

delete from "quality_profiles" where "name" = '1080p Quality HDR English';
-- --- END op 1494

-- --- BEGIN op 1495 ( create quality_profile "1080p HDR English" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('1080p HDR English', '1080p Quality HDR utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent x265 HDR** 1080p Encodes. 

- Average Movie Sizes ~ 10 to 20gb per Movie
- Movie Quality Ranking ~ 9/10
- Average TV Sizes ~ 4 to 10gb per Episode
- TV Quality Ranking ~ 9/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR English', '1080p');

insert into "tags" ("name") values ('Cartoon') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR English', 'Cartoon');

insert into "tags" ("name") values ('HDR') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR English', 'HDR');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR English', 'Lossy Audio');

insert into "tags" ("name") values ('Quality Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR English', 'Quality Focused');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR English', 'x264');

insert into "tags" ("name") values ('x265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR English', 'x265');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p HDR English', '1080p Quality HDR');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', '1080p Quality HDR', 'Remux-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', '1080p Quality HDR', 'Bluray-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', '1080p Quality HDR', 'WEBDL-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', '1080p Quality HDR', 'WEBRip-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', '1080p Quality HDR', 'HDTV-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', NULL, '1080p Quality HDR', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p HDR English', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', '720p', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', NULL, '720p', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p HDR English', 'Ouch');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', 'Ouch', 'Bluray-576p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', 'Ouch', 'Bluray-480p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', 'Ouch', 'WEBDL-480p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', 'Ouch', 'DVD', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR English', 'Ouch', 'SDTV', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', NULL, 'Ouch', 2, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'Remux-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'Bluray-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'WEBDL-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'WEBRip-2160p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'HDTV-2160p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'WEBRip-480p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'HDTV-480p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'BR-DISK', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'CAM', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'DVD-R', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'DVDSCR', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'Raw-HD', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'REGIONAL', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'TELECINE', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'TELESYNC', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'WORKPRINT', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR English', 'Unknown', NULL, 19, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('1080p HDR English', 'English', 'simple');
-- --- END op 1495

-- --- BEGIN op 1496 ( update quality_profile "1080p HDR English" )
update "quality_profiles" set "minimum_custom_format_score" = 20000 where "name" = '1080p HDR English' and "minimum_custom_format_score" = 0;
-- --- END op 1496

-- --- BEGIN op 1497 ( update quality_profile "1080p HDR English" )
update "quality_profiles" set "upgrade_until_score" = 888888 where "name" = '1080p HDR English' and "upgrade_until_score" = 0;
-- --- END op 1497

-- --- BEGIN op 1498 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Balanced Tier 1', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1498

-- --- BEGIN op 1499 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Balanced Tier 2', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1499

-- --- BEGIN op 1500 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Bluray', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1500

-- --- BEGIN op 1501 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Bluray', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1501

-- --- BEGIN op 1502 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1502

-- --- BEGIN op 1503 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1503

-- --- BEGIN op 1504 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1504

-- --- BEGIN op 1505 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1505

-- --- BEGIN op 1506 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1506

-- --- BEGIN op 1507 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1507

-- --- BEGIN op 1508 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1508

-- --- BEGIN op 1509 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1509

-- --- BEGIN op 1510 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 1', 'radarr', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1510

-- --- BEGIN op 1511 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 1', 'sonarr', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1511

-- --- BEGIN op 1512 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1512

-- --- BEGIN op 1513 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 2', 'radarr', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1513

-- --- BEGIN op 1514 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 2', 'sonarr', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1514

-- --- BEGIN op 1515 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1515

-- --- BEGIN op 1516 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 3', 'radarr', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1516

-- --- BEGIN op 1517 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 3', 'sonarr', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1517

-- --- BEGIN op 1518 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1518

-- --- BEGIN op 1519 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 4', 'radarr', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1519

-- --- BEGIN op 1520 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 4', 'sonarr', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1520

-- --- BEGIN op 1521 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1521

-- --- BEGIN op 1522 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 5', 'radarr', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 1522

-- --- BEGIN op 1523 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 5', 'sonarr', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 1523

-- --- BEGIN op 1524 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 1524

-- --- BEGIN op 1525 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 6', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1525

-- --- BEGIN op 1526 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p Quality Tier 6', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1526

-- --- BEGIN op 1527 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p WEB-DL', 'radarr', 380000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1527

-- --- BEGIN op 1528 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p WEB-DL', 'sonarr', 380000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1528

-- --- BEGIN op 1529 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p WEBRip', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 1529

-- --- BEGIN op 1530 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '1080p WEBRip', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1530

-- --- BEGIN op 1531 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 1531

-- --- BEGIN op 1532 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p Bluray', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1532

-- --- BEGIN op 1533 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p Bluray', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1533

-- --- BEGIN op 1534 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p Quality Tier 1', 'radarr', 23000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1534

-- --- BEGIN op 1535 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p Quality Tier 1', 'sonarr', 23000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1535

-- --- BEGIN op 1536 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1536

-- --- BEGIN op 1537 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1537

-- --- BEGIN op 1538 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1538

-- --- BEGIN op 1539 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1539

-- --- BEGIN op 1540 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1540

-- --- BEGIN op 1541 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1541

-- --- BEGIN op 1542 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p WEB-DL', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1542

-- --- BEGIN op 1543 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '480p WEB-DL', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1543

-- --- BEGIN op 1544 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p Bluray', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1544

-- --- BEGIN op 1545 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p Bluray', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1545

-- --- BEGIN op 1546 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p Quality Tier 1', 'radarr', 43000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1546

-- --- BEGIN op 1547 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p Quality Tier 1', 'sonarr', 43000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1547

-- --- BEGIN op 1548 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1548

-- --- BEGIN op 1549 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1549

-- --- BEGIN op 1550 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1550

-- --- BEGIN op 1551 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1551

-- --- BEGIN op 1552 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1552

-- --- BEGIN op 1553 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1553

-- --- BEGIN op 1554 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p WEB-DL', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1554

-- --- BEGIN op 1555 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '576p WEB-DL', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1555

-- --- BEGIN op 1556 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Balanced Tier 1', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1556

-- --- BEGIN op 1557 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Bluray', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1557

-- --- BEGIN op 1558 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Bluray', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1558

-- --- BEGIN op 1559 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1559

-- --- BEGIN op 1560 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1560

-- --- BEGIN op 1561 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1561

-- --- BEGIN op 1562 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1562

-- --- BEGIN op 1563 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1563

-- --- BEGIN op 1564 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1564

-- --- BEGIN op 1565 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1565

-- --- BEGIN op 1566 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1566

-- --- BEGIN op 1567 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 1567

-- --- BEGIN op 1568 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 1', 'radarr', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1568

-- --- BEGIN op 1569 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 1', 'sonarr', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1569

-- --- BEGIN op 1570 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1570

-- --- BEGIN op 1571 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1571

-- --- BEGIN op 1572 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1572

-- --- BEGIN op 1573 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1573

-- --- BEGIN op 1574 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1574

-- --- BEGIN op 1575 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1575

-- --- BEGIN op 1576 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1576

-- --- BEGIN op 1577 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1577

-- --- BEGIN op 1578 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1578

-- --- BEGIN op 1579 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1579

-- --- BEGIN op 1580 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 1580

-- --- BEGIN op 1581 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 1581

-- --- BEGIN op 1582 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 1582

-- --- BEGIN op 1583 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1583

-- --- BEGIN op 1584 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1584

-- --- BEGIN op 1585 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p WEB-DL', 'radarr', 240000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1585

-- --- BEGIN op 1586 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p WEB-DL', 'sonarr', 240000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1586

-- --- BEGIN op 1587 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p WEBRip', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 1587

-- --- BEGIN op 1588 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', '720p WEBRip', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1588

-- --- BEGIN op 1589 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 1589

-- --- BEGIN op 1590 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'AMZN', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'all'
);
-- --- END op 1590

-- --- BEGIN op 1591 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 1591

-- --- BEGIN op 1592 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 1592

-- --- BEGIN op 1593 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 1593

-- --- BEGIN op 1594 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 1594

-- --- BEGIN op 1595 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 1595

-- --- BEGIN op 1596 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'BCORE', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 1596

-- --- BEGIN op 1597 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1597

-- --- BEGIN op 1598 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1598

-- --- BEGIN op 1599 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 1599

-- --- BEGIN op 1600 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Banned UHD Bluray', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'all'
);
-- --- END op 1600

-- --- BEGIN op 1601 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 1601

-- --- BEGIN op 1602 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 1602

-- --- BEGIN op 1603 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 1603

-- --- BEGIN op 1604 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 1604

-- --- BEGIN op 1605 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 1605

-- --- BEGIN op 1606 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DSNP', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 1606

-- --- BEGIN op 1607 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DSNP', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 1607

-- --- BEGIN op 1608 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 1608

-- --- BEGIN op 1609 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 1609

-- --- BEGIN op 1610 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 1610

-- --- BEGIN op 1611 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DVD', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 1611

-- --- BEGIN op 1612 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DVD', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 1612

-- --- BEGIN op 1613 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DVD Quality Tier 1', 'radarr', 11000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1613

-- --- BEGIN op 1614 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DVD Quality Tier 1', 'sonarr', 11000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1614

-- --- BEGIN op 1615 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1615

-- --- BEGIN op 1616 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1616

-- --- BEGIN op 1617 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DVD Remux', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 1617

-- --- BEGIN op 1618 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'DVD Remux', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 1618

-- --- BEGIN op 1619 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Dolby Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'all'
);
-- --- END op 1619

-- --- BEGIN op 1620 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 1620

-- --- BEGIN op 1621 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 1621

-- --- BEGIN op 1622 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Dolby Vision', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 1622

-- --- BEGIN op 1623 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Dolby Vision (Without Fallback)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'all'
);
-- --- END op 1623

-- --- BEGIN op 1624 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 1624

-- --- BEGIN op 1625 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 1625

-- --- BEGIN op 1626 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 1626

-- --- BEGIN op 1627 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 1627

-- --- BEGIN op 1628 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 1628

-- --- BEGIN op 1629 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 1629

-- --- BEGIN op 1630 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 1630

-- --- BEGIN op 1631 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1631

-- --- BEGIN op 1632 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'HDR', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 1632

-- --- BEGIN op 1633 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'HDR (Missing)', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'all'
);
-- --- END op 1633

-- --- BEGIN op 1634 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'HDR10+', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 1634

-- --- BEGIN op 1635 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'HMAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'all'
);
-- --- END op 1635

-- --- BEGIN op 1636 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 1636

-- --- BEGIN op 1637 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 1637

-- --- BEGIN op 1638 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'MA', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 1638

-- --- BEGIN op 1639 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'MAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'MAX'
    AND arr_type = 'all'
);
-- --- END op 1639

-- --- BEGIN op 1640 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 1640

-- --- BEGIN op 1641 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 1641

-- --- BEGIN op 1642 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 1642

-- --- BEGIN op 1643 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 1643

-- --- BEGIN op 1644 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 1644

-- --- BEGIN op 1645 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 1645

-- --- BEGIN op 1646 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 1646

-- --- BEGIN op 1647 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 1647

-- --- BEGIN op 1648 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 1648

-- --- BEGIN op 1649 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 1649

-- --- BEGIN op 1650 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 1650

-- --- BEGIN op 1651 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 1651

-- --- BEGIN op 1652 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 1652

-- --- BEGIN op 1653 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 1653

-- --- BEGIN op 1654 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 1654

-- --- BEGIN op 1655 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 1655

-- --- BEGIN op 1656 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1656

-- --- BEGIN op 1657 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1657

-- --- BEGIN op 1658 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1658

-- --- BEGIN op 1659 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1659

-- --- BEGIN op 1660 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 1660

-- --- BEGIN op 1661 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 1661

-- --- BEGIN op 1662 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 1662

-- --- BEGIN op 1663 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 1663

-- --- BEGIN op 1664 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 1664

-- --- BEGIN op 1665 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 1665

-- --- BEGIN op 1666 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 1666

-- --- BEGIN op 1667 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Sub only', 'radarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'radarr'
);
-- --- END op 1667

-- --- BEGIN op 1668 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Sub only', 'sonarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'sonarr'
);
-- --- END op 1668

-- --- BEGIN op 1669 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'UHD Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1669

-- --- BEGIN op 1670 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'UHD Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1670

-- --- BEGIN op 1671 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 1671

-- --- BEGIN op 1672 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 1672

-- --- BEGIN op 1673 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 1673

-- --- BEGIN op 1674 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 1674

-- --- BEGIN op 1675 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 1675

-- --- BEGIN op 1676 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1676

-- --- BEGIN op 1677 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1677

-- --- BEGIN op 1678 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1678

-- --- BEGIN op 1679 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1679

-- --- BEGIN op 1680 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 1680

-- --- BEGIN op 1681 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 1681

-- --- BEGIN op 1682 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'iT', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'iT'
    AND arr_type = 'all'
);
-- --- END op 1682

-- --- BEGIN op 1683 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'x265 (Bluray)', 'radarr', -400000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'radarr'
);
-- --- END op 1683

-- --- BEGIN op 1684 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 1684

-- --- BEGIN op 1685 ( create custom_format "Not English" )
insert into "custom_formats" ("name", "description") values ('Not English', '');
-- --- END op 1685

-- --- BEGIN op 1686 ( update custom_format "Not English" )
update "custom_formats" set "description" = 'Matches releases that don''''t include the Original or English language. Other Languages are allowed.' where "name" = 'Not English' and "description" = '';
-- --- END op 1686

-- --- BEGIN op 1687 ( update custom_format "Not English" )
insert into "tags" ("name") values ('Language') on conflict ("name") do nothing;

insert into "custom_format_tags" ("custom_format_name", "tag_name") values ('Not English', 'Language');
-- --- END op 1687

-- --- BEGIN op 1688 ( update custom_format "Not English" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not English', 'English', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not English', 'English', 'English', 0);
-- --- END op 1688

-- --- BEGIN op 1689 ( update custom_format "Not English" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Not English', 'Original', 'language', 'all', 1, 1);

INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('Not English', 'Original', 'Original', 0);
-- --- END op 1689

-- --- BEGIN op 1690 ( update custom_format "Not English" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'Not English'
	  AND name = 'Original'
	  AND type = 'language'
	  AND arr_type = 'all'
	  AND negate = 1
	  AND required = 1;
-- --- END op 1690

-- --- BEGIN op 1691 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Not English', 'radarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Not English'
    AND arr_type = 'radarr'
);
-- --- END op 1691

-- --- BEGIN op 1692 ( update quality_profile "1080p HDR English" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR English', 'Not English', 'sonarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR English'
    AND custom_format_name = 'Not English'
    AND arr_type = 'sonarr'
);
-- --- END op 1692

-- --- BEGIN op 1693 ( delete quality_profile "1080p Quality HDR" )
delete from "quality_profile_tags" where "quality_profile_name" = '1080p Quality HDR';

delete from "quality_profile_languages" where "quality_profile_name" = '1080p Quality HDR';

delete from "quality_profile_qualities" where "quality_profile_name" = '1080p Quality HDR';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '1080p Quality HDR';

delete from "quality_groups" where "quality_profile_name" = '1080p Quality HDR';

delete from "quality_profiles" where "name" = '1080p Quality HDR';
-- --- END op 1693

-- --- BEGIN op 1694 ( create quality_profile "1080p HDR" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('1080p HDR', '1080p Quality HDR utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent x265 HDR** 1080p Encodes. 

- Average Movie Sizes ~ 10 to 20gb per Movie
- Movie Quality Ranking ~ 9/10
- Average TV Sizes ~ 4 to 10gb per Episode
- TV Quality Ranking ~ 9/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR', '1080p');

insert into "tags" ("name") values ('Cartoon') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR', 'Cartoon');

insert into "tags" ("name") values ('HDR') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR', 'HDR');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR', 'Lossy Audio');

insert into "tags" ("name") values ('Quality Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR', 'Quality Focused');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR', 'x264');

insert into "tags" ("name") values ('x265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('1080p HDR', 'x265');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p HDR', '1080p Quality HDR');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', '1080p Quality HDR', 'Remux-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', '1080p Quality HDR', 'Bluray-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', '1080p Quality HDR', 'WEBDL-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', '1080p Quality HDR', 'WEBRip-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', '1080p Quality HDR', 'HDTV-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', NULL, '1080p Quality HDR', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p HDR', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', '720p', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', NULL, '720p', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('1080p HDR', 'Ouch');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', 'Ouch', 'Bluray-576p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', 'Ouch', 'Bluray-480p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', 'Ouch', 'WEBDL-480p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', 'Ouch', 'DVD', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('1080p HDR', 'Ouch', 'SDTV', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', NULL, 'Ouch', 2, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'Remux-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'Bluray-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'WEBDL-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'WEBRip-2160p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'HDTV-2160p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'WEBRip-480p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'HDTV-480p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'BR-DISK', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'CAM', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'DVD-R', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'DVDSCR', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'Raw-HD', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'REGIONAL', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'TELECINE', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'TELESYNC', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'WORKPRINT', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('1080p HDR', 'Unknown', NULL, 19, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('1080p HDR', 'English', 'simple');
-- --- END op 1694

-- --- BEGIN op 1695 ( update quality_profile "1080p HDR" )
update "quality_profiles" set "minimum_custom_format_score" = 20000 where "name" = '1080p HDR' and "minimum_custom_format_score" = 0;
-- --- END op 1695

-- --- BEGIN op 1696 ( update quality_profile "1080p HDR" )
update "quality_profiles" set "upgrade_until_score" = 888888 where "name" = '1080p HDR' and "upgrade_until_score" = 0;
-- --- END op 1696

-- --- BEGIN op 1697 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Balanced Tier 1', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1697

-- --- BEGIN op 1698 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Balanced Tier 2', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1698

-- --- BEGIN op 1699 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Bluray', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1699

-- --- BEGIN op 1700 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Bluray', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1700

-- --- BEGIN op 1701 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1701

-- --- BEGIN op 1702 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1702

-- --- BEGIN op 1703 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1703

-- --- BEGIN op 1704 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1704

-- --- BEGIN op 1705 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1705

-- --- BEGIN op 1706 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1706

-- --- BEGIN op 1707 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1707

-- --- BEGIN op 1708 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1708

-- --- BEGIN op 1709 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 1', 'radarr', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1709

-- --- BEGIN op 1710 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 1', 'sonarr', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1710

-- --- BEGIN op 1711 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1711

-- --- BEGIN op 1712 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 2', 'radarr', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1712

-- --- BEGIN op 1713 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 2', 'sonarr', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1713

-- --- BEGIN op 1714 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1714

-- --- BEGIN op 1715 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 3', 'radarr', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1715

-- --- BEGIN op 1716 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 3', 'sonarr', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1716

-- --- BEGIN op 1717 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1717

-- --- BEGIN op 1718 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 4', 'radarr', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1718

-- --- BEGIN op 1719 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 4', 'sonarr', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1719

-- --- BEGIN op 1720 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1720

-- --- BEGIN op 1721 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 5', 'radarr', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 1721

-- --- BEGIN op 1722 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 5', 'sonarr', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 1722

-- --- BEGIN op 1723 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 1723

-- --- BEGIN op 1724 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 6', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1724

-- --- BEGIN op 1725 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p Quality Tier 6', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1725

-- --- BEGIN op 1726 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p WEB-DL', 'radarr', 380000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1726

-- --- BEGIN op 1727 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p WEB-DL', 'sonarr', 380000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1727

-- --- BEGIN op 1728 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p WEBRip', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 1728

-- --- BEGIN op 1729 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '1080p WEBRip', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1729

-- --- BEGIN op 1730 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 1730

-- --- BEGIN op 1731 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p Bluray', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1731

-- --- BEGIN op 1732 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p Bluray', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1732

-- --- BEGIN op 1733 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p Quality Tier 1', 'radarr', 23000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1733

-- --- BEGIN op 1734 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p Quality Tier 1', 'sonarr', 23000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1734

-- --- BEGIN op 1735 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1735

-- --- BEGIN op 1736 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1736

-- --- BEGIN op 1737 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1737

-- --- BEGIN op 1738 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1738

-- --- BEGIN op 1739 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1739

-- --- BEGIN op 1740 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1740

-- --- BEGIN op 1741 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p WEB-DL', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1741

-- --- BEGIN op 1742 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '480p WEB-DL', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1742

-- --- BEGIN op 1743 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p Bluray', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1743

-- --- BEGIN op 1744 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p Bluray', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1744

-- --- BEGIN op 1745 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p Quality Tier 1', 'radarr', 43000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1745

-- --- BEGIN op 1746 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p Quality Tier 1', 'sonarr', 43000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1746

-- --- BEGIN op 1747 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1747

-- --- BEGIN op 1748 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1748

-- --- BEGIN op 1749 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1749

-- --- BEGIN op 1750 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1750

-- --- BEGIN op 1751 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1751

-- --- BEGIN op 1752 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1752

-- --- BEGIN op 1753 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p WEB-DL', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1753

-- --- BEGIN op 1754 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '576p WEB-DL', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1754

-- --- BEGIN op 1755 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Balanced Tier 1', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1755

-- --- BEGIN op 1756 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Bluray', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1756

-- --- BEGIN op 1757 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Bluray', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1757

-- --- BEGIN op 1758 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1758

-- --- BEGIN op 1759 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1759

-- --- BEGIN op 1760 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1760

-- --- BEGIN op 1761 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1761

-- --- BEGIN op 1762 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1762

-- --- BEGIN op 1763 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1763

-- --- BEGIN op 1764 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1764

-- --- BEGIN op 1765 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1765

-- --- BEGIN op 1766 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 1766

-- --- BEGIN op 1767 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 1', 'radarr', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1767

-- --- BEGIN op 1768 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 1', 'sonarr', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1768

-- --- BEGIN op 1769 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1769

-- --- BEGIN op 1770 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1770

-- --- BEGIN op 1771 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1771

-- --- BEGIN op 1772 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1772

-- --- BEGIN op 1773 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1773

-- --- BEGIN op 1774 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1774

-- --- BEGIN op 1775 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1775

-- --- BEGIN op 1776 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1776

-- --- BEGIN op 1777 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1777

-- --- BEGIN op 1778 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1778

-- --- BEGIN op 1779 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 1779

-- --- BEGIN op 1780 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 1780

-- --- BEGIN op 1781 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 1781

-- --- BEGIN op 1782 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1782

-- --- BEGIN op 1783 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1783

-- --- BEGIN op 1784 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p WEB-DL', 'radarr', 240000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1784

-- --- BEGIN op 1785 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p WEB-DL', 'sonarr', 240000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1785

-- --- BEGIN op 1786 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p WEBRip', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 1786

-- --- BEGIN op 1787 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', '720p WEBRip', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1787

-- --- BEGIN op 1788 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 1788

-- --- BEGIN op 1789 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'AMZN', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'all'
);
-- --- END op 1789

-- --- BEGIN op 1790 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 1790

-- --- BEGIN op 1791 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 1791

-- --- BEGIN op 1792 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 1792

-- --- BEGIN op 1793 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 1793

-- --- BEGIN op 1794 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 1794

-- --- BEGIN op 1795 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'BCORE', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 1795

-- --- BEGIN op 1796 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1796

-- --- BEGIN op 1797 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1797

-- --- BEGIN op 1798 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 1798

-- --- BEGIN op 1799 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Banned UHD Bluray', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'all'
);
-- --- END op 1799

-- --- BEGIN op 1800 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 1800

-- --- BEGIN op 1801 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 1801

-- --- BEGIN op 1802 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 1802

-- --- BEGIN op 1803 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 1803

-- --- BEGIN op 1804 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 1804

-- --- BEGIN op 1805 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DSNP', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 1805

-- --- BEGIN op 1806 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DSNP', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 1806

-- --- BEGIN op 1807 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 1807

-- --- BEGIN op 1808 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 1808

-- --- BEGIN op 1809 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 1809

-- --- BEGIN op 1810 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DVD', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 1810

-- --- BEGIN op 1811 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DVD', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 1811

-- --- BEGIN op 1812 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DVD Quality Tier 1', 'radarr', 11000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1812

-- --- BEGIN op 1813 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DVD Quality Tier 1', 'sonarr', 11000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1813

-- --- BEGIN op 1814 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1814

-- --- BEGIN op 1815 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1815

-- --- BEGIN op 1816 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DVD Remux', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 1816

-- --- BEGIN op 1817 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'DVD Remux', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 1817

-- --- BEGIN op 1818 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Dolby Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'all'
);
-- --- END op 1818

-- --- BEGIN op 1819 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 1819

-- --- BEGIN op 1820 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 1820

-- --- BEGIN op 1821 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Dolby Vision', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 1821

-- --- BEGIN op 1822 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Dolby Vision (Without Fallback)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'all'
);
-- --- END op 1822

-- --- BEGIN op 1823 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 1823

-- --- BEGIN op 1824 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 1824

-- --- BEGIN op 1825 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 1825

-- --- BEGIN op 1826 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 1826

-- --- BEGIN op 1827 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 1827

-- --- BEGIN op 1828 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 1828

-- --- BEGIN op 1829 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 1829

-- --- BEGIN op 1830 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1830

-- --- BEGIN op 1831 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'HDR', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 1831

-- --- BEGIN op 1832 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'HDR (Missing)', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'all'
);
-- --- END op 1832

-- --- BEGIN op 1833 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'HDR10+', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 1833

-- --- BEGIN op 1834 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'HMAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'all'
);
-- --- END op 1834

-- --- BEGIN op 1835 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 1835

-- --- BEGIN op 1836 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 1836

-- --- BEGIN op 1837 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'MA', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 1837

-- --- BEGIN op 1838 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'MAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'MAX'
    AND arr_type = 'all'
);
-- --- END op 1838

-- --- BEGIN op 1839 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 1839

-- --- BEGIN op 1840 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 1840

-- --- BEGIN op 1841 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 1841

-- --- BEGIN op 1842 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 1842

-- --- BEGIN op 1843 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 1843

-- --- BEGIN op 1844 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 1844

-- --- BEGIN op 1845 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 1845

-- --- BEGIN op 1846 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 1846

-- --- BEGIN op 1847 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 1847

-- --- BEGIN op 1848 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 1848

-- --- BEGIN op 1849 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 1849

-- --- BEGIN op 1850 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 1850

-- --- BEGIN op 1851 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 1851

-- --- BEGIN op 1852 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 1852

-- --- BEGIN op 1853 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 1853

-- --- BEGIN op 1854 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 1854

-- --- BEGIN op 1855 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1855

-- --- BEGIN op 1856 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1856

-- --- BEGIN op 1857 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1857

-- --- BEGIN op 1858 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1858

-- --- BEGIN op 1859 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 1859

-- --- BEGIN op 1860 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 1860

-- --- BEGIN op 1861 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 1861

-- --- BEGIN op 1862 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 1862

-- --- BEGIN op 1863 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 1863

-- --- BEGIN op 1864 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 1864

-- --- BEGIN op 1865 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 1865

-- --- BEGIN op 1866 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Sub only', 'radarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'radarr'
);
-- --- END op 1866

-- --- BEGIN op 1867 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Sub only', 'sonarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'sonarr'
);
-- --- END op 1867

-- --- BEGIN op 1868 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'UHD Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1868

-- --- BEGIN op 1869 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'UHD Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1869

-- --- BEGIN op 1870 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 1870

-- --- BEGIN op 1871 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 1871

-- --- BEGIN op 1872 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 1872

-- --- BEGIN op 1873 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 1873

-- --- BEGIN op 1874 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 1874

-- --- BEGIN op 1875 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1875

-- --- BEGIN op 1876 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1876

-- --- BEGIN op 1877 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1877

-- --- BEGIN op 1878 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1878

-- --- BEGIN op 1879 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 1879

-- --- BEGIN op 1880 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 1880

-- --- BEGIN op 1881 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'iT', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'iT'
    AND arr_type = 'all'
);
-- --- END op 1881

-- --- BEGIN op 1882 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'x265 (Bluray)', 'radarr', -400000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'radarr'
);
-- --- END op 1882

-- --- BEGIN op 1883 ( update quality_profile "1080p HDR" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '1080p HDR', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '1080p HDR'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 1883

-- --- BEGIN op 1884 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_tags WHERE quality_profile_name = '1080p HDR' AND tag_name = 'Cartoon';
-- --- END op 1884

-- --- BEGIN op 1885 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_languages WHERE quality_profile_name = '1080p HDR' AND language_name = 'English';

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT '1080p HDR', 'German', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = '1080p HDR'
);
-- --- END op 1885

-- --- BEGIN op 1886 ( delete quality_profile "2160p Quality" )
delete from "quality_profile_tags" where "quality_profile_name" = '2160p Quality';

delete from "quality_profile_languages" where "quality_profile_name" = '2160p Quality';

delete from "quality_profile_qualities" where "quality_profile_name" = '2160p Quality';

delete from "quality_profile_custom_formats" where "quality_profile_name" = '2160p Quality';

delete from "quality_groups" where "quality_profile_name" = '2160p Quality';

delete from "quality_profiles" where "name" = '2160p Quality';
-- --- END op 1886

-- --- BEGIN op 1887 ( create quality_profile "2160p Quality" )
insert into "quality_profiles" ("name", "description", "upgrades_allowed", "minimum_custom_format_score", "upgrade_until_score", "upgrade_score_increment") values ('2160p Quality', '1080p Quality HDR utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent x265 HDR** 1080p Encodes. 

- Average Movie Sizes ~ 10 to 20gb per Movie
- Movie Quality Ranking ~ 9/10
- Average TV Sizes ~ 4 to 10gb per Episode
- TV Quality Ranking ~ 9/10', 1, 0, 0, 1);

insert into "tags" ("name") values ('1080p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Quality', '1080p');

insert into "tags" ("name") values ('Cartoon') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Quality', 'Cartoon');

insert into "tags" ("name") values ('HDR') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Quality', 'HDR');

insert into "tags" ("name") values ('Lossy Audio') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Quality', 'Lossy Audio');

insert into "tags" ("name") values ('Quality Focused') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Quality', 'Quality Focused');

insert into "tags" ("name") values ('x264') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Quality', 'x264');

insert into "tags" ("name") values ('x265') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Quality', 'x265');

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('2160p Quality', '1080p Quality HDR');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', '1080p Quality HDR', 'Remux-1080p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', '1080p Quality HDR', 'Bluray-1080p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', '1080p Quality HDR', 'WEBDL-1080p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', '1080p Quality HDR', 'WEBRip-1080p', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', '1080p Quality HDR', 'HDTV-1080p', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', NULL, '1080p Quality HDR', 0, 1, 1);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('2160p Quality', '720p');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', '720p', 'Bluray-720p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', '720p', 'WEBDL-720p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', '720p', 'WEBRip-720p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', '720p', 'HDTV-720p', 3);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', NULL, '720p', 1, 1, 0);

INSERT INTO quality_groups (quality_profile_name, name) VALUES ('2160p Quality', 'Ouch');

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', 'Ouch', 'Bluray-576p', 0);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', 'Ouch', 'Bluray-480p', 1);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', 'Ouch', 'WEBDL-480p', 2);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', 'Ouch', 'DVD', 3);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position) VALUES ('2160p Quality', 'Ouch', 'SDTV', 4);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', NULL, 'Ouch', 2, 1, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'Remux-2160p', NULL, 3, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'Bluray-2160p', NULL, 4, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'WEBDL-2160p', NULL, 5, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'WEBRip-2160p', NULL, 6, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'HDTV-2160p', NULL, 7, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'WEBRip-480p', NULL, 8, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'HDTV-480p', NULL, 9, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'BR-DISK', NULL, 10, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'CAM', NULL, 11, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'DVD-R', NULL, 12, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'DVDSCR', NULL, 13, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'Raw-HD', NULL, 14, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'REGIONAL', NULL, 15, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'TELECINE', NULL, 16, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'TELESYNC', NULL, 17, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'WORKPRINT', NULL, 18, 0, 0);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until) VALUES ('2160p Quality', 'Unknown', NULL, 19, 0, 0);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type) VALUES ('2160p Quality', 'English', 'simple');
-- --- END op 1887

-- --- BEGIN op 1888 ( update quality_profile "2160p Quality" )
update "quality_profiles" set "minimum_custom_format_score" = 20000 where "name" = '2160p Quality' and "minimum_custom_format_score" = 0;
-- --- END op 1888

-- --- BEGIN op 1889 ( update quality_profile "2160p Quality" )
update "quality_profiles" set "upgrade_until_score" = 888888 where "name" = '2160p Quality' and "upgrade_until_score" = 0;
-- --- END op 1889

-- --- BEGIN op 1890 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Balanced Tier 1', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1890

-- --- BEGIN op 1891 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Balanced Tier 2', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1891

-- --- BEGIN op 1892 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Bluray', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1892

-- --- BEGIN op 1893 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Bluray', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1893

-- --- BEGIN op 1894 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p HDTV', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1894

-- --- BEGIN op 1895 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p HDTV', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1895

-- --- BEGIN op 1896 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p HDTV Tier 1', 'radarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1896

-- --- BEGIN op 1897 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p HDTV Tier 1', 'sonarr', 42000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1897

-- --- BEGIN op 1898 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p HDTV Tier 2', 'radarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1898

-- --- BEGIN op 1899 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p HDTV Tier 2', 'sonarr', 41000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1899

-- --- BEGIN op 1900 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p HDTV Tier 3', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1900

-- --- BEGIN op 1901 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p HDTV Tier 3', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1901

-- --- BEGIN op 1902 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 1', 'radarr', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1902

-- --- BEGIN op 1903 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 1', 'sonarr', 125000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1903

-- --- BEGIN op 1904 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 2', 'all', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1904

-- --- BEGIN op 1905 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 2', 'radarr', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1905

-- --- BEGIN op 1906 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 2', 'sonarr', 124000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1906

-- --- BEGIN op 1907 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 3', 'all', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1907

-- --- BEGIN op 1908 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 3', 'radarr', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1908

-- --- BEGIN op 1909 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 3', 'sonarr', 123000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1909

-- --- BEGIN op 1910 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 4', 'all', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1910

-- --- BEGIN op 1911 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 4', 'radarr', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1911

-- --- BEGIN op 1912 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 4', 'sonarr', 122000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1912

-- --- BEGIN op 1913 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 5', 'all', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1913

-- --- BEGIN op 1914 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 5', 'radarr', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 1914

-- --- BEGIN op 1915 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 5', 'sonarr', 121000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 1915

-- --- BEGIN op 1916 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 6', 'all', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 1916

-- --- BEGIN op 1917 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 6', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1917

-- --- BEGIN op 1918 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p Quality Tier 6', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1918

-- --- BEGIN op 1919 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p WEB-DL', 'radarr', 380000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1919

-- --- BEGIN op 1920 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p WEB-DL', 'sonarr', 380000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1920

-- --- BEGIN op 1921 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p WEBRip', 'radarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 1921

-- --- BEGIN op 1922 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '1080p WEBRip', 'sonarr', 280000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '1080p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1922

-- --- BEGIN op 1923 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '3D', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '3D'
    AND arr_type = 'radarr'
);
-- --- END op 1923

-- --- BEGIN op 1924 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p Bluray', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1924

-- --- BEGIN op 1925 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p Bluray', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1925

-- --- BEGIN op 1926 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p Quality Tier 1', 'radarr', 23000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1926

-- --- BEGIN op 1927 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p Quality Tier 1', 'sonarr', 23000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1927

-- --- BEGIN op 1928 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p Quality Tier 2', 'radarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1928

-- --- BEGIN op 1929 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p Quality Tier 2', 'sonarr', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1929

-- --- BEGIN op 1930 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p Quality Tier 3', 'radarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1930

-- --- BEGIN op 1931 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p Quality Tier 3', 'sonarr', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1931

-- --- BEGIN op 1932 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p Quality Tier 4', 'radarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1932

-- --- BEGIN op 1933 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p Quality Tier 4', 'sonarr', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1933

-- --- BEGIN op 1934 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p WEB-DL', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1934

-- --- BEGIN op 1935 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '480p WEB-DL', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '480p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1935

-- --- BEGIN op 1936 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p Bluray', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1936

-- --- BEGIN op 1937 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p Bluray', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1937

-- --- BEGIN op 1938 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p Quality Tier 1', 'radarr', 43000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1938

-- --- BEGIN op 1939 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p Quality Tier 1', 'sonarr', 43000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1939

-- --- BEGIN op 1940 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p Quality Tier 2', 'radarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1940

-- --- BEGIN op 1941 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p Quality Tier 2', 'sonarr', 102000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1941

-- --- BEGIN op 1942 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p Quality Tier 3', 'radarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1942

-- --- BEGIN op 1943 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p Quality Tier 3', 'sonarr', 101000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1943

-- --- BEGIN op 1944 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p Quality Tier 4', 'radarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1944

-- --- BEGIN op 1945 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p Quality Tier 4', 'sonarr', 100000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1945

-- --- BEGIN op 1946 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p WEB-DL', 'radarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1946

-- --- BEGIN op 1947 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '576p WEB-DL', 'sonarr', 120000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '576p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1947

-- --- BEGIN op 1948 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Balanced Tier 1', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1948

-- --- BEGIN op 1949 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Bluray', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 1949

-- --- BEGIN op 1950 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Bluray', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 1950

-- --- BEGIN op 1951 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p HDTV', 'radarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'radarr'
);
-- --- END op 1951

-- --- BEGIN op 1952 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p HDTV', 'sonarr', 40000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p HDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 1952

-- --- BEGIN op 1953 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p HDTV Tier 1', 'radarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1953

-- --- BEGIN op 1954 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p HDTV Tier 1', 'sonarr', 22000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p HDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1954

-- --- BEGIN op 1955 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p HDTV Tier 2', 'radarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1955

-- --- BEGIN op 1956 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p HDTV Tier 2', 'sonarr', 21000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p HDTV Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1956

-- --- BEGIN op 1957 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p HDTV Tier 3', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1957

-- --- BEGIN op 1958 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p HDTV Tier 3', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p HDTV Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1958

-- --- BEGIN op 1959 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 1', 'all', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'all'
);
-- --- END op 1959

-- --- BEGIN op 1960 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 1', 'radarr', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 1960

-- --- BEGIN op 1961 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 1', 'sonarr', 85000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 1961

-- --- BEGIN op 1962 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 2', 'all', 84000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'all'
);
-- --- END op 1962

-- --- BEGIN op 1963 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 2', 'radarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 1963

-- --- BEGIN op 1964 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 2', 'sonarr', 144000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 1964

-- --- BEGIN op 1965 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 3', 'all', 83000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'all'
);
-- --- END op 1965

-- --- BEGIN op 1966 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 3', 'radarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 1966

-- --- BEGIN op 1967 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 3', 'sonarr', 143000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 1967

-- --- BEGIN op 1968 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 4', 'all', 82000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'all'
);
-- --- END op 1968

-- --- BEGIN op 1969 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 4', 'radarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 1969

-- --- BEGIN op 1970 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 4', 'sonarr', 142000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 1970

-- --- BEGIN op 1971 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 5', 'all', 81000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'all'
);
-- --- END op 1971

-- --- BEGIN op 1972 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 5', 'radarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 1972

-- --- BEGIN op 1973 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 5', 'sonarr', 141000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 1973

-- --- BEGIN op 1974 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 6', 'all', 80000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'all'
);
-- --- END op 1974

-- --- BEGIN op 1975 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 6', 'radarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 1975

-- --- BEGIN op 1976 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p Quality Tier 6', 'sonarr', 140000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 1976

-- --- BEGIN op 1977 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p WEB-DL', 'radarr', 240000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 1977

-- --- BEGIN op 1978 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p WEB-DL', 'sonarr', 240000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 1978

-- --- BEGIN op 1979 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p WEBRip', 'radarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'radarr'
);
-- --- END op 1979

-- --- BEGIN op 1980 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '720p WEBRip', 'sonarr', 180000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '720p WEBRip'
    AND arr_type = 'sonarr'
);
-- --- END op 1980

-- --- BEGIN op 1981 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'AAC', 'all', 200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'AAC'
    AND arr_type = 'all'
);
-- --- END op 1981

-- --- BEGIN op 1982 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'AMZN', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'all'
);
-- --- END op 1982

-- --- BEGIN op 1983 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'ATVP', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'ATVP'
    AND arr_type = 'all'
);
-- --- END op 1983

-- --- BEGIN op 1984 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'AV1', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'AV1'
    AND arr_type = 'all'
);
-- --- END op 1984

-- --- BEGIN op 1985 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Audio Description', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Audio Description'
    AND arr_type = 'all'
);
-- --- END op 1985

-- --- BEGIN op 1986 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'B&W', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'B&W'
    AND arr_type = 'radarr'
);
-- --- END op 1986

-- --- BEGIN op 1987 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'BCORE', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'radarr'
);
-- --- END op 1987

-- --- BEGIN op 1988 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'BCORE', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'BCORE'
    AND arr_type = 'sonarr'
);
-- --- END op 1988

-- --- BEGIN op 1989 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Banned Dual Audio Groups', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'radarr'
);
-- --- END op 1989

-- --- BEGIN op 1990 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Banned Dual Audio Groups', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Banned Dual Audio Groups'
    AND arr_type = 'sonarr'
);
-- --- END op 1990

-- --- BEGIN op 1991 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Banned Groups', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Banned Groups'
    AND arr_type = 'all'
);
-- --- END op 1991

-- --- BEGIN op 1992 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Banned UHD Bluray', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Banned UHD Bluray'
    AND arr_type = 'all'
);
-- --- END op 1992

-- --- BEGIN op 1993 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Banned WEBRip', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Banned WEBRip'
    AND arr_type = 'all'
);
-- --- END op 1993

-- --- BEGIN op 1994 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Better Theatricals', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Better Theatricals'
    AND arr_type = 'radarr'
);
-- --- END op 1994

-- --- BEGIN op 1995 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'CRAV', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'CRAV'
    AND arr_type = 'all'
);
-- --- END op 1995

-- --- BEGIN op 1996 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'CRIT', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'CRIT'
    AND arr_type = 'radarr'
);
-- --- END op 1996

-- --- BEGIN op 1997 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DRPO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DRPO'
    AND arr_type = 'all'
);
-- --- END op 1997

-- --- BEGIN op 1998 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DSNP', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'radarr'
);
-- --- END op 1998

-- --- BEGIN op 1999 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DSNP', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DSNP'
    AND arr_type = 'sonarr'
);
-- --- END op 1999

-- --- BEGIN op 2000 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DTS', 'all', 300
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DTS'
    AND arr_type = 'all'
);
-- --- END op 2000

-- --- BEGIN op 2001 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DTS-ES', 'all', 500
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DTS-ES'
    AND arr_type = 'all'
);
-- --- END op 2001

-- --- BEGIN op 2002 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DTS-HD HRA', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DTS-HD HRA'
    AND arr_type = 'all'
);
-- --- END op 2002

-- --- BEGIN op 2003 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DVD', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DVD'
    AND arr_type = 'radarr'
);
-- --- END op 2003

-- --- BEGIN op 2004 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DVD', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DVD'
    AND arr_type = 'sonarr'
);
-- --- END op 2004

-- --- BEGIN op 2005 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DVD Quality Tier 1', 'radarr', 11000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2005

-- --- BEGIN op 2006 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DVD Quality Tier 1', 'sonarr', 11000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DVD Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2006

-- --- BEGIN op 2007 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DVD Quality Tier 2', 'radarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2007

-- --- BEGIN op 2008 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DVD Quality Tier 2', 'sonarr', 60000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DVD Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2008

-- --- BEGIN op 2009 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DVD Remux', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'radarr'
);
-- --- END op 2009

-- --- BEGIN op 2010 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DVD Remux', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DVD Remux'
    AND arr_type = 'sonarr'
);
-- --- END op 2010

-- --- BEGIN op 2011 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Dolby Atmos', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Dolby Atmos'
    AND arr_type = 'all'
);
-- --- END op 2011

-- --- BEGIN op 2012 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Dolby Digital', 'all', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Dolby Digital'
    AND arr_type = 'all'
);
-- --- END op 2012

-- --- BEGIN op 2013 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Dolby Digital +', 'all', 600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Dolby Digital +'
    AND arr_type = 'all'
);
-- --- END op 2013

-- --- BEGIN op 2014 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Dolby Vision', 'all', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Dolby Vision'
    AND arr_type = 'all'
);
-- --- END op 2014

-- --- BEGIN op 2015 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Dolby Vision (Without Fallback)', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Dolby Vision (Without Fallback)'
    AND arr_type = 'all'
);
-- --- END op 2015

-- --- BEGIN op 2016 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Extended Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Extended Edition'
    AND arr_type = 'radarr'
);
-- --- END op 2016

-- --- BEGIN op 2017 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Extras', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Extras'
    AND arr_type = 'radarr'
);
-- --- END op 2017

-- --- BEGIN op 2018 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Extras', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Extras'
    AND arr_type = 'sonarr'
);
-- --- END op 2018

-- --- BEGIN op 2019 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'FLAC', 'all', 800
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'FLAC'
    AND arr_type = 'all'
);
-- --- END op 2019

-- --- BEGIN op 2020 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Full Disc', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Full Disc'
    AND arr_type = 'all'
);
-- --- END op 2020

-- --- BEGIN op 2021 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Full Disc (Quality Match)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Full Disc (Quality Match)'
    AND arr_type = 'radarr'
);
-- --- END op 2021

-- --- BEGIN op 2022 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'German DL', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'German DL'
    AND arr_type = 'radarr'
);
-- --- END op 2022

-- --- BEGIN op 2023 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'German DL', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'German DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2023

-- --- BEGIN op 2024 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HDR', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HDR'
    AND arr_type = 'all'
);
-- --- END op 2024

-- --- BEGIN op 2025 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HDR (Missing)', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HDR (Missing)'
    AND arr_type = 'all'
);
-- --- END op 2025

-- --- BEGIN op 2026 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HDR10+', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HDR10+'
    AND arr_type = 'all'
);
-- --- END op 2026

-- --- BEGIN op 2027 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HMAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'all'
);
-- --- END op 2027

-- --- BEGIN op 2028 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HTSR', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HTSR'
    AND arr_type = 'all'
);
-- --- END op 2028

-- --- BEGIN op 2029 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HULU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HULU'
    AND arr_type = 'all'
);
-- --- END op 2029

-- --- BEGIN op 2030 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'MA', 'radarr', 4000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'MA'
    AND arr_type = 'radarr'
);
-- --- END op 2030

-- --- BEGIN op 2031 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'MAX', 'all', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'MAX'
    AND arr_type = 'all'
);
-- --- END op 2031

-- --- BEGIN op 2032 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'MUBI', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'MUBI'
    AND arr_type = 'all'
);
-- --- END op 2032

-- --- BEGIN op 2033 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'NF', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'NF'
    AND arr_type = 'all'
);
-- --- END op 2033

-- --- BEGIN op 2034 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'NOW', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'NOW'
    AND arr_type = 'all'
);
-- --- END op 2034

-- --- BEGIN op 2035 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Not Original or English', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'radarr'
);
-- --- END op 2035

-- --- BEGIN op 2036 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Not Original or English', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Not Original or English'
    AND arr_type = 'sonarr'
);
-- --- END op 2036

-- --- BEGIN op 2037 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Opus', 'all', 700
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Opus'
    AND arr_type = 'all'
);
-- --- END op 2037

-- --- BEGIN op 2038 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'PCOK', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'PCOK'
    AND arr_type = 'all'
);
-- --- END op 2038

-- --- BEGIN op 2039 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'PLAY', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'PLAY'
    AND arr_type = 'all'
);
-- --- END op 2039

-- --- BEGIN op 2040 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'PMTP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'PMTP'
    AND arr_type = 'all'
);
-- --- END op 2040

-- --- BEGIN op 2041 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'ROKU', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'ROKU'
    AND arr_type = 'all'
);
-- --- END op 2041

-- --- BEGIN op 2042 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Release Group (Missing)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 2042

-- --- BEGIN op 2043 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Release Group (Missing)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Release Group (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 2043

-- --- BEGIN op 2044 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Remux', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Remux'
    AND arr_type = 'all'
);
-- --- END op 2044

-- --- BEGIN op 2045 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Repack1', 'all', 6
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Repack1'
    AND arr_type = 'all'
);
-- --- END op 2045

-- --- BEGIN op 2046 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Repack2', 'all', 7
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Repack2'
    AND arr_type = 'all'
);
-- --- END op 2046

-- --- BEGIN op 2047 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Repack3', 'all', 8
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Repack3'
    AND arr_type = 'all'
);
-- --- END op 2047

-- --- BEGIN op 2048 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'SDTV', 'radarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'radarr'
);
-- --- END op 2048

-- --- BEGIN op 2049 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'SDTV', 'sonarr', 20000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'SDTV'
    AND arr_type = 'sonarr'
);
-- --- END op 2049

-- --- BEGIN op 2050 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'SDTV Tier 1', 'radarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2050

-- --- BEGIN op 2051 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'SDTV Tier 1', 'sonarr', 10000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'SDTV Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2051

-- --- BEGIN op 2052 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'SHO', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'SHO'
    AND arr_type = 'all'
);
-- --- END op 2052

-- --- BEGIN op 2053 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'SKST', 'radarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'SKST'
    AND arr_type = 'radarr'
);
-- --- END op 2053

-- --- BEGIN op 2054 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'SKST', 'sonarr', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'SKST'
    AND arr_type = 'sonarr'
);
-- --- END op 2054

-- --- BEGIN op 2055 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'STAN', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'STAN'
    AND arr_type = 'all'
);
-- --- END op 2055

-- --- BEGIN op 2056 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Season Pack', 'sonarr', 10
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Season Pack'
    AND arr_type = 'sonarr'
);
-- --- END op 2056

-- --- BEGIN op 2057 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Sing Along', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Sing Along'
    AND arr_type = 'radarr'
);
-- --- END op 2057

-- --- BEGIN op 2058 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Special Edition', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Special Edition'
    AND arr_type = 'radarr'
);
-- --- END op 2058

-- --- BEGIN op 2059 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Sub only', 'radarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'radarr'
);
-- --- END op 2059

-- --- BEGIN op 2060 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Sub only', 'sonarr', -200000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Sub only'
    AND arr_type = 'sonarr'
);
-- --- END op 2060

-- --- BEGIN op 2061 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'UHD Bluray', 'radarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'radarr'
);
-- --- END op 2061

-- --- BEGIN op 2062 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'UHD Bluray', 'sonarr', 420000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'UHD Bluray'
    AND arr_type = 'sonarr'
);
-- --- END op 2062

-- --- BEGIN op 2063 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Upscale', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'radarr'
);
-- --- END op 2063

-- --- BEGIN op 2064 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Upscale', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Upscale'
    AND arr_type = 'sonarr'
);
-- --- END op 2064

-- --- BEGIN op 2065 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'VP9', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'VP9'
    AND arr_type = 'all'
);
-- --- END op 2065

-- --- BEGIN op 2066 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'VVC', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'VVC'
    AND arr_type = 'all'
);
-- --- END op 2066

-- --- BEGIN op 2067 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'WEB-DL Tier 1', 'all', 100
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'WEB-DL Tier 1'
    AND arr_type = 'all'
);
-- --- END op 2067

-- --- BEGIN op 2068 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'WEB-DL Tier 2', 'all', 80
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'WEB-DL Tier 2'
    AND arr_type = 'all'
);
-- --- END op 2068

-- --- BEGIN op 2069 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'WEB-DL Tier 3', 'all', 60
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'WEB-DL Tier 3'
    AND arr_type = 'all'
);
-- --- END op 2069

-- --- BEGIN op 2070 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'WEB-DL Tier 4', 'all', 40
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'WEB-DL Tier 4'
    AND arr_type = 'all'
);
-- --- END op 2070

-- --- BEGIN op 2071 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'WEB-DL Tier 5', 'all', 20
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'WEB-DL Tier 5'
    AND arr_type = 'all'
);
-- --- END op 2071

-- --- BEGIN op 2072 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Xvid', 'all', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Xvid'
    AND arr_type = 'all'
);
-- --- END op 2072

-- --- BEGIN op 2073 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'iP', 'all', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'iP'
    AND arr_type = 'all'
);
-- --- END op 2073

-- --- BEGIN op 2074 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'iT', 'all', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'iT'
    AND arr_type = 'all'
);
-- --- END op 2074

-- --- BEGIN op 2075 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'x265 (Bluray)', 'radarr', -400000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'radarr'
);
-- --- END op 2075

-- --- BEGIN op 2076 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'x265 (WEB)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'radarr'
);
-- --- END op 2076

-- --- BEGIN op 2077 ( update quality_profile "2160p Quality" )
update "quality_profiles" set "description" = '2160p Quality utilizes the [**Encode Efficiency Index**](https://dictionarry.dev/wiki/eei) metric at a 60% target ratio to prioritize **Transparent** x265 4K Encodes

- Average Movie Sizes ~ 30 to 50gb per Movie
- Movie Quality Ranking ~ 9/10
- Average TV Sizes ~ 10 to 20gb per Episode
- TV Quality Ranking ~ 9/10' where "name" = '2160p Quality' and "description" = '1080p Quality HDR utilizes the [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi) to target **Transparent x265 HDR** 1080p Encodes. 

- Average Movie Sizes ~ 10 to 20gb per Movie
- Movie Quality Ranking ~ 9/10
- Average TV Sizes ~ 4 to 10gb per Episode
- TV Quality Ranking ~ 9/10';
-- --- END op 2077

-- --- BEGIN op 2078 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_languages WHERE quality_profile_name = '2160p Quality' AND language_name = 'English';

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT '2160p Quality', 'German', 'simple'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_languages
  WHERE quality_profile_name = '2160p Quality'
);
-- --- END op 2078

-- --- BEGIN op 2079 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_tags WHERE quality_profile_name = '2160p Quality' AND tag_name = '1080p';

DELETE FROM quality_profile_tags WHERE quality_profile_name = '2160p Quality' AND tag_name = 'Cartoon';

insert into "tags" ("name") values ('2160p') on conflict ("name") do nothing;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name) VALUES ('2160p Quality', '2160p');
-- --- END op 2079

-- --- BEGIN op 2080 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 1', 'radarr', 465000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2080

-- --- BEGIN op 2081 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 1', 'sonarr', 465000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2081

-- --- BEGIN op 2082 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 2', 'radarr', 464000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2082

-- --- BEGIN op 2083 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 2', 'sonarr', 464000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 2'
    AND arr_type = 'sonarr'
);
-- --- END op 2083

-- --- BEGIN op 2084 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 3', 'radarr', 463000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2084

-- --- BEGIN op 2085 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 3', 'sonarr', 463000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 3'
    AND arr_type = 'sonarr'
);
-- --- END op 2085

-- --- BEGIN op 2086 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 4', 'radarr', 462000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 4'
    AND arr_type = 'radarr'
);
-- --- END op 2086

-- --- BEGIN op 2087 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 4', 'sonarr', 462000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 4'
    AND arr_type = 'sonarr'
);
-- --- END op 2087

-- --- BEGIN op 2088 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 5', 'radarr', 460000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 5'
    AND arr_type = 'radarr'
);
-- --- END op 2088

-- --- BEGIN op 2089 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 5', 'sonarr', 460000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 5'
    AND arr_type = 'sonarr'
);
-- --- END op 2089

-- --- BEGIN op 2090 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p WEB-DL', 'radarr', 440000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p WEB-DL'
    AND arr_type = 'radarr'
);
-- --- END op 2090

-- --- BEGIN op 2091 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p WEB-DL', 'sonarr', 440000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p WEB-DL'
    AND arr_type = 'sonarr'
);
-- --- END op 2091

-- --- BEGIN op 2092 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 6', 'radarr', 439000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 6'
    AND arr_type = 'radarr'
);
-- --- END op 2092

-- --- BEGIN op 2093 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Quality Tier 6', 'sonarr', 439000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Quality Tier 6'
    AND arr_type = 'sonarr'
);
-- --- END op 2093

-- --- BEGIN op 2094 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'AMZN', 'radarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'radarr'
);
-- --- END op 2094

-- --- BEGIN op 2095 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'AMZN', 'sonarr', 3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'AMZN'
    AND arr_type = 'sonarr'
);
-- --- END op 2095

-- --- BEGIN op 2096 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'all'
  AND score = 3000;
-- --- END op 2096

-- --- BEGIN op 2097 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HMAX', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'radarr'
);
-- --- END op 2097

-- --- BEGIN op 2098 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HMAX', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HMAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2098

-- --- BEGIN op 2099 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'HMAX'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 2099

-- --- BEGIN op 2100 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'iT', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'iT'
    AND arr_type = 'radarr'
);
-- --- END op 2100

-- --- BEGIN op 2101 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'iT', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'iT'
    AND arr_type = 'sonarr'
);
-- --- END op 2101

-- --- BEGIN op 2102 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'iT'
  AND arr_type = 'all'
  AND score = 1000;
-- --- END op 2102

-- --- BEGIN op 2103 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'MAX', 'radarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'MAX'
    AND arr_type = 'radarr'
);
-- --- END op 2103

-- --- BEGIN op 2104 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'MAX', 'sonarr', 2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'MAX'
    AND arr_type = 'sonarr'
);
-- --- END op 2104

-- --- BEGIN op 2105 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'MAX'
  AND arr_type = 'all'
  AND score = 2000;
-- --- END op 2105

-- --- BEGIN op 2106 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 101000;
-- --- END op 2106

-- --- BEGIN op 2107 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '1080p Balanced Tier 2'
  AND arr_type = 'radarr'
  AND score = 100000;
-- --- END op 2107

-- --- BEGIN op 2108 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Balanced Tier 1', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Balanced Tier 1'
    AND arr_type = 'radarr'
);
-- --- END op 2108

-- --- BEGIN op 2109 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Balanced Tier 1', 'sonarr', 444000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Balanced Tier 1'
    AND arr_type = 'sonarr'
);
-- --- END op 2109

-- --- BEGIN op 2110 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Balanced Tier 2', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Balanced Tier 2'
    AND arr_type = 'radarr'
);
-- --- END op 2110

-- --- BEGIN op 2111 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', '2160p Balanced Tier 3', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = '2160p Balanced Tier 3'
    AND arr_type = 'radarr'
);
-- --- END op 2111

-- --- BEGIN op 2112 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = '720p Balanced Tier 1'
  AND arr_type = 'radarr'
  AND score = 60000;
-- --- END op 2112

-- --- BEGIN op 2113 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Amazon Enhancement', 'radarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Amazon Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2113

-- --- BEGIN op 2114 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Amazon Enhancement', 'sonarr', 1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Amazon Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2114

-- --- BEGIN op 2115 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'radarr'
  AND score = 3000;
-- --- END op 2115

-- --- BEGIN op 2116 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 2000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'AMZN'
  AND arr_type = 'sonarr'
  AND score = 3000;
-- --- END op 2116

-- --- BEGIN op 2117 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Atmos', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'radarr'
);
-- --- END op 2117

-- --- BEGIN op 2118 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Atmos', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Atmos'
    AND arr_type = 'sonarr'
);
-- --- END op 2118

-- --- BEGIN op 2119 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Atmos (Missing)', 'radarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Atmos (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 2119

-- --- BEGIN op 2120 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Atmos (Missing)', 'sonarr', 400
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Atmos (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 2120

-- --- BEGIN op 2121 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'radarr'
  AND score = -999999;
-- --- END op 2121

-- --- BEGIN op 2122 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 0
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'BCORE'
  AND arr_type = 'sonarr'
  AND score = -999999;
-- --- END op 2122

-- --- BEGIN op 2123 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Disney+ Enhancement', 'radarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Disney+ Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2123

-- --- BEGIN op 2124 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 4000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'DSNP'
  AND arr_type = 'radarr'
  AND score = 3000;
-- --- END op 2124

-- --- BEGIN op 2125 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DTS-HD MA', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'radarr'
);
-- --- END op 2125

-- --- BEGIN op 2126 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DTS-HD MA', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DTS-HD MA'
    AND arr_type = 'sonarr'
);
-- --- END op 2126

-- --- BEGIN op 2127 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DTS-X', 'radarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'radarr'
);
-- --- END op 2127

-- --- BEGIN op 2128 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'DTS-X', 'sonarr', 1600
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'DTS-X'
    AND arr_type = 'sonarr'
);
-- --- END op 2128

-- --- BEGIN op 2129 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'HBO Max Enhancement', 'sonarr', -1000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'HBO Max Enhancement'
    AND arr_type = 'sonarr'
);
-- --- END op 2129

-- --- BEGIN op 2130 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'HMAX'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 2130

-- --- BEGIN op 2131 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'iT'
  AND arr_type = 'radarr'
  AND score = 1000;
-- --- END op 2131

-- --- BEGIN op 2132 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'iT'
  AND arr_type = 'sonarr'
  AND score = 1000;
-- --- END op 2132

-- --- BEGIN op 2133 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'iTunes Enhancement', 'radarr', -3000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'iTunes Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2133

-- --- BEGIN op 2134 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_custom_formats
SET score = 3000
WHERE quality_profile_name = '2160p Quality'
  AND custom_format_name = 'MAX'
  AND arr_type = 'sonarr'
  AND score = 2000;
-- --- END op 2134

-- --- BEGIN op 2135 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'Movies Anywhere Enhancement', 'radarr', -2000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'Movies Anywhere Enhancement'
    AND arr_type = 'radarr'
);
-- --- END op 2135

-- --- BEGIN op 2136 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'TrueHD', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'radarr'
);
-- --- END op 2136

-- --- BEGIN op 2137 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'TrueHD', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'TrueHD'
    AND arr_type = 'sonarr'
);
-- --- END op 2137

-- --- BEGIN op 2138 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'TrueHD (Missing)', 'radarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'TrueHD (Missing)'
    AND arr_type = 'radarr'
);
-- --- END op 2138

-- --- BEGIN op 2139 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'TrueHD (Missing)', 'sonarr', 1200
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'TrueHD (Missing)'
    AND arr_type = 'sonarr'
);
-- --- END op 2139

-- --- BEGIN op 2140 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'x264 (2160p)', 'radarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'x264 (2160p)'
    AND arr_type = 'radarr'
);
-- --- END op 2140

-- --- BEGIN op 2141 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'x264 (2160p)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'x264 (2160p)'
    AND arr_type = 'sonarr'
);
-- --- END op 2141

-- --- BEGIN op 2142 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'x265 (Bluray)', 'sonarr', -400000
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'x265 (Bluray)'
    AND arr_type = 'sonarr'
);
-- --- END op 2142

-- --- BEGIN op 2143 ( update quality_profile "2160p Quality" )
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Quality', 'x265 (WEB)', 'sonarr', -999999
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_custom_formats
  WHERE quality_profile_name = '2160p Quality'
    AND custom_format_name = 'x265 (WEB)'
    AND arr_type = 'sonarr'
);
-- --- END op 2143

-- --- BEGIN op 2144 ( update quality_profile "2160p Quality" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '720p'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = '2160p Quality'
  AND name = '720p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = 'Ouch'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'Bluray-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'Bluray-576p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'SDTV';

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'WEBDL-480p';

DELETE FROM quality_groups
WHERE quality_profile_name = '2160p Quality'
  AND name = 'Ouch';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '2160p Quality', '2160p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '2160p Quality'
    AND name = '2160p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality', '2160p Quality', 'Bluray-2160p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '2160p Quality'
    AND quality_group_name = '2160p Quality'
    AND quality_name = 'Bluray-2160p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality', '2160p Quality', 'WEBDL-2160p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '2160p Quality'
    AND quality_group_name = '2160p Quality'
    AND quality_name = 'WEBDL-2160p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Quality', NULL, '2160p Quality', 0, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Quality'
    AND quality_name IS NULL
    AND quality_group_name = '2160p Quality'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '2160p Quality', '720p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '2160p Quality'
    AND name = '720p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality', '720p Quality', 'Bluray-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '2160p Quality'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality', '720p Quality', 'WEBDL-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '2160p Quality'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality', '720p Quality', 'WEBRip-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '2160p Quality'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Quality', NULL, '720p Quality', 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Quality'
    AND quality_name IS NULL
    AND quality_group_name = '720p Quality'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '2160p Quality', '480p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '2160p Quality'
    AND name = '480p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality', '480p Quality', 'Bluray-576p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '2160p Quality'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'Bluray-576p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality', '480p Quality', 'Bluray-480p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '2160p Quality'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality', '480p Quality', 'WEBDL-480p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '2160p Quality'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality', '480p Quality', 'DVD', 3
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '2160p Quality'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'DVD'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Quality', NULL, '480p Quality', 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Quality'
    AND quality_name IS NULL
    AND quality_group_name = '480p Quality'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Quality', 'Remux-1080p', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Quality'
    AND quality_name = 'Remux-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Quality', 'HDTV-1080p', NULL, 7, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Quality'
    AND quality_name = 'HDTV-1080p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Quality', 'HDTV-720p', NULL, 8, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Quality'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '2160p Quality', 'SDTV', NULL, 9, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '2160p Quality'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '2160p Quality'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 1
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '1080p Quality HDR'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 1;

DELETE FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '1080p Quality HDR'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '1080p Quality HDR') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '1080p Quality HDR'
      AND quality_name NOT IN ('Remux-1080p', 'Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '1080p Quality HDR'
        AND NOT (
          (quality_name = 'Remux-1080p'
        AND position = 0)
      OR (quality_name = 'Bluray-1080p'
        AND position = 1)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 2)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 3)
      OR (quality_name = 'HDTV-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '1080p Quality HDR'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '2160p Quality'
      AND quality_group_name = '1080p Quality HDR'
  ) = 0 AS ok
),
new_rows AS (
SELECT '2160p Quality' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '2160p Quality' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT '2160p Quality' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 2 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2144

-- --- BEGIN op 2145 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_qualities
SET enabled = 0
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '2160p Quality'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 1
  AND upgrade_until = 0;
-- --- END op 2145

-- --- BEGIN op 2146 ( update quality_profile "2160p Quality" )
UPDATE quality_profile_qualities
SET upgrade_until = 0
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '1080p Quality HDR'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 1;

UPDATE quality_profile_qualities
SET enabled = 1, upgrade_until = 1
WHERE quality_profile_name = '2160p Quality'
  AND quality_group_name = '2160p Quality'
  AND quality_name IS NULL
  AND position = 0
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 2146

-- --- BEGIN op 2147 ( update quality_profile "1080p HDR English" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = '720p'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = '1080p HDR English'
  AND name = '720p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = 'Ouch'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'Bluray-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'Bluray-576p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'SDTV';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'WEBDL-480p';

DELETE FROM quality_groups
WHERE quality_profile_name = '1080p HDR English'
  AND name = 'Ouch';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p HDR English', '1080p Any'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p HDR English'
    AND name = '1080p Any'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR English', '1080p Any', 'HDTV-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_group_name = '1080p Any'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR English', '1080p Any', 'Remux-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_group_name = '1080p Any'
    AND quality_name = 'Remux-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR English', NULL, '1080p Any', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_name IS NULL
    AND quality_group_name = '1080p Any'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p HDR English', '720p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p HDR English'
    AND name = '720p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR English', '720p Quality', 'Bluray-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR English', '720p Quality', 'WEBDL-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR English', '720p Quality', 'WEBRip-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR English', NULL, '720p Quality', 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_name IS NULL
    AND quality_group_name = '720p Quality'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p HDR English', '480p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p HDR English'
    AND name = '480p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR English', '480p Quality', 'Bluray-576p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'Bluray-576p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR English', '480p Quality', 'Bluray-480p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR English', '480p Quality', 'WEBDL-480p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR English', NULL, '480p Quality', 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_name IS NULL
    AND quality_group_name = '480p Quality'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR English', 'HDTV-720p', NULL, 4, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR English', 'DVD', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR English', 'SDTV', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR English'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = '1080p HDR English'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = '1080p Quality HDR'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = '1080p Quality HDR') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = '1080p Quality HDR'
      AND quality_name NOT IN ('Remux-1080p', 'Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = '1080p Quality HDR'
        AND NOT (
          (quality_name = 'Remux-1080p'
        AND position = 0)
      OR (quality_name = 'Bluray-1080p'
        AND position = 1)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 2)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 3)
      OR (quality_name = 'HDTV-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p HDR English'
  AND quality_group_name = '1080p Quality HDR'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p HDR English'
      AND quality_group_name = '1080p Quality HDR'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p HDR English' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p HDR English' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p HDR English' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 2 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2147

-- --- BEGIN op 2148 ( update quality_profile "1080p HDR" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = '720p'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = '1080p HDR'
  AND name = '720p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = 'Ouch'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'Bluray-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'Bluray-576p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'SDTV';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'WEBDL-480p';

DELETE FROM quality_groups
WHERE quality_profile_name = '1080p HDR'
  AND name = 'Ouch';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p HDR', '1080p Any'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p HDR'
    AND name = '1080p Any'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR', '1080p Any', 'HDTV-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR'
    AND quality_group_name = '1080p Any'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR', '1080p Any', 'Remux-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR'
    AND quality_group_name = '1080p Any'
    AND quality_name = 'Remux-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR', NULL, '1080p Any', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR'
    AND quality_name IS NULL
    AND quality_group_name = '1080p Any'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p HDR', '720p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p HDR'
    AND name = '720p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR', '720p Quality', 'Bluray-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR', '720p Quality', 'WEBDL-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR', '720p Quality', 'WEBRip-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR', NULL, '720p Quality', 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR'
    AND quality_name IS NULL
    AND quality_group_name = '720p Quality'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p HDR', '480p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p HDR'
    AND name = '480p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR', '480p Quality', 'Bluray-576p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'Bluray-576p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR', '480p Quality', 'Bluray-480p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p HDR', '480p Quality', 'WEBDL-480p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p HDR'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR', NULL, '480p Quality', 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR'
    AND quality_name IS NULL
    AND quality_group_name = '480p Quality'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR', 'HDTV-720p', NULL, 4, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR', 'DVD', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p HDR', 'SDTV', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p HDR'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = '1080p HDR'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = '1080p Quality HDR'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = '1080p Quality HDR') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = '1080p Quality HDR'
      AND quality_name NOT IN ('Remux-1080p', 'Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = '1080p Quality HDR'
        AND NOT (
          (quality_name = 'Remux-1080p'
        AND position = 0)
      OR (quality_name = 'Bluray-1080p'
        AND position = 1)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 2)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 3)
      OR (quality_name = 'HDTV-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p HDR'
  AND quality_group_name = '1080p Quality HDR'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p HDR'
      AND quality_group_name = '1080p Quality HDR'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p HDR' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p HDR' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p HDR' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 2 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2148

-- --- BEGIN op 2149 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '720p'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = '1080p Cartoon'
  AND name = '720p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = 'Ouch'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'Bluray-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'Bluray-576p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'SDTV';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'WEBDL-480p';

DELETE FROM quality_groups
WHERE quality_profile_name = '1080p Cartoon'
  AND name = 'Ouch';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p Cartoon', '1080p Any'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p Cartoon'
    AND name = '1080p Any'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Cartoon', '1080p Any', 'HDTV-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_group_name = '1080p Any'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Cartoon', '1080p Any', 'Remux-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_group_name = '1080p Any'
    AND quality_name = 'Remux-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Cartoon', NULL, '1080p Any', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_name IS NULL
    AND quality_group_name = '1080p Any'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p Cartoon', '720p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p Cartoon'
    AND name = '720p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Cartoon', '720p Quality', 'Bluray-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Cartoon', '720p Quality', 'WEBDL-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Cartoon', '720p Quality', 'WEBRip-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Cartoon', NULL, '720p Quality', 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_name IS NULL
    AND quality_group_name = '720p Quality'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p Cartoon', '480p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p Cartoon'
    AND name = '480p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Cartoon', '480p Quality', 'Bluray-576p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'Bluray-576p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Cartoon', '480p Quality', 'Bluray-480p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Cartoon', '480p Quality', 'WEBDL-480p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Cartoon', NULL, '480p Quality', 3, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_name IS NULL
    AND quality_group_name = '480p Quality'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Cartoon', 'HDTV-720p', NULL, 4, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Cartoon', 'DVD', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Cartoon', 'SDTV', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Cartoon'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '1080p Quality HDR'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '1080p Quality HDR') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '1080p Quality HDR'
      AND quality_name NOT IN ('Remux-1080p', 'Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '1080p Quality HDR'
        AND NOT (
          (quality_name = 'Remux-1080p'
        AND position = 0)
      OR (quality_name = 'Bluray-1080p'
        AND position = 1)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 2)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 3)
      OR (quality_name = 'HDTV-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '1080p Quality HDR'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Cartoon'
      AND quality_group_name = '1080p Quality HDR'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Cartoon' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Cartoon' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Cartoon' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 2 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2149

-- --- BEGIN op 2150 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '720p'
  AND quality_name IS NULL
  AND position = 1
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '720p'
  AND quality_name = 'Bluray-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '720p'
  AND quality_name = 'HDTV-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBDL-720p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '720p'
  AND quality_name = 'WEBRip-720p';

DELETE FROM quality_groups
WHERE quality_profile_name = '1080p Anime'
  AND name = '720p';

DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = 'Ouch'
  AND quality_name IS NULL
  AND position = 2
  AND enabled = 1
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'Bluray-480p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'Bluray-576p';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'DVD';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'SDTV';

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = 'Ouch'
  AND quality_name = 'WEBDL-480p';

DELETE FROM quality_groups
WHERE quality_profile_name = '1080p Anime'
  AND name = 'Ouch';

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p Anime', '1080p Any'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p Anime'
    AND name = '1080p Any'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '1080p Any', 'HDTV-1080p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '1080p Any'
    AND quality_name = 'HDTV-1080p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '1080p Any', 'Remux-1080p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '1080p Any'
    AND quality_name = 'Remux-1080p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', NULL, '1080p Any', 1, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name IS NULL
    AND quality_group_name = '1080p Any'
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p Anime', '720p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p Anime'
    AND name = '720p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '720p Quality', 'Bluray-720p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'Bluray-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '720p Quality', 'WEBDL-720p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'WEBDL-720p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '720p Quality', 'WEBRip-720p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '720p Quality'
    AND quality_name = 'WEBRip-720p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', NULL, '720p Quality', 2, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name IS NULL
    AND quality_group_name = '720p Quality'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'HDTV-720p', NULL, 3, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'HDTV-720p'
    AND quality_group_name IS NULL
);

INSERT INTO quality_groups (quality_profile_name, name)
SELECT '1080p Anime', '480p Quality'
WHERE NOT EXISTS (
  SELECT 1 FROM quality_groups
  WHERE quality_profile_name = '1080p Anime'
    AND name = '480p Quality'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '480p Quality', 'Bluray-576p', 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'Bluray-576p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '480p Quality', 'Bluray-480p', 1
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'Bluray-480p'
);

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Anime', '480p Quality', 'WEBDL-480p', 2
WHERE NOT EXISTS (
  SELECT 1 FROM quality_group_members
  WHERE quality_profile_name = '1080p Anime'
    AND quality_group_name = '480p Quality'
    AND quality_name = 'WEBDL-480p'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', NULL, '480p Quality', 4, 1, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name IS NULL
    AND quality_group_name = '480p Quality'
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'DVD', NULL, 5, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'DVD'
    AND quality_group_name IS NULL
);

INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, quality_group_name, position, enabled, upgrade_until)
SELECT '1080p Anime', 'SDTV', NULL, 6, 0, 0
WHERE NOT EXISTS (
  SELECT 1 FROM quality_profile_qualities
  WHERE quality_profile_name = '1080p Anime'
    AND quality_name = 'SDTV'
    AND quality_group_name IS NULL
);

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 23
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Quality HDR'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Quality HDR') = 5
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Quality HDR'
      AND quality_name NOT IN ('Remux-1080p', 'Bluray-1080p', 'WEBDL-1080p', 'WEBRip-1080p', 'HDTV-1080p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Quality HDR'
        AND NOT (
          (quality_name = 'Remux-1080p'
        AND position = 0)
      OR (quality_name = 'Bluray-1080p'
        AND position = 1)
      OR (quality_name = 'WEBDL-1080p'
        AND position = 2)
      OR (quality_name = 'WEBRip-1080p'
        AND position = 3)
      OR (quality_name = 'HDTV-1080p'
        AND position = 4)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '1080p Quality HDR'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Anime'
      AND quality_group_name = '1080p Quality HDR'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Anime' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'Bluray-1080p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBDL-1080p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '1080p Quality HDR' AS quality_group_name, 'WEBRip-1080p' AS quality_name, 2 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;
-- --- END op 2150

-- --- BEGIN op 2151 ( update quality_profile "1080p Anime" )
UPDATE quality_profile_qualities
SET position = 3
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '480p Quality'
  AND quality_name IS NULL
  AND position = 4
  AND enabled = 1
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 3
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 2151

-- --- BEGIN op 2152 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '720p Quality'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '720p Quality') = 3
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '720p Quality'
      AND quality_name NOT IN ('Bluray-720p', 'WEBDL-720p', 'WEBRip-720p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '720p Quality'
        AND NOT (
          (quality_name = 'Bluray-720p'
        AND position = 0)
      OR (quality_name = 'WEBDL-720p'
        AND position = 1)
      OR (quality_name = 'WEBRip-720p'
        AND position = 2)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '720p Quality'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Cartoon'
      AND quality_group_name = '720p Quality'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Cartoon' AS quality_profile_name, '720p Quality' AS quality_group_name, 'Bluray-720p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Cartoon' AS quality_profile_name, '720p Quality' AS quality_group_name, 'WEBDL-720p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Cartoon' AS quality_profile_name, '720p Quality' AS quality_group_name, 'WEBRip-720p' AS quality_name, 2 AS position
UNION ALL
SELECT '1080p Cartoon' AS quality_profile_name, '720p Quality' AS quality_group_name, 'HDTV-720p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 2152

-- --- BEGIN op 2153 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'HDTV-720p'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '720p Quality'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '720p Quality') = 3
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '720p Quality'
      AND quality_name NOT IN ('Bluray-720p', 'WEBDL-720p', 'WEBRip-720p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '720p Quality'
        AND NOT (
          (quality_name = 'Bluray-720p'
        AND position = 0)
      OR (quality_name = 'WEBDL-720p'
        AND position = 1)
      OR (quality_name = 'WEBRip-720p'
        AND position = 2)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '720p Quality'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Anime'
      AND quality_group_name = '720p Quality'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Anime' AS quality_profile_name, '720p Quality' AS quality_group_name, 'Bluray-720p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '720p Quality' AS quality_group_name, 'WEBDL-720p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '720p Quality' AS quality_group_name, 'WEBRip-720p' AS quality_name, 2 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '720p Quality' AS quality_group_name, 'HDTV-720p' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 22
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 23
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 2153

-- --- BEGIN op 2154 ( update quality_profile "1080p Anime" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '480p Quality'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '480p Quality') = 3
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '480p Quality'
      AND quality_name NOT IN ('Bluray-576p', 'Bluray-480p', 'WEBDL-480p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '480p Quality'
        AND NOT (
          (quality_name = 'Bluray-576p'
        AND position = 0)
      OR (quality_name = 'Bluray-480p'
        AND position = 1)
      OR (quality_name = 'WEBDL-480p'
        AND position = 2)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Anime'
  AND quality_group_name = '480p Quality'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Anime'
      AND quality_group_name = '480p Quality'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Anime' AS quality_profile_name, '480p Quality' AS quality_group_name, 'Bluray-576p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '480p Quality' AS quality_group_name, 'Bluray-480p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '480p Quality' AS quality_group_name, 'WEBDL-480p' AS quality_name, 2 AS position
UNION ALL
SELECT '1080p Anime' AS quality_profile_name, '480p Quality' AS quality_group_name, 'DVD' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '1080p Anime'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 2154

-- --- BEGIN op 2155 ( update quality_profile "1080p Cartoon" )
DELETE FROM quality_profile_qualities
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'DVD'
  AND quality_group_name IS NULL
  AND position = 4
  AND enabled = 0
  AND upgrade_until = 0;

DELETE FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '480p Quality'
  AND (SELECT COUNT(*)
FROM quality_group_members
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '480p Quality') = 3
  AND NOT EXISTS (
    SELECT 1
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '480p Quality'
      AND quality_name NOT IN ('Bluray-576p', 'Bluray-480p', 'WEBDL-480p')
  )
  AND (
    NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '480p Quality'
        AND NOT (
          (quality_name = 'Bluray-576p'
        AND position = 0)
      OR (quality_name = 'Bluray-480p'
        AND position = 1)
      OR (quality_name = 'WEBDL-480p'
        AND position = 2)
        )
    )
    OR NOT EXISTS (
      SELECT 1
      FROM quality_group_members
      WHERE quality_profile_name = '1080p Cartoon'
  AND quality_group_name = '480p Quality'
        AND position != 0
    )
  );

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
WITH can_insert AS (
  SELECT (
    SELECT COUNT(*)
    FROM quality_group_members
    WHERE quality_profile_name = '1080p Cartoon'
      AND quality_group_name = '480p Quality'
  ) = 0 AS ok
),
new_rows AS (
SELECT '1080p Cartoon' AS quality_profile_name, '480p Quality' AS quality_group_name, 'Bluray-576p' AS quality_name, 0 AS position
UNION ALL
SELECT '1080p Cartoon' AS quality_profile_name, '480p Quality' AS quality_group_name, 'Bluray-480p' AS quality_name, 1 AS position
UNION ALL
SELECT '1080p Cartoon' AS quality_profile_name, '480p Quality' AS quality_group_name, 'WEBDL-480p' AS quality_name, 2 AS position
UNION ALL
SELECT '1080p Cartoon' AS quality_profile_name, '480p Quality' AS quality_group_name, 'DVD' AS quality_name, 3 AS position
)
SELECT
  new_rows.quality_profile_name,
  new_rows.quality_group_name,
  new_rows.quality_name,
  new_rows.position
FROM new_rows
CROSS JOIN can_insert
WHERE ok;

UPDATE quality_profile_qualities
SET position = 4
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'SDTV'
  AND quality_group_name IS NULL
  AND position = 5
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 5
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Remux-2160p'
  AND quality_group_name IS NULL
  AND position = 6
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 6
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Bluray-2160p'
  AND quality_group_name IS NULL
  AND position = 7
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 7
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WEBDL-2160p'
  AND quality_group_name IS NULL
  AND position = 8
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 8
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WEBRip-2160p'
  AND quality_group_name IS NULL
  AND position = 9
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 9
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'HDTV-2160p'
  AND quality_group_name IS NULL
  AND position = 10
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 10
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WEBRip-480p'
  AND quality_group_name IS NULL
  AND position = 11
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 11
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'HDTV-480p'
  AND quality_group_name IS NULL
  AND position = 12
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 12
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'BR-DISK'
  AND quality_group_name IS NULL
  AND position = 13
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 13
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'CAM'
  AND quality_group_name IS NULL
  AND position = 14
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 14
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'DVD-R'
  AND quality_group_name IS NULL
  AND position = 15
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 15
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'DVDSCR'
  AND quality_group_name IS NULL
  AND position = 16
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 16
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Raw-HD'
  AND quality_group_name IS NULL
  AND position = 17
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 17
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'REGIONAL'
  AND quality_group_name IS NULL
  AND position = 18
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 18
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'TELECINE'
  AND quality_group_name IS NULL
  AND position = 19
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 19
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'TELESYNC'
  AND quality_group_name IS NULL
  AND position = 20
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 20
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'WORKPRINT'
  AND quality_group_name IS NULL
  AND position = 21
  AND enabled = 0
  AND upgrade_until = 0;

UPDATE quality_profile_qualities
SET position = 21
WHERE quality_profile_name = '1080p Cartoon'
  AND quality_name = 'Unknown'
  AND quality_group_name IS NULL
  AND position = 22
  AND enabled = 0
  AND upgrade_until = 0;
-- --- END op 2155
