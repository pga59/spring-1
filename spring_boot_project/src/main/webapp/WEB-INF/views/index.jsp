<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>트래블러</title> 
		<c:import url="/WEB-INF/views/layout/head.jsp" />
	</head>
	<body>
    	<div id="wrap">
    	
    	<c:import url="/WEB-INF/views/layout/top.jsp" />    
            <section>
          <div class="intro_bg">
         <h2>Introducing the festival for you</h2>
         </div>
         <div id="fireWorks">
         	  <img src="<c:url value='/image/fireWorks.jpg' />">
         </div>
          	<article  id="slideShow"> <!-- 슬라이드 쇼 -->  
            	<!-- 1.prevNext 버튼 박스 -->
            	<div id="prevNextButtonBox">
            		<img id='prevButton' src="<c:url value='/image/prevButton.png' />">
            		<img id='nextButton' src="<c:url value='/image/nextButton.png' />">
            	</div>
            		<!-- 2.슬라이드 쇼 박스 -->
            		<div id="slideShowBox">
						<div id="slidePanel">
						<img src="image/incheon.jpg" class="slideImage">
							<img src="<c:url value='/image/라면축제.jpg' />" class="slideImage">
							<img src="<c:url value='/image/꽃jpg.jpg' />" class="slideImage">
							<img src="<c:url value='/image/사계.png' />" class="slideImage">
							
						</div> <!-- slidePanel 끝 -->
					</div><!-- slideShowBox 끝 -->
					<!-- 3.컨트롤 박스 -->
					<div id="controlButtonBox">
						<img src="<c:url value='/image/controlButton1.png' />" class="controlButton">
						<img src="<c:url value='/image/controlButton1.png' />" class="controlButton">
						<img src="<c:url value='/image/controlButton1.png' />" class="controlButton">
						<img src="<c:url value='/image/controlButton1.png' />" class="controlButton">
					</div>
					
                </article> 
                <article id="content1"> <!-- 탭메뉴 -->    
               
                	<div id="MapBox">
                	<div>지역 이미지를 클릭시 지역축제 정보, 지역특산품 정보사이트로 이동합니다</div><br>
                		<div><button id="festival">지역 축제</button>&nbsp;&nbsp;&nbsp;<button id="specialties">특산품</button></div>
                	
                		<img src="<c:url value='/image/전국지도1.png' />" usemap="#image-map" id= "KoreaMap">
							
							<map name="image-map"><c:url value='/' />
								    <area target="_self" alt="인천" title="인천" href="#" coords="781,779,808,766,837,768,861,800,882,821,869,850,861,869,874,885,877,906,858,930,842,943,810,917,800,885,800,866,781,842,784,819" shape="poly">
								    <area target="_self" alt="서울" title="서울" href="<c:url value='/specialties_서울' />" coords="906,803,895,834,914,848,911,872,940,887,954,909,961,922,1004,922,1022,917,1046,925,1086,911,1102,898,1107,866,1131,829,1097,834,1086,821,1086,747,1049,734,1022,768,985,766,951,811" shape="poly">
								    <area target="_self" alt="경기도" title="경기도" href="<c:url value='/specialties_경기도' />" coords="773,783,731,785,678,761,688,722,686,671,704,645,762,655,805,663,876,708,882,661,868,613,892,584,935,565,948,547,953,504,980,465,972,412,982,374,1030,364,1067,348,1123,303,1125,335,1163,345,1165,396,1186,412,1202,412,1216,396,1231,406,1231,438,1255,465,1274,470,1284,451,1306,457,1311,475,1316,502,1322,518,1337,528,1356,539,1372,547,1390,571,1406,594,1409,626,1377,642,1353,666,1353,682,1361,711,1343,735,1356,775,1348,796,1364,807,1401,815,1430,836,1470,854,1515,875,1536,889,1489,921,1486,939,1496,955,1496,968,1481,989,1462,1043,1457,1082,1449,1156,1417,1181,1385,1181,1380,1218,1340,1237,1279,1242,1255,1266,1231,1269,1223,1295,1147,1343,1099,1298,1062,1285,1035,1311,1006,1316,937,1322,850,1194,892,1155,887,1131,813,1144,792,1094,746,1088,754,1059,786,1027,845,1035,868,1035,876,1017,845,990,847,956,898,916,882,884,874,863,879,847,901,852,906,873,922,892,938,903,951,929,988,934,1017,929,1049,932,1086,929,1107,910,1113,889,1123,865,1136,852,1142,831,1128,818,1113,823,1097,823,1096,794,1096,762,1083,736,1043,736,1011,765,979,762,948,799,908,794,889,810,873,804,852,778,839,757,815,748,786,756" shape="poly">
								    <area target="_self" alt="강원도" title="강원도" href="<c:url value='/specialties_강원도' />" coords="1129,306,1174,274,1201,280,1225,269,1265,277,1310,277,1376,298,1413,301,1455,288,1522,288,1556,301,1591,303,1622,303,1691,317,1744,314,1781,290,1813,272,1840,250,1856,219,1866,184,1879,147,1903,129,1924,118,1959,192,2020,380,2094,563,2290,855,2327,1014,2409,1138,2446,1195,2438,1245,2345,1328,2282,1280,2250,1285,2226,1285,2202,1277,2160,1290,2133,1290,2112,1282,2075,1275,2043,1296,2001,1275,1932,1248,1868,1227,1789,1206,1831,1168,1778,1139,1749,1126,1714,1147,1683,1142,1661,1158,1640,1158,1643,1129,1622,1118,1593,1118,1566,1134,1561,1161,1555,1179,1471,1174,1471,1137,1479,1065,1487,1006,1508,977,1516,964,1502,924,1545,900,1550,879,1521,869,1492,855,1433,826,1393,802,1359,794,1364,763,1353,739,1367,715,1369,659,1417,625,1420,598,1393,558,1348,516,1324,505,1327,460,1300,439,1277,439,1269,458,1237,431,1242,407,1221,386,1200,397,1170,389,1173,352,1157,341,1136,323" shape="poly">
								    <area target="_self" alt="충청남도" title="충청남도" href="<c:url value='/specialties_충청도' />" coords="938,1328,1033,1320,1065,1294,1097,1305,1144,1347,1179,1395,1216,1426,1216,1464,1187,1456,1150,1501,1102,1490,1054,1474,1044,1490,1060,1519,1054,1551,1075,1593,1086,1633,1102,1676,1113,1700,1118,1755,1091,1784,1091,1803,1107,1824,1118,1856,1150,1877,1166,1861,1166,1837,1189,1888,1219,1888,1250,1864,1272,1869,1290,1877,1293,1930,1322,1991,1306,1996,1309,2035,1266,2006,1245,2041,1211,2041,1211,2017,1168,2017,1150,1956,1134,1937,999,1950,969,1919,869,1892,832,1948,787,1990,747,1985,715,1961,702,1927,670,1895,641,1887,670,1818,664,1775,654,1749,675,1717,648,1664,654,1578,643,1546,646,1485,633,1477,611,1507,585,1480,548,1517,532,1448,479,1443,492,1411,447,1398,500,1310,558,1273,564,1342,627,1287,601,1244,622,1223,654,1223,672,1255,691,1234,686,1204,704,1194,858,1284,882,1350" shape="poly">
								    <area target="_self" alt="대전" title="대전" href="<c:url value='/specialties_충청도' />" coords="1117,1696,1157,1690,1178,1653,1197,1664,1210,1693,1239,1690,1253,1712,1274,1735,1245,1780,1239,1860,1194,1881,1157,1828,1147,1860,1123,1847,1102,1799,1125,1749" shape="poly">
								    <area target="_self" alt="세종" title="세종" href="<c:url value='/specialties_충청도' />" coords="1059,1492,1065,1479,1096,1492,1115,1503,1155,1506,1149,1530,1160,1572,1176,1572,1205,1577,1202,1598,1186,1636,1176,1657,1165,1681,1120,1694,1094,1625,1087,1585,1061,1548" shape="poly">
								    <area target="_self" alt="충청북도" title="충청북도" href="<c:url value='/specialties_충청도' />" coords="1152,1344,1226,1296,1237,1270,1271,1270,1282,1243,1322,1249,1375,1227,1385,1201,1390,1182,1422,1185,1449,1161,1462,1182,1552,1182,1565,1166,1571,1140,1589,1124,1632,1127,1629,1158,1650,1169,1674,1153,1714,1153,1748,1132,1814,1164,1785,1206,1852,1227,1926,1254,1968,1264,1992,1278,1984,1296,1960,1291,1942,1312,1907,1333,1886,1349,1854,1392,1849,1408,1854,1447,1804,1463,1746,1408,1716,1413,1706,1445,1679,1434,1658,1442,1645,1450,1624,1447,1605,1471,1618,1522,1584,1514,1568,1500,1510,1530,1526,1556,1526,1588,1496,1567,1451,1588,1454,1609,1502,1649,1486,1675,1486,1707,1481,1731,1486,1757,1451,1826,1454,1842,1504,1858,1526,1869,1573,1869,1576,1911,1528,1906,1528,1938,1518,1970,1512,2007,1459,2028,1401,2023,1364,2007,1337,2001,1300,1943,1300,1877,1255,1853,1258,1784,1290,1736,1263,1712,1245,1681,1218,1686,1189,1649,1208,1583,1189,1567,1163,1561,1155,1519,1163,1498,1189,1463,1210,1471,1221,1442,1223,1423,1184,1397" shape="poly">
								    <area target="_self" alt="경상북도" title="경상북도" href="<c:url value='/specialties_경상도' />" coords="1462,2038,1521,2009,1523,1980,1542,1927,1552,1911,1579,1922,1584,1869,1531,1858,1468,1833,1489,1761,1494,1727,1494,1681,1515,1655,1473,1599,1494,1575,1526,1591,1542,1581,1531,1552,1523,1528,1560,1517,1595,1520,1616,1533,1632,1522,1619,1480,1637,1461,1653,1461,1677,1446,1706,1456,1727,1443,1743,1419,1796,1467,1863,1456,1868,1438,1863,1403,1884,1377,1902,1355,1929,1326,1953,1324,1963,1302,1984,1310,2011,1289,2043,1302,2072,1294,2093,1284,2109,1289,2136,1300,2165,1302,2199,1287,2226,1297,2252,1297,2273,1292,2300,1310,2321,1318,2355,1337,2371,1318,2393,1294,2406,1279,2424,1265,2448,1263,2456,1294,2483,1334,2483,1374,2483,1406,2480,1459,2485,1491,2496,1528,2496,1570,2499,1607,2461,1666,2469,1737,2469,1777,2416,1888,2406,1960,2424,2031,2430,2058,2416,2103,2416,2119,2430,2137,2456,2148,2475,2132,2496,2111,2512,2103,2517,2132,2491,2201,2483,2262,2454,2339,2432,2381,2361,2360,2332,2376,2310,2342,2273,2323,2234,2318,2204,2339,2191,2352,2173,2373,2146,2387,2083,2368,2053,2392,2000,2408,1961,2403,1923,2384,1886,2395,1865,2365,1857,2339,1868,2312,1892,2291,1910,2310,1945,2307,1963,2291,1969,2257,1982,2233,1987,2206,2008,2193,2008,2148,2008,2127,2003,2100,1971,2082,1923,2087,1884,2098,1860,2145,1841,2140,1825,2122,1799,2137,1775,2172,1786,2190,1802,2190,1823,2214,1780,2228,1775,2246,1786,2275,1780,2291,1754,2302,1743,2318,1764,2349,1749,2355,1717,2339,1643,2328,1655,2296,1645,2254,1576,2190,1534,2180,1467,2116,1489,2087" shape="poly">
								    <area target="_self" alt="전라북도" title="전라북도" href="<c:url value='/specialties_전라도' />" coords="553,2398,611,2350,659,2337,693,2327,691,2305,617,2300,590,2300,582,2273,595,2252,712,2173,746,2170,762,2173,776,2157,739,2120,799,2104,799,2077,693,2093,680,2053,640,2024,646,2011,723,2022,776,2011,786,1995,821,1974,868,1902,958,1918,977,1950,998,1963,1038,1958,1102,1945,1131,1945,1139,1977,1160,2030,1189,2032,1210,2046,1250,2046,1269,2019,1298,2038,1316,2040,1319,2011,1324,1998,1351,2019,1369,2019,1393,2035,1449,2030,1475,2080,1451,2125,1443,2141,1409,2157,1372,2160,1343,2199,1295,2279,1255,2358,1269,2387,1282,2411,1279,2435,1290,2454,1287,2483,1245,2549,1194,2517,1147,2509,1131,2544,1064,2541,1027,2523,998,2525,982,2504,951,2528,924,2523,929,2496,919,2480,924,2464,905,2403,860,2435,845,2459,823,2454,773,2382,715,2403,701,2459,598,2499,561,2454" shape="poly">
								    <area target="_self" alt="광주" title="광주" href="#" coords="823,2570,860,2615,874,2626,860,2682,823,2708,810,2687,776,2698,752,2706,725,2698,712,2684,699,2668,680,2661,654,2655,654,2623,675,2607,678,2586,696,2592,707,2568,733,2589,749,2594,778,2581,799,2565" shape="poly">
								    <area target="_self" alt="전라남도" title="전라남도" href="<c:url value='/specialties_전라도' />" coords="521,2664,493,2615,458,2570,495,2514,533,2459,548,2411,564,2419,588,2488,609,2509,647,2501,681,2483,718,2469,731,2438,739,2408,777,2388,835,2475,874,2469,890,2435,912,2422,922,2477,922,2506,946,2538,983,2528,1018,2538,1039,2537,1124,2562,1166,2528,1208,2530,1240,2557,1256,2591,1272,2628,1269,2655,1277,2681,1298,2705,1322,2745,1351,2777,1349,2817,1309,2846,1309,2872,1264,2880,1237,2888,1251,2917,1267,2933,1325,2936,1351,2952,1322,2992,1359,3045,1283,3013,1256,3029,1256,3092,1200,3085,1200,3021,1214,2982,1186,2941,1150,2918,1121,2939,1092,2987,1105,3024,1134,3067,1141,3122,1100,3117,1092,3144,1019,3215,1007,3159,954,3133,920,3127,920,3103,949,3082,965,3056,981,3077,997,3032,1018,3026,1044,3050,1046,2995,1027,2984,1006,2984,928,3010,859,3047,816,3163,769,3185,725,3191,707,3169,716,3108,689,3076,681,3137,657,3174,625,3183,594,3204,573,3247,530,3262,504,3217,512,3188,493,3156,482,3077,427,3061,432,3080,451,3127,414,3178,353,3194,300,3192,281,3165,366,3088,398,3072,374,3054,387,2956,406,2937,421,2998,437,3028,469,3035,461,2980,482,2985,517,3006,541,2998,517,2959,474,2932,464,2890,479,2804,468,2764,426,2756,463,2730,479,2698,500,2703,746,2717,776,2709,805,2699,829,2720,852,2699,876,2669,887,2616,855,2600,818,2553,754,2590,715,2558,696,2577,670,2579,670,2598,654,2616,643,2651,662,2664,680,2667,707,2677,741,2725,505,2717,521,2685" shape="poly">
								    <area target="_self" alt="경상남도" title="경상남도" href="<c:url value='/specialties_경상도' />" coords="1247,2565,1274,2517,1303,2475,1290,2430,1300,2411,1269,2364,1332,2218,1375,2170,1412,2170,1438,2157,1465,2125,1520,2183,1565,2199,1624,2244,1645,2284,1624,2311,1626,2337,1655,2340,1698,2342,1730,2358,1767,2372,1791,2366,1814,2358,1844,2348,1860,2385,1889,2417,1915,2403,1936,2403,1973,2422,2032,2411,2064,2401,2090,2380,2133,2387,2151,2401,2130,2427,2127,2456,2151,2470,2180,2478,2196,2509,2217,2536,2239,2544,2265,2557,2246,2586,2223,2592,2164,2639,2127,2645,2111,2666,2053,2674,2027,2708,1987,2724,1992,2756,1984,2793,1934,2785,1870,2729,1873,2804,1852,2814,1807,2774,1788,2790,1791,2846,1754,2875,1751,2904,1735,2936,1666,2931,1687,2894,1655,2899,1616,2883,1579,2915,1518,2878,1510,2793,1496,2804,1481,2835,1443,2835,1414,2849,1353,2862,1343,2891,1306,2878,1306,2846,1351,2814,1348,2777,1322,2740,1295,2706,1292,2682,1258,2658,1263,2602" shape="poly">
								    <area target="_self" alt="대구" title="대구" href="#" coords="1775,2357,1751,2318,1788,2296,1801,2281,1777,2249,1791,2233,1814,2225,1828,2204,1809,2182,1783,2175,1817,2135,1833,2156,1860,2153,1889,2106,1918,2103,1936,2087,1976,2092,1997,2122,1989,2143,2000,2180,1976,2212,1958,2243,1952,2289,1923,2302,1894,2278,1873,2289,1849,2318,1825,2344" shape="poly">
								    <area target="_self" alt="울산" title="울산" href="#" coords="2273,2556,2225,2530,2191,2477,2138,2456,2140,2424,2162,2403,2164,2384,2186,2376,2199,2355,2231,2328,2265,2328,2292,2342,2313,2371,2329,2384,2363,2371,2387,2373,2416,2384,2429,2397,2429,2450,2424,2479,2408,2516,2387,2498,2376,2509,2371,2527,2360,2556,2358,2604,2339,2623,2318,2636,2313,2593,2286,2567" shape="poly">
								    <area target="_self" alt="부산" title="부산" href="#" coords="1995,2802,2008,2754,2000,2730,2032,2722,2058,2680,2111,2680,2138,2651,2172,2651,2201,2622,2223,2595,2246,2595,2276,2571,2302,2595,2313,2632,2286,2659,2284,2693,2281,2722,2233,2759,2212,2767,2191,2794,2164,2786,2154,2823,2133,2823,2109,2828,2090,2789,2053,2802,2019,2810" shape="poly">
								    <area target="_self" alt="제주도" title="제주도" href="#" coords="259,3751,360,3663,444,3640,561,3624,643,3610,686,3629,731,3650,744,3708,725,3772,680,3809,542,3841,381,3836,320,3862,264,3799" shape="poly">
								</map>
                	</div>         
                </article>
               
            </section>
            <c:import url="/WEB-INF/views/layout/bottom.jsp" />
      </div>
    </body>
</html>