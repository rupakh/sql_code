-- Query to find the total number of immigrants to Canada, country-wise in descending order

select country, total from can_imm.canada_data
order by total desc


-- This query shows that Indian immigrants rank first, China second, and the UK third in total number of immigrants entering Canada over all years

/*
India	691904
China	659962
United Kingdom of Great Britain and Northern Ireland	551500
Philippines	511391
Pakistan	241600
United States of America	241122
Iran (Islamic Republic of)	175923
Sri Lanka	148358
Republic of Korea	142581
Poland	139241
Lebanon	115359
France	109091
Jamaica	106431
Viet Nam	97146
Romania	93585
Haiti	84813
Guyana	75785
Portugal	74167
Egypt	72745
Morocco	72267
Colombia	72088
Iraq	69789
Algeria	69439
Israel	66508
Bangladesh	65568
Germany	63912
Russian Federation	63344
Mexico	58712
Afghanistan	58639
El Salvador	54878
Ukraine	51410
Trinidad and Tobago	50016
Somalia	42109
South Africa	40568
Nigeria	39732
Jordan	35406
Ethiopia	35136
Peru	32652
Turkey	31781
Syrian Arab Republic	31485
Brazil	29659
Japan	27707
Netherlands	26884
Ghana	26032
Democratic Republic of the Congo	25582
Malaysia	24417
Australia	23829
Bulgaria	23310
Italy	22624
Bosnia and Herzegovina	21855
Chile	21359
Venezuela (Bolivarian Republic of)	21267
Fiji	20609
Cuba	20365
Argentina	19596
Guatemala	19465
Sudan	18506
Tunisia	17583
Kenya	17228
Ireland	16964
Hungary	16822
Cameroon	16021
Albania	15699
Mauritius	15690
Switzerland	15678
Republic of Moldova	15381
Singapore	14579
Indonesia	13150
United Republic of Tanzania	12496
Greece	12410
Ecuador	12233
Nicaragua	12095
Dominican Republic	11193
Belgium	10762
Eritrea	10450
New Zealand	10386
Nepal	10222
Saint Vincent and the Grenadines	9707
China, Hong Kong Special Administrative Region	9327
Myanmar	9245
Thailand	9174
Grenada	9091
Zimbabwe	8598
Kazakhstan	8490
CÃ´te d'Ivoire	8291
Burundi	8110
Croatia	8001
Belarus	7975
Honduras	7770
Senegal	7362
Barbados	6923
Rwanda	6691
Cambodia	6538
State of Palestine	6512
Slovakia	5963
Bhutan	5876
Sweden	5866
Spain	5018
Austria	4985
Libya	4909
Guinea	4891
Saint Lucia	4802
Uruguay	4715
The former Yugoslav Republic of Macedonia	4637
Costa Rica	4489
Czech Republic	4192
Denmark	3901
Togo	3545
Uganda	3450
Saudi Arabia	3425
Uzbekistan	3368
Sierra Leone	3351
Armenia	3310
Bolivia (Plurinational State of)	3205
Panama	3161
Yemen	2985
Benin	2852
Finland	2781
Liberia	2759
Azerbaijan	2649
Dominica	2470
Lithuania	2414
Kyrgyzstan	2353
Norway	2327
Latvia	2326
Madagascar	2194
Mali	2188
Angola	2113
Georgia	2068
Burkina Faso	2043
Kuwait	2025
Paraguay	1944
Serbia	1939
Congo	1686
Zambia	1677
Chad	1653
Djibouti	1646
Malta	1546
Seychelles	1266
Cyprus	1126
Lao People's Democratic Republic	1089
Belize	1083
Mauritania	1016
Antigua and Barbuda	981
Gabon	952
Mongolia	952
Niger	952
Estonia	935
United Arab Emirates	836
Bahamas	808
Suriname	739
Saint Kitts and Nevis	653
Gambia	603
Brunei Darussalam	600
Iceland	570
Central African Republic	550
Slovenia	523
Tajikistan	503
Bahrain	475
Botswana	396
Democratic People's Republic of Korea	388
Namibia	320
Turkmenistan	310
Malawi	294
China, Macao Special Administrative Region	284
Oman	224
Luxembourg	215
Cabo Verde	201
Comoros	194
Swaziland	188
Mozambique	160
Qatar	157
Tonga	142
Lesotho	107
Montenegro	105
Guinea-Bissau	83
Samoa	78
Papua New Guinea	64
Equatorial Guinea	61
Liechtenstein	40
Maldives	30
Monaco	29
Canada	20
Nauru	18
Andorra	15
Kiribati	15
Vanuatu	11
Sao Tome and Principe	10
Tuvalu	8
American Samoa	6
New Caledonia	5
San Marino	5
Marshall Islands	2
Western Sahara	2
Palau	1

*/