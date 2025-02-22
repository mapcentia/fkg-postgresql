/* 
    This file is part of the The OpenFKG PostgreSQL implementation of the FKG datamodel
    Copyright (C) 2013 Septima P/S 

    The OpenFKG PostgreSQL implementation of the FKG datamodel is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    The OpenFKG PostgreSQL implementation of the FKG datamodel is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with The OpenFKG PostgreSQL implementation of the FKG datamodel.  If not, see <http://www.gnu.org/licenses/>.

    See more about the OpenFKG project at http://github.com/OpenFKG
*/

-- Core data
-- Script to insert core data (lookup, tables etc.) in FKG Postgres DB

DELETE FROM fkg.d_tabel;
DELETE FROM fkg.d_temagruppe;

-- Basis lookup-tables
DELETE FROM fkg.d_basis_oprindelse;
DELETE FROM fkg.d_basis_status;
DELETE FROM fkg.d_basis_ansvarlig_myndighed;
DELETE FROM fkg.d_basis_ja_nej;
DELETE FROM fkg.d_basis_ejerstatus;
DELETE FROM fkg.d_basis_tilstand;
DELETE FROM fkg.d_basis_sag_status;
DELETE FROM fkg.d_basis_dvfi_bedoemmelse;
DELETE FROM fkg.d_basis_trussel_vand;
DELETE FROM fkg.d_basis_planstatus;
DELETE FROM fkg.d_basis_hastighed;
DELETE FROM fkg.d_basis_postnr;
DELETE FROM fkg.d_basis_funktionsstatus;
DELETE FROM fkg.d_basis_magasin;
DELETE FROM fkg.d_basis_fors_omr_type;
DELETE FROM fkg.d_basis_driftniv;
DELETE FROM fkg.d_basis_ukrudtsbek;
DELETE FROM fkg.d_basis_antal;
DELETE FROM fkg.d_basis_trin;
DELETE FROM fkg.d_basis_offentlig;
-- New lookup tables in 2.5
DELETE FROM fkg.d_basis_belaegning;
DELETE FROM fkg.d_basis_handicapegnet;
DELETE FROM fkg.d_basis_invasivart;
DELETE FROM fkg.d_basis_kotesystem;
-- New lookup tables in 2.5.X
DELETE FROM fkg.d_basis_ansva_v;


-- Temaspecific lookup-tables
DELETE FROM fkg.d_5000_vandl_type;
DELETE FROM fkg.d_5000_maalsaetning;
DELETE FROM fkg.d_5000_klasse;
DELETE FROM fkg.d_5001_maalest_type;
DELETE FROM fkg.d_5002_spaerring;
DELETE FROM fkg.d_5002_passage;
DELETE FROM fkg.d_5003_ledn_type;
DELETE FROM fkg.d_5003_klasse;
DELETE FROM fkg.d_5004_omr_type;
DELETE FROM fkg.d_5005_maalsaetning;
DELETE FROM fkg.d_5005_soe_type;
DELETE FROM fkg.d_5005_habitat_type;
DELETE FROM fkg.d_5007_opl;
DELETE FROM fkg.d_5007_opl_type;
DELETE FROM fkg.d_5008_opl;
DELETE FROM fkg.d_5009_lag_type;
DELETE FROM fkg.d_5010_element_type;
DELETE FROM fkg.d_5105_kaer_type;
DELETE FROM fkg.d_5106_pleje_type;
DELETE FROM fkg.d_5106_faciliteter;
DELETE FROM fkg.d_5200_affald;
DELETE FROM fkg.d_5400_affalds_type;
DELETE FROM fkg.d_5401_gs_type;
DELETE FROM fkg.d_5402_gc_type;
DELETE FROM fkg.d_5506_anlaegtype;
DELETE FROM fkg.d_5508_stoej;
DELETE FROM fkg.d_5600_rute;
DELETE FROM fkg.d_5601_hasti_type;
DELETE FROM fkg.d_5602_p_tid;
DELETE FROM fkg.d_5602_p_type;
DELETE FROM fkg.d_5604_begr_type;
DELETE FROM fkg.d_5605_dekl_type;
DELETE FROM fkg.d_5606_inventar_type;
DELETE FROM fkg.d_5607_effekt_type;
DELETE FROM fkg.d_5607_ladefacilitet_type;
DELETE FROM fkg.d_5607_tilgaengelighed_type;
DELETE FROM fkg.d_5700_forening_type;
DELETE FROM fkg.d_5700_adr_beskyt;
DELETE FROM fkg.d_5705_udlejning;
DELETE FROM fkg.d_5706_havn_type;
DELETE FROM fkg.d_5707_grund_type;
DELETE FROM fkg.d_5707_salg_status;
DELETE FROM fkg.d_5710_udd_distrikt_type;
DELETE FROM fkg.d_5711_an_distrikt_type;
DELETE FROM fkg.d_5712_plej_distrikt_type;
DELETE FROM fkg.d_5713_prog_distrikt_type;
DELETE FROM fkg.d_5714_udd_institution_type;
DELETE FROM fkg.d_5715_botilbud_type;
DELETE FROM fkg.d_5716_Servicetilbud_type;
DELETE FROM fkg.d_5800_facilitet;
DELETE FROM fkg.d_5800_kvalitet;
DELETE FROM fkg.d_5802_rutetype;
-- New lookuptable in 2.5 (udgået i 2.5.x)
-- DELETE FROM fkg.d_5802_fremkommelighed;
DELETE FROM fkg.d_5902_vaeske_type;
-- DELETE FROM fkg.d_6000_kotesystem;
DELETE FROM fkg.d_6003_zone_type;
DELETE FROM fkg.d_6100_brandhane;
DELETE FROM fkg.d_6100_placering;
DELETE FROM fkg.d_6102_redvej_type;

DELETE FROM fkg.d_6101_beskyt_rum;
DELETE FROM fkg.d_6104_risikotype;
DELETE FROM fkg.d_6104_brandhaem;
DELETE FROM fkg.d_6111_tilladelse;
DELETE FROM fkg.d_6112_depottype;
DELETE FROM fkg.d_6115_afbr_type;
DELETE FROM fkg.d_6116_strandtype;
DELETE FROM fkg.d_6116_esi_klasse;
DELETE FROM fkg.d_6117_indsatstype;
DELETE FROM fkg.d_6118_brand_redarea_type;
DELETE FROM fkg.d_6200_geologi;
DELETE FROM fkg.d_6200_jordtype;
DELETE FROM fkg.d_6200_terraen;
DELETE FROM fkg.d_6200_kompleksitet;
-- New lookuptable in 2.5
DELETE FROM fkg.d_6121_sua;
DELETE FROM fkg.d_6202_skala;
DELETE FROM fkg.d_6202_rumlig_afgraensning;
DELETE FROM fkg.d_6202_kompleksitet;
DELETE FROM fkg.d_6202_struktur;
DELETE FROM fkg.d_6202_visuel_uro;
DELETE FROM fkg.d_6202_tidsdybde;
DELETE FROM fkg.d_6203_karakterstyrke;
DELETE FROM fkg.d_6203_saarbarhed;
DELETE FROM fkg.d_6800_vedlhold_f_type;
DELETE FROM fkg.d_6801_vedlhold_l_type;
DELETE FROM fkg.d_6802_groenvedligh_punkt;
DELETE FROM fkg.d_6803_pg_distrikt;
-- New lookuptables IN 2.5.x
DELETE FROM fkg.d_5800_saeson;
DELETE FROM fkg.d_5802_svaerhed;
DELETE FROM fkg.d_5802_hierarki;
DELETE FROM fkg.d_5802_rute_uty;
DELETE FROM fkg.d_5802_kategori;
-- New lookuptables in 2.6.0.2
DELETE FROM fkg.d_5802_certifi;


INSERT INTO fkg.d_temagruppe VALUES ('5.1', 5000, 5099,'Overfladevand');
INSERT INTO fkg.d_temagruppe VALUES ('5.2', 5100, 5199,'Natur');
INSERT INTO fkg.d_temagruppe VALUES ('5.3', 5200, 5299,'Miljø');
INSERT INTO fkg.d_temagruppe VALUES ('5.4', 5300, 5399,'Landbrug');
INSERT INTO fkg.d_temagruppe VALUES ('5.5', 5400, 5499,'Affald og genbrug');
INSERT INTO fkg.d_temagruppe VALUES ('5.6', 5500, 5599,'Forsyning');
INSERT INTO fkg.d_temagruppe VALUES ('5.7', 5600, 5699,'Vej og trafik');
INSERT INTO fkg.d_temagruppe VALUES ('5.8', 5700, 5799,'Administration');
INSERT INTO fkg.d_temagruppe VALUES ('5.9', 5800, 5899,'Sport, fritid og friluftsliv');
INSERT INTO fkg.d_temagruppe VALUES ('5.10', 5900, 5999,'Jord og råstof');
INSERT INTO fkg.d_temagruppe VALUES ('5.11', 6000, 6099,'Grundvand');
INSERT INTO fkg.d_temagruppe VALUES ('5.12', 6100, 6199,'Beredskab');
INSERT INTO fkg.d_temagruppe VALUES ('5.13', 6200, 6299,'Planlægning');
INSERT INTO fkg.d_temagruppe VALUES ('5.19', 6800, 6899,'Park og Grønne områder');
INSERT INTO fkg.d_temagruppe VALUES ('5.20', 7900, 7999,'Fotos');
-- SELECT * FROM temagruppe

INSERT INTO fkg.d_tabel VALUES (5000,'Vandløb','L','t_5000_vandl','5.1');
INSERT INTO fkg.d_tabel VALUES (5001,'Målestation','P','t_5001_maalest','5.1');
INSERT INTO fkg.d_tabel VALUES (5002,'Faunaspæring','P','t_5002_faunasp','5.1');
INSERT INTO fkg.d_tabel VALUES (5003,'Drænledning','L','t_5003_draenledn','5.1');
INSERT INTO fkg.d_tabel VALUES (5004,'Drænområde','F','t_5004_draenomr','5.1');
INSERT INTO fkg.d_tabel VALUES (5005,'Sø','F','t_5005_soe','5.1');
INSERT INTO fkg.d_tabel VALUES (5006,'Dybdekurver','F','t_5006_dybdekurv','5.1');
INSERT INTO fkg.d_tabel VALUES (5007,'Vandløbsoplande','F','t_5007_vandl_opl','5.1');
INSERT INTO fkg.d_tabel VALUES (5008,'Søoplande','F','t_5008_soe_opl','5.1');
INSERT INTO fkg.d_tabel VALUES (5009,'Pumpelag','F','t_5009_pumpelag','5.1');
INSERT INTO fkg.d_tabel VALUES (5010,'Vandløbselement','P','t_5010_vandl_elm','5.1');
INSERT INTO fkg.d_tabel VALUES (5104,'Arter Invasive Flade','F','t_5104_art_invas','5.2');
INSERT INTO fkg.d_tabel VALUES (5105,'Rigkær – Fattigkær','P','t_5105_rig_fattig','5.2');
INSERT INTO fkg.d_tabel VALUES (5106,'Naturpleje','F','t_5106_nat_pl','5.2');
INSERT INTO fkg.d_tabel VALUES (5107,'Arter Invasive Punkt','P','t_5107_art_invas_p','5.2');
INSERT INTO fkg.d_tabel VALUES (5108,'Grønt partnerskab','F','t_5108_groent_part','5.2');
INSERT INTO fkg.d_tabel VALUES (5200,'Affaldprod_udbringning','F','t_5200_aff_prod_udbr','5.3');
INSERT INTO fkg.d_tabel VALUES (5300,'Genopdyrkningsret','F','t_5300_genopd_ret','5.4');
INSERT INTO fkg.d_tabel VALUES (5400,'Affaldsområde','F','t_5400_affalds_dis','5.5');
INSERT INTO fkg.d_tabel VALUES (5401,'Genbrugsplads','P','t_5401_genbr_st','5.5');
INSERT INTO fkg.d_tabel VALUES (5402,'Container','P','t_5402_genbr_con','5.5');
INSERT INTO fkg.d_tabel VALUES (5500,'Elforsyningsområde','F','t_5500_elfors_omr','5.6');
INSERT INTO fkg.d_tabel VALUES (5506,'Spildevandsplanpunkter','P','t_5506_spildev_pl_pkt','5.6');
INSERT INTO fkg.d_tabel VALUES (5507,'Fiberkabel','L','t_5507_fiberkabel','5.6');
INSERT INTO fkg.d_tabel VALUES (5508,'Husstandsmøller','P','t_5508_husst_moel','5.6');
INSERT INTO fkg.d_tabel VALUES (5600,'Vintervedligeholdelse','L','t_5600_vintervedl','5.7');
INSERT INTO fkg.d_tabel VALUES (5601,'Hastighedsdæmpning','P','t_5601_hasti_daemp','5.7');
INSERT INTO fkg.d_tabel VALUES (5602,'P-zoner','F','t_5602_p_zoner','5.7');
INSERT INTO fkg.d_tabel VALUES (5603,'Hastighedszone','F','t_5603_hasti_zone','5.7');
INSERT INTO fkg.d_tabel VALUES (5604,'Kørselsregulering','L','t_5604_koer_begr','5.7');
INSERT INTO fkg.d_tabel VALUES (5605,'Vejbyggelinje','F','t_5605_vejbyggel','5.7');
INSERT INTO fkg.d_tabel VALUES (5606,'Vejinventar','P','t_5606_vejinv','5.7');
INSERT INTO fkg.d_tabel VALUES (5607,'Ladefacilitet','P','t_5607_ladefacilitet','5.7');
INSERT INTO fkg.d_tabel VALUES (5608,'Planlagte ladefaciliteter','P','t_5608_plan_ladefaciliteter','5.7');
INSERT INTO fkg.d_tabel VALUES (5700,'Grundejerforeninger/ Vejlav','F','t_5700_grundej','5.8');
INSERT INTO fkg.d_tabel VALUES (5701,'Lokalrådsområde','F','t_5701_lok_omr','5.8');
INSERT INTO fkg.d_tabel VALUES (5702,'Skorstensfejerdistrikt','F','t_5702_skorst_fej','5.8');
INSERT INTO fkg.d_tabel VALUES (5703,'Afstemningssted','P','t_5703_afstem_sted','5.8');
INSERT INTO fkg.d_tabel VALUES (5704,'Afstemningsområde','F','t_5704_afstem_omr','5.8');
INSERT INTO fkg.d_tabel VALUES (5705,'Forpagtningsareal','F','t_5705_forp_are','5.8');
INSERT INTO fkg.d_tabel VALUES (5706,'Havneareal','F','t_5706_havn_are','5.8');
INSERT INTO fkg.d_tabel VALUES (5707,'Grundsalg','F','t_5707_grunds','5.8');
INSERT INTO fkg.d_tabel VALUES (5710,'Børne- og skoledistrikter','F','t_5710_born_skole_dis','5.8');
INSERT INTO fkg.d_tabel VALUES (5711,'Andre distrikter','F','t_5711_and_dis','5.8');
INSERT INTO fkg.d_tabel VALUES (5712,'Pleje- og ældredistrikter','F','t_5712_plej_aeldr_dis','5.8');
INSERT INTO fkg.d_tabel VALUES (5713,'Prognose- og statistik distrikter','F','t_5713_prog_stat_dis','5.8');
INSERT INTO fkg.d_tabel VALUES (5714,'Lærings- og uddannelsesinstitution','P','t_5714_laering_udd_inst','5.8');
INSERT INTO fkg.d_tabel VALUES (5715,'Botilbud','P','t_5715_botilbud','5.8');
INSERT INTO fkg.d_tabel VALUES (5716,'Servicetilbud','P','t_5716_servicetilbud','5.8');
INSERT INTO fkg.d_tabel VALUES (5800,'Facilitet_punkt','P','t_5800_fac_pkt','5.9');
INSERT INTO fkg.d_tabel VALUES (5801,'Facilitet_flade','F','t_5801_fac_fl','5.9');
INSERT INTO fkg.d_tabel VALUES (5802,'Facilitet_linje','L','t_5802_fac_li','5.9');
INSERT INTO fkg.d_tabel VALUES (5900,'Jordflytning','F','t_5900_jordfl','5.10');
INSERT INTO fkg.d_tabel VALUES (5902,'Jordvarmeanlæg','F','t_5902_jordv_anl','5.10');
INSERT INTO fkg.d_tabel VALUES (6000,'Potentialekort','L','t_6000_pot','5.11');
INSERT INTO fkg.d_tabel VALUES (6001,'Potentialekort målepunkter','P','t_6001_pot_m','5.11');
INSERT INTO fkg.d_tabel VALUES (6002,'Indvindingsopland','F','t_6002_indv','5.11');
INSERT INTO fkg.d_tabel VALUES (6003,'Beskyttelseszone','F','t_6003_besk_zone','5.11');
INSERT INTO fkg.d_tabel VALUES (6004,'Vandværksforsyningsomr','F','t_6004_vandv_fs','5.11');
INSERT INTO fkg.d_tabel VALUES (6006,'Grundvandsdannende Opland','F','t_6006_grundv_opl','5.11');
INSERT INTO fkg.d_tabel VALUES (6007,'Indsatsområde','F','t_6007_inds_omr','5.11');
INSERT INTO fkg.d_tabel VALUES (6008,'Maksimal Boredybde','F','t_6008_maks_bor','5.11');
INSERT INTO fkg.d_tabel VALUES (6009,'Indvinding af overfladevand','P','t_6009_indv_ovflv','5.11');
INSERT INTO fkg.d_tabel VALUES (6100,'Brandhane','P','t_6100_brandhane','5.12');
INSERT INTO fkg.d_tabel VALUES (6101,'Beskyttelsesrum','P','t_6101_beskyt_rum','5.12');
INSERT INTO fkg.d_tabel VALUES (6102,'Redningsvej','F','t_6102_redn_vej','5.12');
INSERT INTO fkg.d_tabel VALUES (6103,'Beredskabsområde - 112 slukningsdistrikt','F','t_6103_bered_omr','5.12');
INSERT INTO fkg.d_tabel VALUES (6104,'Risiko virksomhed','F','t_6104_risiko_virk','5.12');
INSERT INTO fkg.d_tabel VALUES (6105,'Særlig bygningsområde','F','t_6105_sbygn_omr','5.12');
INSERT INTO fkg.d_tabel VALUES (6107,'Forholdsordre','P','t_6107_forholds','5.12');
INSERT INTO fkg.d_tabel VALUES (6108,'Mødeplan','F','t_6108_moedepl','5.12');
INSERT INTO fkg.d_tabel VALUES (6110,'Nøgleboks til beredskab','P','t_6110_noegle','5.12');
INSERT INTO fkg.d_tabel VALUES (6111,'Fyrværkeri tilladelse','F','t_6111_fyrv_till','5.12');
INSERT INTO fkg.d_tabel VALUES (6112,'Midlertidige depot ved forurening m.v.','F','t_6112_midl_dep','5.12');
INSERT INTO fkg.d_tabel VALUES (6113,'Beskyttet natur ved beredskabsindsats','F','t_6113_besk_nat_b','5.12');
INSERT INTO fkg.d_tabel VALUES (6115,'Afbrændingsområde','F','t_6115_afbr_omr','5.12');
INSERT INTO fkg.d_tabel VALUES (6116,'Olieberedskabsplan','F','t_6116_olie_ber_pl','5.12');
INSERT INTO fkg.d_tabel VALUES (6117,'Indsatspunkt','P','t_6117_inds_pkt','5.12');
INSERT INTO fkg.d_tabel VALUES (6118,'Brand- og redningsareal','F','t_6118_bran_redn','5.12');
-- Nye temaer i 2.5:
INSERT INTO fkg.d_tabel VALUES (6119,'Evakueringscenter','P','t_6119_evaku_centr','5.12');
INSERT INTO fkg.d_tabel VALUES (6120,'Midlertidig overnatning','P','t_6120_midl_overn','5.12');
INSERT INTO fkg.d_tabel VALUES (6121,'Større udendørs arrangementer','F','t_6121_stor_ud_arr','5.12');
--
INSERT INTO fkg.d_tabel VALUES (6200,'Naturgeografi','F','t_6200_nat_geo','5.13');
INSERT INTO fkg.d_tabel VALUES (6201,'Kulturgeografi','F','t_6201_kult_geo','5.13');
INSERT INTO fkg.d_tabel VALUES (6202,'Landskabkarakterområder','F','t_6202_landk_omr','5.13');
INSERT INTO fkg.d_tabel VALUES (6203,'Landskabskaraktervurderinger','F','t_6203_landk_vur','5.13');
INSERT INTO fkg.d_tabel VALUES (6800,'Park og grønne områder flade','F','t_6800_parl_fl','5.19');
INSERT INTO fkg.d_tabel VALUES (6801,'Park og grønne områder linje','L','t_6801_parl_li','5.19');
INSERT INTO fkg.d_tabel VALUES (6802,'Park og grønne områder punkt','P','t_6802_parl_pkt','5.19');
INSERT INTO fkg.d_tabel VALUES (6803,'Park og grønne områders distrikt','F','t_6803_parl_omr','5.19');
-- Nye temaer i 2.6.3:
INSERT INTO fkg.d_tabel VALUES (7900,'Fotoforbindelse','P','t_7900_fotoforbindelse','5.20');
INSERT INTO fkg.d_tabel VALUES (7901,'Foto','P','t_7901_foto','5.20');

--SELECT * FROM tema

INSERT INTO fkg.d_basis_oprindelse VALUES (0,'Ikke udfyldt', 1, NULL);
INSERT INTO fkg.d_basis_oprindelse VALUES (1,'Ortofoto', 1,'Der skelnes ikke mellem forskellige producenter og forskellige årgange');
INSERT INTO fkg.d_basis_oprindelse VALUES (2,'Matrikelkort', 1,'Matrikelkort fra KMS (København og Frederiksberg). Det forudsættes, at der benyttes opdaterede matrikelkort for datoen for planens indberetning');
INSERT INTO fkg.d_basis_oprindelse VALUES (3,'Opmåling', 1,'Kan være med GPS, andet instrument el. lign. Det er ikke et udtryk for præcisi-on, men at det er udført i marken');
INSERT INTO fkg.d_basis_oprindelse VALUES (4,'FOT / Tekniske kort', 1,'FOT, DTK, Danmarks Topografisk kortværk eller andre raster kort samt kommunernes tekniske kort eller andre vektorkort. Indtil FOT er landsdækkende benyttes kort10 (jf. overgangsregler for FOT)');
INSERT INTO fkg.d_basis_oprindelse VALUES (5,'Modelberegning', 1,'GIS analyser eller modellering');
INSERT INTO fkg.d_basis_oprindelse VALUES (6,'Tegning', 1,'Digitaliseret på baggrund af PDF, billede eller andet tegningsmateriale');
INSERT INTO fkg.d_basis_oprindelse VALUES (7,'Felt-/markbesøg', 1,'Registrering på baggrund af tilsyn i marken');
INSERT INTO fkg.d_basis_oprindelse VALUES (8,'Borgeranmeldelse', 1,'Indberetning via diverse borgerløsninger – eks. "Giv et praj"');
INSERT INTO fkg.d_basis_oprindelse VALUES (9,'Luftfoto (historiske 1944-1993)', 1,'Luftfoto er kendetegnet ved ikke at have samme nøjagtighed i georeferingen, men man kan se en del ting, der ikke er på de nuværende ortofoto.');
INSERT INTO fkg.d_basis_oprindelse VALUES (10,'Skråfoto', 1,'Luftfoto tager fra de 4 verdenshjørner');
INSERT INTO fkg.d_basis_oprindelse VALUES (11,'Andre foto', 1,'Foto taget i jordhøjde - "terræn foto" (street-view, sagsbehandlerfotos, borgerfotos m.v.). Her er det meget tydeligt at se de enkelte detaljer, men også her kan man normalt ikke direkte placere et punkt via fotoet, men må over at gøre det via noget andet.');
INSERT INTO fkg.d_basis_oprindelse VALUES (12,'3D', 1,'Laserscanning, Digital terrænmodel (DTM) afledninger, termografiske målinger (bestemmelse af temperaturforskelle) o.lign.');
-- SELECT * FROM d_basis_oprindelse;

INSERT INTO fkg.d_basis_status VALUES (0,'Ukendt',1);
INSERT INTO fkg.d_basis_status VALUES (1,'Kladde',1);
INSERT INTO fkg.d_basis_status VALUES (2,'Forslag',1);
INSERT INTO fkg.d_basis_status VALUES (3,'Gældende / Vedtaget',1);
INSERT INTO fkg.d_basis_status VALUES (4,'Ikke gældende / Aflyst',1);
-- SELECT * FROM d_basis_status;

INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 66137112,'Albertslund Kommune', 165, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 60183112,'Allerød Kommune', 201, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189692,'Assens Kommune', 420, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 58271713,'Ballerup Kommune', 151, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189765,'Billund Kommune', 530, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 26696348,'Bornholms Regionskommune', 400, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 65113015,'Brøndby Kommune', 153, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189501,'Brønderslev Kommune',  810, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 25775635,'Christiansø', 411, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 12881517,'Dragør Kommune', 155, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188386,'Egedal Kommune', 240, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189803,'Esbjerg Kommune', 561, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 31210917,'Fanø Kommune', 563, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189714,'Favrskov Kommune',  710, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188475,'Faxe Kommune', 320, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188335,'Fredensborg Kommune',     210, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 69116418,'Fredericia Kommune', 607, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 11259979,'Frederiksberg Kommune', 147, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189498,'Frederikshavn Kommune', 813, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189129,'Frederikssund Kommune', 250, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188327,'Furesø Kommune', 190, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188645,'Faaborg-Midtfyn Kommune', 430, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 19438414,'Gentofte Kommune', 157, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 62761113,'Gladsaxe Kommune', 159, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 65120119,'Glostrup Kommune', 161, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 44023911,'Greve Kommune', 253, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188440,'Gribskov Kommune', 270, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188599,'Guldborgsund Kommune', 376, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189757,'Haderslev Kommune', 510, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188416,'Halsnæs Kommune', 260, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189587,'Hedensted Kommune', 766, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 64502018,'Helsingør Kommune', 217, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 63640719,'Herlev Kommune', 163, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189919,'Herning Kommune', 657, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189366,'Hillerød Kommune', 219, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189382,'Hjørring Kommune', 860, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189447,'Holbæk Kommune', 316, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189927,'Holstebro Kommune', 661, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189889,'Horsens Kommune', 615, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 55606617,'Hvidovre Kommune', 167, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 19501817,'Høje-Taastrup Kommune', 169, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 70960516,'Hørsholm Kommune', 223, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189617,'Ikast-Brande Kommune', 756, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 11931316,'Ishøj Kommune', 183, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189439,'Jammerbugt Kommune', 849, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189595,'Kalundborg Kommune', 326, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189706,'Kerteminde Kommune', 440, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189897,'Kolding Kommune', 621, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 64942212,'Københavns Kommune', 101, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189374,'Køge Kommune', 259, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188955,'Langeland Kommune', 482, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188548,'Lejre Kommune', 350, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189935,'Lemvig Kommune', 665, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188572,'Lolland Kommune', 360, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 11715311,'Lyngby-Taarbæk Kommune', 173, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 45973328,'Læsø Kommune', 825, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189455,'Mariagerfjord Kommune', 846, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189684,'Middelfart Kommune', 410, 1);
-- INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 25798376,'Miljøstyrelsen udgår', NULL, 0);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 41333014,'Morsø Kommune', 773, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189986,'Norddjurs Kommune', 707, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188947,'Nordfyns Kommune', 480, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189722,'Nyborg Kommune', 450, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189625,'Næstved Kommune', 370, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 32264328,'Odder Kommune', 727, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 35209115,'Odense Kommune', 461, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188459,'Odsherred Kommune', 306, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189668,'Randers Kommune', 730, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189463,'Rebild Kommune', 840, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189609,'Ringkøbing-Skjern Kommune', 760, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 18957981,'Ringsted Kommune', 329, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189404,'Roskilde Kommune', 265, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188378,'Rudersdal Kommune', 230, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 65307316,'Rødovre Kommune', 175, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 23795515,'Samsø Kommune', 741, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189641,'Silkeborg Kommune', 740, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189633,'Skanderborg Kommune', 746, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189579,'Skive Kommune', 779, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29188505,'Slagelse Kommune', 330, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 68534917,'Solrød Kommune', 269, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189994,'Sorø Kommune', 340, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29208654,'Stevns Kommune', 336, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189951,'Struer Kommune', 671, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189730,'Svendborg Kommune', 479, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189978,'Syddjurs Kommune', 706, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189773,'Sønderborg Kommune', 540, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189560,'Thisted Kommune', 787, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189781,'Tønder Kommune', 550, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 20310413,'Tårnby Kommune', 185, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 19583910,'Vallensbæk Kommune', 187, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189811,'Varde Kommune', 573, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189838,'Vejen Kommune', 575, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189900,'Vejle Kommune', 630, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189471,'Vesthimmerlands Kommune', 820, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189846,'Viborg Kommune', 791, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189676,'Vordingborg Kommune', 390, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 28856075,'Ærø Kommune', 492, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189854,'Aabenraa Kommune', 580, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 29189420,'Aalborg Kommune', 851, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 55133018,'Aarhus Kommune', 751, 1);
-- Nye myndigheder version 3.0 (Miljøstyrelsen genopstår):
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 25798376, 'Miljøstyrelsen', NULL, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 33157274, 'Naturstyrelsen', NULL, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 33284114, 'Styrelsen for Dataforsyning og Effektivisering', NULL, 1);
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 99999999, 'Øvrige/private', NULL, 1);
-- GeoFA version 1.0.1 Forsvarsministeriets Ejendomsstyrelse (cvr_kode: 16287180
INSERT INTO fkg.d_basis_ansvarlig_myndighed VALUES ( 16287180, 'Forsvarsministeriets Ejendomsstyrelse', NULL, 1);

-- SELECT * FROM d_basis_ansvarlig_myndighed;

INSERT INTO fkg.d_basis_offentlig VALUES (1,'Synlig for alle',1);
INSERT INTO fkg.d_basis_offentlig VALUES (2,'Synlig for den ansvarlige myndighed',1);
INSERT INTO fkg.d_basis_offentlig VALUES (3,'Synlig for alle myndigheder, men ikke offentligheden',1);
-- SELECT * FROM d_basis_offentlig;

INSERT INTO fkg.d_basis_ja_nej VALUES (0,'Nej',1,'NEJ');
INSERT INTO fkg.d_basis_ja_nej VALUES (1,'Ja',1,'JA');
INSERT INTO fkg.d_basis_ja_nej VALUES (2,'Blandet',1,'Hvor både ja og nej gælder for objektet');
INSERT INTO fkg.d_basis_ja_nej VALUES (3,'Ukendt',1,'Mangler viden til at kunne udfylde værdien med ja eller nej.');
-- SELECT * FROM d_basis_ja_nej;

INSERT INTO fkg.d_basis_ejerstatus VALUES (10,'Privatpersoner, inkl. I/S',1,'Person, firma, forening m.v. Gælder også flere og kombinationer af disse.');
INSERT INTO fkg.d_basis_ejerstatus VALUES (20,'Almen boligorganisation',1,NULL);
INSERT INTO fkg.d_basis_ejerstatus VALUES (30,'A/S, ApS og andre selskaber',1,NULL);
INSERT INTO fkg.d_basis_ejerstatus VALUES (40,'Forening, Legater og Institutioner',1,NULL);
INSERT INTO fkg.d_basis_ejerstatus VALUES (41,'Private andelsboligforeninger',1,NULL);
INSERT INTO fkg.d_basis_ejerstatus VALUES (50,'Beliggenhedskommune',1,'Den kommune, hvor ejendommen er beliggende. Den kommunale forvaltning – ikke private selskaber ejet 100% af Kommune.  F.eks. forsyningsselskaber.');
INSERT INTO fkg.d_basis_ejerstatus VALUES (60,'Anden primærkommune',1,NULL);
INSERT INTO fkg.d_basis_ejerstatus VALUES (70,'Region',1,'Regions forvaltningen.');
INSERT INTO fkg.d_basis_ejerstatus VALUES (80,'Staten',1,'Staten eller en myndighed under staten f.eks. Naturstyrelsen eller KMS');
INSERT INTO fkg.d_basis_ejerstatus VALUES (90,'Andre ejerforhold',1,'Mangler viden til at kunne udfylde værdien.');
-- SELECT * FROM d_basis_ejerstatus;

INSERT INTO fkg.d_basis_tilstand VALUES (1,'Dårlig',1,'Udskiftning eller vedligeholdelse tiltrængt/påkrævet. Fungerer ikke efter hensigten eller i fare for det sker inden for kort tid.');
INSERT INTO fkg.d_basis_tilstand VALUES (2,'Middel',1,'Fungerer efter hensigten, men kunne trænge til vedligeholdelse for at forlænge levetiden/funktionen');
INSERT INTO fkg.d_basis_tilstand VALUES (3,'God',1,'Tæt på lige så god som et nyt.');
INSERT INTO fkg.d_basis_tilstand VALUES (8,'Andet',1,'Anden tilstand end Dårlig, Middel, God eller Ukendt.');
INSERT INTO fkg.d_basis_tilstand VALUES (9,'Ukendt',1,'Mangler viden til at kunne udfylde værdien med Dårlig, Middel eller God.');
-- SELECT * FROM d_basis_tilstand;

INSERT INTO fkg.d_basis_sag_status VALUES (1,'Forespurgt',1,'Forespurgt uden egentlig ansøgning. Typisk mundtligt.');
INSERT INTO fkg.d_basis_sag_status VALUES (2,'Ansøgt',1,'Ansøgt - typisk indsendt skriftligt, men afvent endnu sagsbehandling.');
INSERT INTO fkg.d_basis_sag_status VALUES (3,'Under behandling',1,'Sagsbehandling påbegyndt');
INSERT INTO fkg.d_basis_sag_status VALUES (4,'Standby',1,'Sagsbehandling sat på standby. Afvente yderligere dokumentation til ansøgning eller ansøger har ønsket sagsbehandling sat i stå.');
INSERT INTO fkg.d_basis_sag_status VALUES (5,'Godkendt',1,'Ansøgning godkendt uden forbehold.');
INSERT INTO fkg.d_basis_sag_status VALUES (6,'Betinget godkendt',1,'Ansøgning godkendt med forbehold.');
INSERT INTO fkg.d_basis_sag_status VALUES (7,'Afvist',1,'Ansøgning afvist.');
INSERT INTO fkg.d_basis_sag_status VALUES (8,'Annulleret',1,'Ansøg er trukket tilbage før der truffet en beslutning.');
-- SELECT * FROM d_basis_sag_status;

INSERT INTO fkg.d_basis_dvfi_bedoemmelse VALUES (1,'Særdeles ringe',1,'Se DVFI');
INSERT INTO fkg.d_basis_dvfi_bedoemmelse VALUES (2,'Meget ringe',1,'Se DVFI');
INSERT INTO fkg.d_basis_dvfi_bedoemmelse VALUES (3,'Ringe',1,'Se DVFI');
INSERT INTO fkg.d_basis_dvfi_bedoemmelse VALUES (4,'Noget forringet',1,'Se DVFI');
INSERT INTO fkg.d_basis_dvfi_bedoemmelse VALUES (5,'God',1,'Se DVFI');
INSERT INTO fkg.d_basis_dvfi_bedoemmelse VALUES (6,'Meget god',1,'Se DVFI');
INSERT INTO fkg.d_basis_dvfi_bedoemmelse VALUES (7,'Særdeles god',1,'Se DVFI');
-- SELECT * FROM d_basis_dvfi_bedoemmelse;

INSERT INTO fkg.d_basis_trussel_vand VALUES (1,'Ingen aktuelle',1,'Ingen kendte trusler kendt pt.');
INSERT INTO fkg.d_basis_trussel_vand VALUES (2,'Fiskeri',1,'Fiskeri med gran, ruser eller stang');
INSERT INTO fkg.d_basis_trussel_vand VALUES (3,'Kemisk forurening',1,'Udsivning fra jordforurening, tilløb fra vandløb med kendte kemiske problemer m.v.');
INSERT INTO fkg.d_basis_trussel_vand VALUES (4,'Næringsstoffer',1,'Tilførsel af næringsstoffer fra omkring liggende landbrug/marker.');
INSERT INTO fkg.d_basis_trussel_vand VALUES (5,'Sejlads',1,'Sejlads med kanoer, motorbåde m.v. ødelægger plantelivet m.v.');
INSERT INTO fkg.d_basis_trussel_vand VALUES (6,'Sandvandring/bundfældning',1,'Tilløb aflejrer sand, okker m.v. og fylder dermed søen op over tid.');
INSERT INTO fkg.d_basis_trussel_vand VALUES (7,'Tilgroning',1,'Siv og andre planter er i gang med at dække vandoverfladen og kan på sigt få det frie vandspejl til at forsvinde.');
INSERT INTO fkg.d_basis_trussel_vand VALUES (8,'Udsætning af fisk',1,'Der udsættes/har været udsat fisk og der ændre balancen i søen.');
INSERT INTO fkg.d_basis_trussel_vand VALUES (9,'Udtørring',1,'Vandstanden svinder f.eks. P.g.a. vandindvinding i området/søoplandet.');
INSERT INTO fkg.d_basis_trussel_vand VALUES (10,'Ænder',1,'Udsætning/fodring af ænder giver for meget næring.');
INSERT INTO fkg.d_basis_trussel_vand VALUES (11,'Spildevand',1,'Spildevand fra ejendomme');
INSERT INTO fkg.d_basis_trussel_vand VALUES (97,'Flere trusler',1,'Flere af trusselsmulighederne er relevante i høj grad.');
INSERT INTO fkg.d_basis_trussel_vand VALUES (98,'Andet',1,'En trussel der ikke passer ind på ovenstående.');
-- SELECT * FROM d_basis_trussel_vand;

INSERT INTO fkg.d_basis_planstatus VALUES (1,'Eksisterende',1,'Er anlagt/i drift');
INSERT INTO fkg.d_basis_planstatus VALUES (2,'Planlagt',1,'Fremtid plan');
-- SELECT * FROM d_basis_planstatus;

INSERT INTO fkg.d_basis_hastighed VALUES (15,'15',1,'15 km i timen (opholds- og legeområde)');
INSERT INTO fkg.d_basis_hastighed VALUES (20,'20',1,'20 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (25,'25',1,'25 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (30,'30',1,'30 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (40,'40',1,'40 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (45,'45',1,'45 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (50,'50',1,'50 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (60,'60',1,'60 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (70,'70',1,'70 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (80,'80',1,'80 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (90,'90',1,'90 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (98,'Andet',1,'Anden hastighed end muligt at vælge på listen.');
INSERT INTO fkg.d_basis_hastighed VALUES (99,'Ukendt',1,'Ukendt/mangler viden');
INSERT INTO fkg.d_basis_hastighed VALUES (110,'110',1,'110 km i timen');
INSERT INTO fkg.d_basis_hastighed VALUES (130,'130',1,'130 km i timen');
-- SELECT * FROM d_basis_hastighed;

-- Old-version: postnr lookup table created by SQL: select 'INSERT INTO fkg.d_basis_postnr VALUES (' || CAST(postnr AS character varying) || ',''' || postbynavn || ''',1);' FROM adr_mbbl.postnr WHERE COALESCE (btrim(postnr),'')<>'';
-- New-version (from 2014-08-07): select 'INSERT INTO fkg.d_basis_postnr VALUES (' || CAST(postcodeisdentifier AS character varying) || ',''' || districtname || ''',1);' FROM aws.postcode WHERE COALESCE (btrim(postcodeisdentifier),'')<>'';
INSERT INTO fkg.d_basis_postnr VALUES (2300,'København S',1);
INSERT INTO fkg.d_basis_postnr VALUES (1354,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1156,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (2700,'Brønshøj',1);
INSERT INTO fkg.d_basis_postnr VALUES (1675,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1265,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (2770,'Kastrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (1205,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (2450,'København SV',1);
INSERT INTO fkg.d_basis_postnr VALUES (2400,'København NV',1);
INSERT INTO fkg.d_basis_postnr VALUES (2100,'København Ø',1);
INSERT INTO fkg.d_basis_postnr VALUES (1159,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1105,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1350,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1439,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1437,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1402,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1799,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1619,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (2150,'Nordhavn',1);
INSERT INTO fkg.d_basis_postnr VALUES (1671,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1421,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1623,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1556,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1433,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1152,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1609,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1218,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1104,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1454,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1311,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1569,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1657,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1407,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1699,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1774,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1370,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1434,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1567,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1052,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1172,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1455,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1554,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (2900,'Hellerup',1);
INSERT INTO fkg.d_basis_postnr VALUES (1655,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1424,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1773,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1409,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1650,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1663,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1577,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1735,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1211,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1169,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1553,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1069,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1550,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1732,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1622,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1600,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1369,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1730,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1111,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1316,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1738,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1615,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1673,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1562,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1624,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1436,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1110,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1708,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1760,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1151,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1113,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1466,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1301,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1633,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1570,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1062,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1058,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1120,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (2860,'Søborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (1123,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1074,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1353,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1558,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1221,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1361,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1364,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1635,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1210,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1467,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1071,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1408,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1716,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1704,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1702,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1770,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1458,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1753,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1165,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1610,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1440,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1601,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1168,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1473,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1130,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1662,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1428,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1310,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1326,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1617,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1464,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1432,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1418,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1612,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1726,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1677,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1722,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1257,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1674,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1065,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1441,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1253,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1755,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1403,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1204,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1255,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1654,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1772,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1631,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1314,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1153,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1429,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1652,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1055,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1216,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1460,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1371,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1358,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1107,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1723,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1315,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1170,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1463,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1465,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1207,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1750,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1714,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1070,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1167,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1707,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1161,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1103,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1366,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1576,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1324,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1157,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1607,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1634,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1325,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1560,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1461,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1214,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1100,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1327,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1764,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1611,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1472,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1557,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1200,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1724,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1734,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1777,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1260,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1411,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1737,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1050,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1400,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1066,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1413,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1651,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1352,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1568,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1319,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1329,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1317,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1365,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1307,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1426,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1552,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1712,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1202,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1320,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1751,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1739,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1727,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1056,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1309,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1731,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1603,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1122,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1438,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1112,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1456,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1604,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1101,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1575,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1756,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1263,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1171,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1412,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1419,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1717,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1051,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1416,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1206,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1761,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1450,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1614,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1729,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1209,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1261,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1551,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1219,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1559,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1362,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1174,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1114,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1102,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1256,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1417,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1775,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1116,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1661,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1118,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1303,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1762,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1752,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1425,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1427,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1251,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1451,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1208,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1571,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1672,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1665,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1073,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1054,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1270,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1669,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1323,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1733,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1302,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1422,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1063,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1573,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1126,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1564,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1268,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1765,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1757,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1561,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1355,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1459,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1124,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1608,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1759,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1059,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1749,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1670,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1602,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1158,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1718,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1420,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1064,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1703,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1710,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1068,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1121,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1215,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1127,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1067,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1128,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1606,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1304,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1154,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (2610,'Rødovre',1);
INSERT INTO fkg.d_basis_postnr VALUES (1328,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1115,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1271,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1306,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1300,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1711,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1462,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1155,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1160,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1061,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1660,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1621,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1313,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1666,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1706,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1312,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1359,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1406,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1435,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1410,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1766,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1367,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1131,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1363,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1656,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1705,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1736,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1072,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1620,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1758,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1220,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1264,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1250,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1203,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1175,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1668,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1252,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1676,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1771,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1725,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1356,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1470,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1555,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1763,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1653,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1368,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1357,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1452,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1721,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1471,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1700,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1719,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1053,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1414,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1254,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1715,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1720,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1150,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1117,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1129,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1618,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1415,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1318,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1709,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1457,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1632,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1166,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1658,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1173,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1201,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1616,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1308,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1701,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1430,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1401,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1125,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1754,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1267,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1213,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1659,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1057,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1574,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1605,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1322,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1164,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1259,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1613,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1212,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1060,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1119,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1453,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1468,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1728,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1423,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1563,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1106,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1667,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1321,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1664,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1266,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (1572,'København V',1);
INSERT INTO fkg.d_basis_postnr VALUES (1360,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (2000,'Frederiksberg',1);
INSERT INTO fkg.d_basis_postnr VALUES (1828,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1817,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1870,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1815,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1812,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1902,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1803,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1824,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1825,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1850,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1911,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1956,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1954,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1904,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1922,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1960,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1826,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1807,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1875,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1809,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1916,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1900,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1851,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1802,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1865,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1856,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1816,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1921,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1971,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1810,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1871,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1952,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1927,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1912,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1955,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1855,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1853,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1926,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1876,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1857,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1805,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1963,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1961,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1953,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1820,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1965,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1852,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1860,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1908,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1814,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1962,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1903,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1811,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1974,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1913,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1973,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1925,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1923,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1967,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1915,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1906,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1813,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1917,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1801,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1872,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1829,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1878,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1864,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1901,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1879,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1958,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1823,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1914,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1905,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1822,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1862,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (2500,'Valby',1);
INSERT INTO fkg.d_basis_postnr VALUES (1920,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1877,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1964,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1804,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1866,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1910,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1819,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (2200,'København N',1);
INSERT INTO fkg.d_basis_postnr VALUES (1867,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1966,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1854,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1928,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1950,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1970,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (2720,'Vanløse',1);
INSERT INTO fkg.d_basis_postnr VALUES (1972,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1863,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1808,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1806,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1909,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1873,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1861,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1924,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1827,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1957,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1868,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1818,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1800,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1951,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1874,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (1959,'Frederiksberg C',1);
INSERT INTO fkg.d_basis_postnr VALUES (2750,'Ballerup',1);
INSERT INTO fkg.d_basis_postnr VALUES (2740,'Skovlunde',1);
INSERT INTO fkg.d_basis_postnr VALUES (2760,'Måløv',1);
INSERT INTO fkg.d_basis_postnr VALUES (2730,'Herlev',1);
INSERT INTO fkg.d_basis_postnr VALUES (3500,'Værløse',1);
INSERT INTO fkg.d_basis_postnr VALUES (2605,'Brøndby',1);
INSERT INTO fkg.d_basis_postnr VALUES (2660,'Brøndby Strand',1);
INSERT INTO fkg.d_basis_postnr VALUES (2600,'Glostrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (2650,'Hvidovre',1);
INSERT INTO fkg.d_basis_postnr VALUES (2620,'Albertslund',1);
INSERT INTO fkg.d_basis_postnr VALUES (2791,'Dragør',1);
INSERT INTO fkg.d_basis_postnr VALUES (2820,'Gentofte',1);
INSERT INTO fkg.d_basis_postnr VALUES (2870,'Dyssegård',1);
INSERT INTO fkg.d_basis_postnr VALUES (2930,'Klampenborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (2920,'Charlottenlund',1);
INSERT INTO fkg.d_basis_postnr VALUES (2800,'Kongens Lyngby',1);
INSERT INTO fkg.d_basis_postnr VALUES (2880,'Bagsværd',1);
INSERT INTO fkg.d_basis_postnr VALUES (2640,'Hedehusene',1);
INSERT INTO fkg.d_basis_postnr VALUES (4000,'Roskilde',1);
INSERT INTO fkg.d_basis_postnr VALUES (2630,'Taastrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (2635,'Ishøj',1);
INSERT INTO fkg.d_basis_postnr VALUES (2830,'Virum',1);
INSERT INTO fkg.d_basis_postnr VALUES (2840,'Holte',1);
INSERT INTO fkg.d_basis_postnr VALUES (2665,'Vallensbæk Strand',1);
INSERT INTO fkg.d_basis_postnr VALUES (2625,'Vallensbæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (3520,'Farum',1);
INSERT INTO fkg.d_basis_postnr VALUES (3460,'Birkerød',1);
INSERT INTO fkg.d_basis_postnr VALUES (3540,'Lynge',1);
INSERT INTO fkg.d_basis_postnr VALUES (3450,'Allerød',1);
INSERT INTO fkg.d_basis_postnr VALUES (3400,'Hillerød',1);
INSERT INTO fkg.d_basis_postnr VALUES (3550,'Slangerup',1);
INSERT INTO fkg.d_basis_postnr VALUES (2990,'Nivå',1);
INSERT INTO fkg.d_basis_postnr VALUES (3050,'Humlebæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (2980,'Kokkedal',1);
INSERT INTO fkg.d_basis_postnr VALUES (3480,'Fredensborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (3490,'Kvistgård',1);
INSERT INTO fkg.d_basis_postnr VALUES (3060,'Espergærde',1);
INSERT INTO fkg.d_basis_postnr VALUES (2970,'Hørsholm',1);
INSERT INTO fkg.d_basis_postnr VALUES (3000,'Helsingør',1);
INSERT INTO fkg.d_basis_postnr VALUES (3100,'Hornbæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (3140,'Ålsgårde',1);
INSERT INTO fkg.d_basis_postnr VALUES (3080,'Tikøb',1);
INSERT INTO fkg.d_basis_postnr VALUES (3070,'Snekkersten',1);
INSERT INTO fkg.d_basis_postnr VALUES (3150,'Hellebæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (3230,'Græsted',1);
INSERT INTO fkg.d_basis_postnr VALUES (3320,'Skævinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (3200,'Helsinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (3330,'Gørløse',1);
INSERT INTO fkg.d_basis_postnr VALUES (3600,'Frederikssund',1);
INSERT INTO fkg.d_basis_postnr VALUES (3310,'Ølsted',1);
INSERT INTO fkg.d_basis_postnr VALUES (2960,'Rungsted Kyst',1);
INSERT INTO fkg.d_basis_postnr VALUES (2950,'Vedbæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (2850,'Nærum',1);
INSERT INTO fkg.d_basis_postnr VALUES (2942,'Skodsborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (3650,'Ølstykke',1);
INSERT INTO fkg.d_basis_postnr VALUES (2765,'Smørum',1);
INSERT INTO fkg.d_basis_postnr VALUES (3660,'Stenløse',1);
INSERT INTO fkg.d_basis_postnr VALUES (3670,'Veksø Sjælland',1);
INSERT INTO fkg.d_basis_postnr VALUES (3630,'Jægerspris',1);
INSERT INTO fkg.d_basis_postnr VALUES (4050,'Skibby',1);
INSERT INTO fkg.d_basis_postnr VALUES (2690,'Karlslunde',1);
INSERT INTO fkg.d_basis_postnr VALUES (2670,'Greve',1);
INSERT INTO fkg.d_basis_postnr VALUES (4030,'Tune',1);
INSERT INTO fkg.d_basis_postnr VALUES (4600,'Køge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4100,'Ringsted',1);
INSERT INTO fkg.d_basis_postnr VALUES (4140,'Borup',1);
INSERT INTO fkg.d_basis_postnr VALUES (4632,'Bjæverskov',1);
INSERT INTO fkg.d_basis_postnr VALUES (4623,'Lille Skensved',1);
INSERT INTO fkg.d_basis_postnr VALUES (4681,'Herfølge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4682,'Tureby',1);
INSERT INTO fkg.d_basis_postnr VALUES (4130,'Viby Sjælland',1);
INSERT INTO fkg.d_basis_postnr VALUES (4320,'Lejre',1);
INSERT INTO fkg.d_basis_postnr VALUES (4174,'Jystrup Midtsj',1);
INSERT INTO fkg.d_basis_postnr VALUES (3390,'Hundested',1);
INSERT INTO fkg.d_basis_postnr VALUES (3370,'Melby',1);
INSERT INTO fkg.d_basis_postnr VALUES (3300,'Frederiksværk',1);
INSERT INTO fkg.d_basis_postnr VALUES (3360,'Liseleje',1);
INSERT INTO fkg.d_basis_postnr VALUES (4621,'Gadstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (4040,'Jyllinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4622,'Havdrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (2680,'Solrød Strand',1);
INSERT INTO fkg.d_basis_postnr VALUES (3250,'Gilleleje',1);
INSERT INTO fkg.d_basis_postnr VALUES (3220,'Tisvildeleje',1);
INSERT INTO fkg.d_basis_postnr VALUES (3210,'Vejby',1);
INSERT INTO fkg.d_basis_postnr VALUES (3120,'Dronningmølle',1);
INSERT INTO fkg.d_basis_postnr VALUES (4571,'Grevinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4500,'Nykøbing Sj',1);
INSERT INTO fkg.d_basis_postnr VALUES (4550,'Asnæs',1);
INSERT INTO fkg.d_basis_postnr VALUES (4540,'Fårevejle',1);
INSERT INTO fkg.d_basis_postnr VALUES (4581,'Rørvig',1);
INSERT INTO fkg.d_basis_postnr VALUES (4573,'Højby',1);
INSERT INTO fkg.d_basis_postnr VALUES (4534,'Hørve',1);
INSERT INTO fkg.d_basis_postnr VALUES (4560,'Vig',1);
INSERT INTO fkg.d_basis_postnr VALUES (4583,'Sjællands Odde',1);
INSERT INTO fkg.d_basis_postnr VALUES (4572,'Nørre Asmindrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (4591,'Føllenslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (4300,'Holbæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (4420,'Regstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (4520,'Svinninge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4390,'Vipperød',1);
INSERT INTO fkg.d_basis_postnr VALUES (4440,'Mørkøv',1);
INSERT INTO fkg.d_basis_postnr VALUES (4532,'Gislinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4450,'Jyderup',1);
INSERT INTO fkg.d_basis_postnr VALUES (4360,'Kirke Eskilstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (4370,'Store Merløse',1);
INSERT INTO fkg.d_basis_postnr VALUES (4340,'Tølløse',1);
INSERT INTO fkg.d_basis_postnr VALUES (4350,'Ugerløse',1);
INSERT INTO fkg.d_basis_postnr VALUES (4460,'Snertinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4330,'Hvalsø',1);
INSERT INTO fkg.d_basis_postnr VALUES (4295,'Stenlille',1);
INSERT INTO fkg.d_basis_postnr VALUES (4296,'Nyrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (4470,'Svebølle',1);
INSERT INTO fkg.d_basis_postnr VALUES (4690,'Haslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (4653,'Karise',1);
INSERT INTO fkg.d_basis_postnr VALUES (4640,'Faxe',1);
INSERT INTO fkg.d_basis_postnr VALUES (4654,'Faxe Ladeplads',1);
INSERT INTO fkg.d_basis_postnr VALUES (4683,'Rønnede',1);
INSERT INTO fkg.d_basis_postnr VALUES (4733,'Tappernøje',1);
INSERT INTO fkg.d_basis_postnr VALUES (4160,'Herlufmagle',1);
INSERT INTO fkg.d_basis_postnr VALUES (4684,'Holmegaard',1);
INSERT INTO fkg.d_basis_postnr VALUES (4652,'Hårlev',1);
INSERT INTO fkg.d_basis_postnr VALUES (4400,'Kalundborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (4480,'Store Fuglede',1);
INSERT INTO fkg.d_basis_postnr VALUES (4281,'Gørlev',1);
INSERT INTO fkg.d_basis_postnr VALUES (4200,'Slagelse',1);
INSERT INTO fkg.d_basis_postnr VALUES (4270,'Høng',1);
INSERT INTO fkg.d_basis_postnr VALUES (4592,'Sejerø',1);
INSERT INTO fkg.d_basis_postnr VALUES (4490,'Jerslev Sjælland',1);
INSERT INTO fkg.d_basis_postnr VALUES (4291,'Ruds Vedby',1);
INSERT INTO fkg.d_basis_postnr VALUES (4593,'Eskebjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (4293,'Dianalund',1);
INSERT INTO fkg.d_basis_postnr VALUES (4173,'Fjenneslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (4180,'Sorø',1);
INSERT INTO fkg.d_basis_postnr VALUES (4220,'Korsør',1);
INSERT INTO fkg.d_basis_postnr VALUES (4261,'Dalmose',1);
INSERT INTO fkg.d_basis_postnr VALUES (4230,'Skælskør',1);
INSERT INTO fkg.d_basis_postnr VALUES (4241,'Vemmelev',1);
INSERT INTO fkg.d_basis_postnr VALUES (4190,'Munke Bjergby',1);
INSERT INTO fkg.d_basis_postnr VALUES (4242,'Boeslunde',1);
INSERT INTO fkg.d_basis_postnr VALUES (4243,'Rude',1);
INSERT INTO fkg.d_basis_postnr VALUES (4250,'Fuglebjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (4262,'Sandved',1);
INSERT INTO fkg.d_basis_postnr VALUES (4660,'Store Heddinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4672,'Klippinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4673,'Rødvig Stevns',1);
INSERT INTO fkg.d_basis_postnr VALUES (4671,'Strøby',1);
INSERT INTO fkg.d_basis_postnr VALUES (4070,'Kirke Hyllinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4060,'Kirke Såby',1);
INSERT INTO fkg.d_basis_postnr VALUES (4920,'Søllested',1);
INSERT INTO fkg.d_basis_postnr VALUES (4930,'Maribo',1);
INSERT INTO fkg.d_basis_postnr VALUES (4952,'Stokkemarke',1);
INSERT INTO fkg.d_basis_postnr VALUES (4900,'Nakskov',1);
INSERT INTO fkg.d_basis_postnr VALUES (4913,'Horslunde',1);
INSERT INTO fkg.d_basis_postnr VALUES (4983,'Dannemare',1);
INSERT INTO fkg.d_basis_postnr VALUES (4970,'Rødby',1);
INSERT INTO fkg.d_basis_postnr VALUES (4943,'Torrig L',1);
INSERT INTO fkg.d_basis_postnr VALUES (4941,'Bandholm',1);
INSERT INTO fkg.d_basis_postnr VALUES (4960,'Holeby',1);
INSERT INTO fkg.d_basis_postnr VALUES (4895,'Errindlev',1);
INSERT INTO fkg.d_basis_postnr VALUES (4944,'Fejø',1);
INSERT INTO fkg.d_basis_postnr VALUES (4953,'Vesterborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (4912,'Harpelunde',1);
INSERT INTO fkg.d_basis_postnr VALUES (4894,'Øster Ulslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (4951,'Nørreballe',1);
INSERT INTO fkg.d_basis_postnr VALUES (4171,'Glumsø',1);
INSERT INTO fkg.d_basis_postnr VALUES (4700,'Næstved',1);
INSERT INTO fkg.d_basis_postnr VALUES (4736,'Karrebæksminde',1);
INSERT INTO fkg.d_basis_postnr VALUES (4750,'Lundby',1);
INSERT INTO fkg.d_basis_postnr VALUES (4840,'Nørre Alslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (4873,'Væggerløse',1);
INSERT INTO fkg.d_basis_postnr VALUES (4990,'Sakskøbing',1);
INSERT INTO fkg.d_basis_postnr VALUES (4874,'Gedser',1);
INSERT INTO fkg.d_basis_postnr VALUES (4850,'Stubbekøbing',1);
INSERT INTO fkg.d_basis_postnr VALUES (4800,'Nykøbing F',1);
INSERT INTO fkg.d_basis_postnr VALUES (4863,'Eskilstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (4880,'Nysted',1);
INSERT INTO fkg.d_basis_postnr VALUES (4872,'Idestrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (4891,'Toreby L',1);
INSERT INTO fkg.d_basis_postnr VALUES (4871,'Horbelev',1);
INSERT INTO fkg.d_basis_postnr VALUES (4892,'Kettinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (4862,'Guldborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (4780,'Stege',1);
INSERT INTO fkg.d_basis_postnr VALUES (4773,'Stensved',1);
INSERT INTO fkg.d_basis_postnr VALUES (4760,'Vordingborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (4791,'Borre',1);
INSERT INTO fkg.d_basis_postnr VALUES (4735,'Mern',1);
INSERT INTO fkg.d_basis_postnr VALUES (4720,'Præstø',1);
INSERT INTO fkg.d_basis_postnr VALUES (4793,'Bogø By',1);
INSERT INTO fkg.d_basis_postnr VALUES (4772,'Langebæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (4792,'Askeby',1);
INSERT INTO fkg.d_basis_postnr VALUES (4771,'Kalvehave',1);
INSERT INTO fkg.d_basis_postnr VALUES (3770,'Allinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (3782,'Klemensker',1);
INSERT INTO fkg.d_basis_postnr VALUES (3720,'Aakirkeby',1);
INSERT INTO fkg.d_basis_postnr VALUES (3740,'Svaneke',1);
INSERT INTO fkg.d_basis_postnr VALUES (3700,'Rønne',1);
INSERT INTO fkg.d_basis_postnr VALUES (3790,'Hasle',1);
INSERT INTO fkg.d_basis_postnr VALUES (3730,'Nexø',1);
INSERT INTO fkg.d_basis_postnr VALUES (3760,'Gudhjem',1);
INSERT INTO fkg.d_basis_postnr VALUES (3751,'Østermarie',1);
INSERT INTO fkg.d_basis_postnr VALUES (5580,'Nørre Aaby',1);
INSERT INTO fkg.d_basis_postnr VALUES (5592,'Ejby',1);
INSERT INTO fkg.d_basis_postnr VALUES (5500,'Middelfart',1);
INSERT INTO fkg.d_basis_postnr VALUES (5464,'Brenderup Fyn',1);
INSERT INTO fkg.d_basis_postnr VALUES (5463,'Harndrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5466,'Asperup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5591,'Gelsted',1);
INSERT INTO fkg.d_basis_postnr VALUES (5560,'Aarup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5610,'Assens',1);
INSERT INTO fkg.d_basis_postnr VALUES (5492,'Vissenbjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (5690,'Tommerup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5631,'Ebberup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5620,'Glamsbjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (5683,'Haarby',1);
INSERT INTO fkg.d_basis_postnr VALUES (5642,'Millinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (5600,'Faaborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (5750,'Ringe',1);
INSERT INTO fkg.d_basis_postnr VALUES (5792,'Årslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (5672,'Broby',1);
INSERT INTO fkg.d_basis_postnr VALUES (5854,'Gislev',1);
INSERT INTO fkg.d_basis_postnr VALUES (5772,'Kværndrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5863,'Ferritslev Fyn',1);
INSERT INTO fkg.d_basis_postnr VALUES (5762,'Vester Skerninge',1);
INSERT INTO fkg.d_basis_postnr VALUES (5856,'Ryslinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (5550,'Langeskov',1);
INSERT INTO fkg.d_basis_postnr VALUES (5853,'Ørbæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (5771,'Stenstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5300,'Kerteminde',1);
INSERT INTO fkg.d_basis_postnr VALUES (5330,'Munkebo',1);
INSERT INTO fkg.d_basis_postnr VALUES (5380,'Dalby',1);
INSERT INTO fkg.d_basis_postnr VALUES (5390,'Martofte',1);
INSERT INTO fkg.d_basis_postnr VALUES (5290,'Marslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (5370,'Mesinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (5350,'Rynkeby',1);
INSERT INTO fkg.d_basis_postnr VALUES (5540,'Ullerslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (5800,'Nyborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (5871,'Frørup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5874,'Hesselager',1);
INSERT INTO fkg.d_basis_postnr VALUES (5230,'Odense M',1);
INSERT INTO fkg.d_basis_postnr VALUES (5270,'Odense N',1);
INSERT INTO fkg.d_basis_postnr VALUES (5000,'Odense C',1);
INSERT INTO fkg.d_basis_postnr VALUES (5320,'Agedrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5220,'Odense SØ',1);
INSERT INTO fkg.d_basis_postnr VALUES (5250,'Odense SV',1);
INSERT INTO fkg.d_basis_postnr VALUES (5491,'Blommenslyst',1);
INSERT INTO fkg.d_basis_postnr VALUES (5210,'Odense NV',1);
INSERT INTO fkg.d_basis_postnr VALUES (5240,'Odense NØ',1);
INSERT INTO fkg.d_basis_postnr VALUES (5260,'Odense S',1);
INSERT INTO fkg.d_basis_postnr VALUES (5200,'Odense V',1);
INSERT INTO fkg.d_basis_postnr VALUES (5881,'Skårup Fyn',1);
INSERT INTO fkg.d_basis_postnr VALUES (5700,'Svendborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (5884,'Gudme',1);
INSERT INTO fkg.d_basis_postnr VALUES (5892,'Gudbjerg Sydfyn',1);
INSERT INTO fkg.d_basis_postnr VALUES (5883,'Oure',1);
INSERT INTO fkg.d_basis_postnr VALUES (5882,'Vejstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5450,'Otterup',1);
INSERT INTO fkg.d_basis_postnr VALUES (5462,'Morud',1);
INSERT INTO fkg.d_basis_postnr VALUES (5471,'Søndersø',1);
INSERT INTO fkg.d_basis_postnr VALUES (5400,'Bogense',1);
INSERT INTO fkg.d_basis_postnr VALUES (5474,'Veflinge',1);
INSERT INTO fkg.d_basis_postnr VALUES (5485,'Skamby',1);
INSERT INTO fkg.d_basis_postnr VALUES (5900,'Rudkøbing',1);
INSERT INTO fkg.d_basis_postnr VALUES (5953,'Tranekær',1);
INSERT INTO fkg.d_basis_postnr VALUES (5932,'Humble',1);
INSERT INTO fkg.d_basis_postnr VALUES (5935,'Bagenkop',1);
INSERT INTO fkg.d_basis_postnr VALUES (5970,'Ærøskøbing',1);
INSERT INTO fkg.d_basis_postnr VALUES (5960,'Marstal',1);
INSERT INTO fkg.d_basis_postnr VALUES (5985,'Søby Ærø',1);
INSERT INTO fkg.d_basis_postnr VALUES (6100,'Haderslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (6500,'Vojens',1);
INSERT INTO fkg.d_basis_postnr VALUES (6541,'Bevtoft',1);
INSERT INTO fkg.d_basis_postnr VALUES (6510,'Gram',1);
INSERT INTO fkg.d_basis_postnr VALUES (6070,'Christiansfeld',1);
INSERT INTO fkg.d_basis_postnr VALUES (6560,'Sommersted',1);
INSERT INTO fkg.d_basis_postnr VALUES (6520,'Toftlund',1);
INSERT INTO fkg.d_basis_postnr VALUES (6534,'Agerskov',1);
INSERT INTO fkg.d_basis_postnr VALUES (6630,'Rødding',1);
INSERT INTO fkg.d_basis_postnr VALUES (6094,'Hejls',1);
INSERT INTO fkg.d_basis_postnr VALUES (7190,'Billund',1);
INSERT INTO fkg.d_basis_postnr VALUES (7200,'Grindsted',1);
INSERT INTO fkg.d_basis_postnr VALUES (7250,'Hejnsvig',1);
INSERT INTO fkg.d_basis_postnr VALUES (7260,'Sønder Omme',1);
INSERT INTO fkg.d_basis_postnr VALUES (6623,'Vorbasse',1);
INSERT INTO fkg.d_basis_postnr VALUES (6823,'Ansager',1);
INSERT INTO fkg.d_basis_postnr VALUES (7270,'Stakroge',1);
INSERT INTO fkg.d_basis_postnr VALUES (6682,'Hovborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (6400,'Sønderborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (6430,'Nordborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (6440,'Augustenborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (6300,'Gråsten',1);
INSERT INTO fkg.d_basis_postnr VALUES (6470,'Sydals',1);
INSERT INTO fkg.d_basis_postnr VALUES (6310,'Broager',1);
INSERT INTO fkg.d_basis_postnr VALUES (6320,'Egernsund',1);
INSERT INTO fkg.d_basis_postnr VALUES (6270,'Tønder',1);
INSERT INTO fkg.d_basis_postnr VALUES (6240,'Løgumkloster',1);
INSERT INTO fkg.d_basis_postnr VALUES (6261,'Bredebro',1);
INSERT INTO fkg.d_basis_postnr VALUES (6280,'Højer',1);
INSERT INTO fkg.d_basis_postnr VALUES (6780,'Skærbæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (6792,'Rømø',1);
INSERT INTO fkg.d_basis_postnr VALUES (6535,'Branderup J',1);
INSERT INTO fkg.d_basis_postnr VALUES (6705,'Esbjerg Ø',1);
INSERT INTO fkg.d_basis_postnr VALUES (6760,'Ribe',1);
INSERT INTO fkg.d_basis_postnr VALUES (6710,'Esbjerg V',1);
INSERT INTO fkg.d_basis_postnr VALUES (6700,'Esbjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (6771,'Gredstedbro',1);
INSERT INTO fkg.d_basis_postnr VALUES (6740,'Bramming',1);
INSERT INTO fkg.d_basis_postnr VALUES (6715,'Esbjerg N',1);
INSERT INTO fkg.d_basis_postnr VALUES (6690,'Gørding',1);
INSERT INTO fkg.d_basis_postnr VALUES (6731,'Tjæreborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (6818,'Årre',1);
INSERT INTO fkg.d_basis_postnr VALUES (6670,'Holsted',1);
INSERT INTO fkg.d_basis_postnr VALUES (6683,'Føvling',1);
INSERT INTO fkg.d_basis_postnr VALUES (6720,'Fanø',1);
INSERT INTO fkg.d_basis_postnr VALUES (6855,'Outrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (6800,'Varde',1);
INSERT INTO fkg.d_basis_postnr VALUES (6870,'Ølgod',1);
INSERT INTO fkg.d_basis_postnr VALUES (6854,'Henne',1);
INSERT INTO fkg.d_basis_postnr VALUES (6830,'Nørre Nebel',1);
INSERT INTO fkg.d_basis_postnr VALUES (6840,'Oksbøl',1);
INSERT INTO fkg.d_basis_postnr VALUES (6857,'Blåvand',1);
INSERT INTO fkg.d_basis_postnr VALUES (6851,'Janderup Vestj',1);
INSERT INTO fkg.d_basis_postnr VALUES (6853,'Vejers Strand',1);
INSERT INTO fkg.d_basis_postnr VALUES (6852,'Billum',1);
INSERT INTO fkg.d_basis_postnr VALUES (6753,'Agerbæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (6862,'Tistrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (6880,'Tarm',1);
INSERT INTO fkg.d_basis_postnr VALUES (6650,'Brørup',1);
INSERT INTO fkg.d_basis_postnr VALUES (6600,'Vejen',1);
INSERT INTO fkg.d_basis_postnr VALUES (6621,'Gesten',1);
INSERT INTO fkg.d_basis_postnr VALUES (6752,'Glejbjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (6622,'Bække',1);
INSERT INTO fkg.d_basis_postnr VALUES (6660,'Lintrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (6340,'Kruså',1);
INSERT INTO fkg.d_basis_postnr VALUES (6200,'Aabenraa',1);
INSERT INTO fkg.d_basis_postnr VALUES (6372,'Bylderup-Bov',1);
INSERT INTO fkg.d_basis_postnr VALUES (6230,'Rødekro',1);
INSERT INTO fkg.d_basis_postnr VALUES (6330,'Padborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (6360,'Tinglev',1);
INSERT INTO fkg.d_basis_postnr VALUES (6392,'Bolderslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (7000,'Fredericia',1);
INSERT INTO fkg.d_basis_postnr VALUES (8700,'Horsens',1);
INSERT INTO fkg.d_basis_postnr VALUES (8740,'Brædstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8752,'Østbirk',1);
INSERT INTO fkg.d_basis_postnr VALUES (8751,'Gedved',1);
INSERT INTO fkg.d_basis_postnr VALUES (8781,'Stenderup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8732,'Hovedgård',1);
INSERT INTO fkg.d_basis_postnr VALUES (8765,'Klovborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (8660,'Skanderborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (8654,'Bryrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8762,'Flemming',1);
INSERT INTO fkg.d_basis_postnr VALUES (8783,'Hornsyld',1);
INSERT INTO fkg.d_basis_postnr VALUES (8680,'Ry',1);
INSERT INTO fkg.d_basis_postnr VALUES (6000,'Kolding',1);
INSERT INTO fkg.d_basis_postnr VALUES (6064,'Jordrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (6640,'Lunderskov',1);
INSERT INTO fkg.d_basis_postnr VALUES (6091,'Bjert',1);
INSERT INTO fkg.d_basis_postnr VALUES (6580,'Vamdrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (6040,'Egtved',1);
INSERT INTO fkg.d_basis_postnr VALUES (6051,'Almind',1);
INSERT INTO fkg.d_basis_postnr VALUES (6093,'Sjølund',1);
INSERT INTO fkg.d_basis_postnr VALUES (6092,'Sønder Stenderup',1);
INSERT INTO fkg.d_basis_postnr VALUES (6052,'Viuf',1);
INSERT INTO fkg.d_basis_postnr VALUES (7182,'Bredsten',1);
INSERT INTO fkg.d_basis_postnr VALUES (7120,'Vejle Øst',1);
INSERT INTO fkg.d_basis_postnr VALUES (7080,'Børkop',1);
INSERT INTO fkg.d_basis_postnr VALUES (7183,'Randbøl',1);
INSERT INTO fkg.d_basis_postnr VALUES (7100,'Vejle',1);
INSERT INTO fkg.d_basis_postnr VALUES (7321,'Gadbjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (7300,'Jelling',1);
INSERT INTO fkg.d_basis_postnr VALUES (7323,'Give',1);
INSERT INTO fkg.d_basis_postnr VALUES (7184,'Vandel',1);
INSERT INTO fkg.d_basis_postnr VALUES (7173,'Vonge',1);
INSERT INTO fkg.d_basis_postnr VALUES (7330,'Brande',1);
INSERT INTO fkg.d_basis_postnr VALUES (7160,'Tørring',1);
INSERT INTO fkg.d_basis_postnr VALUES (8721,'Daugård',1);
INSERT INTO fkg.d_basis_postnr VALUES (7361,'Ejstrupholm',1);
INSERT INTO fkg.d_basis_postnr VALUES (7400,'Herning',1);
INSERT INTO fkg.d_basis_postnr VALUES (6933,'Kibæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (7540,'Haderup',1);
INSERT INTO fkg.d_basis_postnr VALUES (7550,'Sørvad',1);
INSERT INTO fkg.d_basis_postnr VALUES (7490,'Aulum',1);
INSERT INTO fkg.d_basis_postnr VALUES (7480,'Vildbjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (7500,'Holstebro',1);
INSERT INTO fkg.d_basis_postnr VALUES (7451,'Sunds',1);
INSERT INTO fkg.d_basis_postnr VALUES (7280,'Sønder Felding',1);
INSERT INTO fkg.d_basis_postnr VALUES (6973,'Ørnhøj',1);
INSERT INTO fkg.d_basis_postnr VALUES (7470,'Karup J',1);
INSERT INTO fkg.d_basis_postnr VALUES (6990,'Ulfborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (7830,'Vinderup',1);
INSERT INTO fkg.d_basis_postnr VALUES (7800,'Skive',1);
INSERT INTO fkg.d_basis_postnr VALUES (7570,'Vemb',1);
INSERT INTO fkg.d_basis_postnr VALUES (7600,'Struer',1);
INSERT INTO fkg.d_basis_postnr VALUES (7560,'Hjerm',1);
INSERT INTO fkg.d_basis_postnr VALUES (7673,'Harboøre',1);
INSERT INTO fkg.d_basis_postnr VALUES (7620,'Lemvig',1);
INSERT INTO fkg.d_basis_postnr VALUES (7650,'Bøvlingbjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (7660,'Bækmarksbro',1);
INSERT INTO fkg.d_basis_postnr VALUES (7680,'Thyborøn',1);
INSERT INTO fkg.d_basis_postnr VALUES (7790,'Thyholm',1);
INSERT INTO fkg.d_basis_postnr VALUES (7760,'Hurup Thy',1);
INSERT INTO fkg.d_basis_postnr VALUES (8420,'Knebel',1);
INSERT INTO fkg.d_basis_postnr VALUES (8400,'Ebeltoft',1);
INSERT INTO fkg.d_basis_postnr VALUES (8444,'Balle',1);
INSERT INTO fkg.d_basis_postnr VALUES (8550,'Ryomgård',1);
INSERT INTO fkg.d_basis_postnr VALUES (8410,'Rønde',1);
INSERT INTO fkg.d_basis_postnr VALUES (8560,'Kolind',1);
INSERT INTO fkg.d_basis_postnr VALUES (8543,'Hornslet',1);
INSERT INTO fkg.d_basis_postnr VALUES (8581,'Nimtofte',1);
INSERT INTO fkg.d_basis_postnr VALUES (8544,'Mørke',1);
INSERT INTO fkg.d_basis_postnr VALUES (8963,'Auning',1);
INSERT INTO fkg.d_basis_postnr VALUES (8570,'Trustrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8370,'Hadsten',1);
INSERT INTO fkg.d_basis_postnr VALUES (8500,'Grenaa',1);
INSERT INTO fkg.d_basis_postnr VALUES (8585,'Glesborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (8586,'Ørum Djurs',1);
INSERT INTO fkg.d_basis_postnr VALUES (8592,'Anholt',1);
INSERT INTO fkg.d_basis_postnr VALUES (8961,'Allingåbro',1);
INSERT INTO fkg.d_basis_postnr VALUES (8950,'Ørsted',1);
INSERT INTO fkg.d_basis_postnr VALUES (8450,'Hammel',1);
INSERT INTO fkg.d_basis_postnr VALUES (8860,'Ulstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8382,'Hinnerup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8881,'Thorsø',1);
INSERT INTO fkg.d_basis_postnr VALUES (8471,'Sabro',1);
INSERT INTO fkg.d_basis_postnr VALUES (8870,'Langå',1);
INSERT INTO fkg.d_basis_postnr VALUES (8472,'Sporup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8641,'Sorring',1);
INSERT INTO fkg.d_basis_postnr VALUES (8850,'Bjerringbro',1);
INSERT INTO fkg.d_basis_postnr VALUES (8882,'Fårvang',1);
INSERT INTO fkg.d_basis_postnr VALUES (8940,'Randers SV',1);
INSERT INTO fkg.d_basis_postnr VALUES (8380,'Trige',1);
INSERT INTO fkg.d_basis_postnr VALUES (8960,'Randers SØ',1);
INSERT INTO fkg.d_basis_postnr VALUES (8300,'Odder',1);
INSERT INTO fkg.d_basis_postnr VALUES (8350,'Hundslund',1);
INSERT INTO fkg.d_basis_postnr VALUES (8340,'Malling',1);
INSERT INTO fkg.d_basis_postnr VALUES (8920,'Randers NV',1);
INSERT INTO fkg.d_basis_postnr VALUES (8990,'Fårup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8930,'Randers NØ',1);
INSERT INTO fkg.d_basis_postnr VALUES (8900,'Randers C',1);
INSERT INTO fkg.d_basis_postnr VALUES (8983,'Gjerlev J',1);
INSERT INTO fkg.d_basis_postnr VALUES (8981,'Spentrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8970,'Havndal',1);
INSERT INTO fkg.d_basis_postnr VALUES (9550,'Mariager',1);
INSERT INTO fkg.d_basis_postnr VALUES (8653,'Them',1);
INSERT INTO fkg.d_basis_postnr VALUES (8620,'Kjellerup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8600,'Silkeborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (8643,'Ans By',1);
INSERT INTO fkg.d_basis_postnr VALUES (8632,'Lemming',1);
INSERT INTO fkg.d_basis_postnr VALUES (7442,'Engesvang',1);
INSERT INTO fkg.d_basis_postnr VALUES (8883,'Gjern',1);
INSERT INTO fkg.d_basis_postnr VALUES (7441,'Bording',1);
INSERT INTO fkg.d_basis_postnr VALUES (8840,'Rødkærsbro',1);
INSERT INTO fkg.d_basis_postnr VALUES (7362,'Hampen',1);
INSERT INTO fkg.d_basis_postnr VALUES (8670,'Låsby',1);
INSERT INTO fkg.d_basis_postnr VALUES (8800,'Viborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (8305,'Samsø',1);
INSERT INTO fkg.d_basis_postnr VALUES (8464,'Galten',1);
INSERT INTO fkg.d_basis_postnr VALUES (8362,'Hørning',1);
INSERT INTO fkg.d_basis_postnr VALUES (8210,'Aarhus V',1);
INSERT INTO fkg.d_basis_postnr VALUES (8520,'Lystrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8230,'Åbyhøj',1);
INSERT INTO fkg.d_basis_postnr VALUES (8541,'Skødstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (8220,'Brabrand',1);
INSERT INTO fkg.d_basis_postnr VALUES (8310,'Tranbjerg J',1);
INSERT INTO fkg.d_basis_postnr VALUES (8270,'Højbjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (8320,'Mårslet',1);
INSERT INTO fkg.d_basis_postnr VALUES (8462,'Harlev J',1);
INSERT INTO fkg.d_basis_postnr VALUES (8240,'Risskov',1);
INSERT INTO fkg.d_basis_postnr VALUES (8530,'Hjortshøj',1);
INSERT INTO fkg.d_basis_postnr VALUES (8000,'Aarhus C',1);
INSERT INTO fkg.d_basis_postnr VALUES (8381,'Tilst',1);
INSERT INTO fkg.d_basis_postnr VALUES (8200,'Aarhus N',1);
INSERT INTO fkg.d_basis_postnr VALUES (8355,'Solbjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (8250,'Egå',1);
INSERT INTO fkg.d_basis_postnr VALUES (8260,'Viby J',1);
INSERT INTO fkg.d_basis_postnr VALUES (8361,'Hasselager',1);
INSERT INTO fkg.d_basis_postnr VALUES (8330,'Beder',1);
INSERT INTO fkg.d_basis_postnr VALUES (9999,'Ukendt',1);
INSERT INTO fkg.d_basis_postnr VALUES (7430,'Ikast',1);
INSERT INTO fkg.d_basis_postnr VALUES (8766,'Nørre Snede',1);
INSERT INTO fkg.d_basis_postnr VALUES (6950,'Ringkøbing',1);
INSERT INTO fkg.d_basis_postnr VALUES (6971,'Spjald',1);
INSERT INTO fkg.d_basis_postnr VALUES (6900,'Skjern',1);
INSERT INTO fkg.d_basis_postnr VALUES (6960,'Hvide Sande',1);
INSERT INTO fkg.d_basis_postnr VALUES (6980,'Tim',1);
INSERT INTO fkg.d_basis_postnr VALUES (6920,'Videbæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (6893,'Hemmet',1);
INSERT INTO fkg.d_basis_postnr VALUES (6940,'Lem St',1);
INSERT INTO fkg.d_basis_postnr VALUES (8722,'Hedensted',1);
INSERT INTO fkg.d_basis_postnr VALUES (7171,'Uldum',1);
INSERT INTO fkg.d_basis_postnr VALUES (7130,'Juelsminde',1);
INSERT INTO fkg.d_basis_postnr VALUES (8723,'Løsning',1);
INSERT INTO fkg.d_basis_postnr VALUES (8763,'Rask Mølle',1);
INSERT INTO fkg.d_basis_postnr VALUES (7150,'Barrit',1);
INSERT INTO fkg.d_basis_postnr VALUES (7140,'Stouby',1);
INSERT INTO fkg.d_basis_postnr VALUES (7900,'Nykøbing M',1);
INSERT INTO fkg.d_basis_postnr VALUES (7960,'Karby',1);
INSERT INTO fkg.d_basis_postnr VALUES (7950,'Erslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (7980,'Vils',1);
INSERT INTO fkg.d_basis_postnr VALUES (7990,'Øster Assels',1);
INSERT INTO fkg.d_basis_postnr VALUES (7970,'Redsted M',1);
INSERT INTO fkg.d_basis_postnr VALUES (7870,'Roslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (7840,'Højslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (7860,'Spøttrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (7884,'Fur',1);
INSERT INTO fkg.d_basis_postnr VALUES (7700,'Thisted',1);
INSERT INTO fkg.d_basis_postnr VALUES (7755,'Bedsted Thy',1);
INSERT INTO fkg.d_basis_postnr VALUES (7770,'Vestervig',1);
INSERT INTO fkg.d_basis_postnr VALUES (7741,'Frøstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (7730,'Hanstholm',1);
INSERT INTO fkg.d_basis_postnr VALUES (7752,'Snedsted',1);
INSERT INTO fkg.d_basis_postnr VALUES (7742,'Vesløs',1);
INSERT INTO fkg.d_basis_postnr VALUES (8830,'Tjele',1);
INSERT INTO fkg.d_basis_postnr VALUES (8831,'Løgstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (7850,'Stoholm Jyll',1);
INSERT INTO fkg.d_basis_postnr VALUES (8832,'Skals',1);
INSERT INTO fkg.d_basis_postnr VALUES (9620,'Aalestrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9632,'Møldrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9500,'Hobro',1);
INSERT INTO fkg.d_basis_postnr VALUES (9631,'Gedsted',1);
INSERT INTO fkg.d_basis_postnr VALUES (9740,'Jerslev J',1);
INSERT INTO fkg.d_basis_postnr VALUES (9330,'Dronninglund',1);
INSERT INTO fkg.d_basis_postnr VALUES (9700,'Brønderslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (9320,'Hjallerup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9340,'Asaa',1);
INSERT INTO fkg.d_basis_postnr VALUES (9750,'Østervrå',1);
INSERT INTO fkg.d_basis_postnr VALUES (9352,'Dybvad',1);
INSERT INTO fkg.d_basis_postnr VALUES (9370,'Hals',1);
INSERT INTO fkg.d_basis_postnr VALUES (9382,'Tylstrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9440,'Aabybro',1);
INSERT INTO fkg.d_basis_postnr VALUES (9760,'Vrå',1);
INSERT INTO fkg.d_basis_postnr VALUES (9480,'Løkken',1);
INSERT INTO fkg.d_basis_postnr VALUES (9380,'Vestbjerg',1);
INSERT INTO fkg.d_basis_postnr VALUES (9300,'Sæby',1);
INSERT INTO fkg.d_basis_postnr VALUES (9900,'Frederikshavn',1);
INSERT INTO fkg.d_basis_postnr VALUES (9990,'Skagen',1);
INSERT INTO fkg.d_basis_postnr VALUES (9982,'Ålbæk',1);
INSERT INTO fkg.d_basis_postnr VALUES (9970,'Strandby',1);
INSERT INTO fkg.d_basis_postnr VALUES (9981,'Jerup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9830,'Tårs',1);
INSERT INTO fkg.d_basis_postnr VALUES (9870,'Sindal',1);
INSERT INTO fkg.d_basis_postnr VALUES (9881,'Bindslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (9600,'Aars',1);
INSERT INTO fkg.d_basis_postnr VALUES (9640,'Farsø',1);
INSERT INTO fkg.d_basis_postnr VALUES (9670,'Løgstør',1);
INSERT INTO fkg.d_basis_postnr VALUES (9681,'Ranum',1);
INSERT INTO fkg.d_basis_postnr VALUES (9240,'Nibe',1);
INSERT INTO fkg.d_basis_postnr VALUES (9610,'Nørager',1);
INSERT INTO fkg.d_basis_postnr VALUES (9541,'Suldrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9940,'Læsø',1);
INSERT INTO fkg.d_basis_postnr VALUES (9520,'Skørping',1);
INSERT INTO fkg.d_basis_postnr VALUES (9530,'Støvring',1);
INSERT INTO fkg.d_basis_postnr VALUES (9575,'Terndrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9574,'Bælum',1);
INSERT INTO fkg.d_basis_postnr VALUES (9560,'Hadsund',1);
INSERT INTO fkg.d_basis_postnr VALUES (9260,'Gistrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9293,'Kongerslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (9230,'Svenstrup J',1);
INSERT INTO fkg.d_basis_postnr VALUES (9510,'Arden',1);
INSERT INTO fkg.d_basis_postnr VALUES (9690,'Fjerritslev',1);
INSERT INTO fkg.d_basis_postnr VALUES (9460,'Brovst',1);
INSERT INTO fkg.d_basis_postnr VALUES (9490,'Pandrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9492,'Blokhus',1);
INSERT INTO fkg.d_basis_postnr VALUES (9493,'Saltum',1);
INSERT INTO fkg.d_basis_postnr VALUES (9430,'Vadum',1);
INSERT INTO fkg.d_basis_postnr VALUES (9381,'Sulsted',1);
INSERT INTO fkg.d_basis_postnr VALUES (9210,'Aalborg SØ',1);
INSERT INTO fkg.d_basis_postnr VALUES (9220,'Aalborg Øst',1);
INSERT INTO fkg.d_basis_postnr VALUES (9270,'Klarup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9280,'Storvorde',1);
INSERT INTO fkg.d_basis_postnr VALUES (9000,'Aalborg',1);
INSERT INTO fkg.d_basis_postnr VALUES (9310,'Vodskov',1);
INSERT INTO fkg.d_basis_postnr VALUES (9362,'Gandrup',1);
INSERT INTO fkg.d_basis_postnr VALUES (9400,'Nørresundby',1);
INSERT INTO fkg.d_basis_postnr VALUES (9200,'Aalborg SV',1);
INSERT INTO fkg.d_basis_postnr VALUES (9800,'Hjørring',1);
INSERT INTO fkg.d_basis_postnr VALUES (9850,'Hirtshals',1);
-- Nye indsat v. 1.5:
INSERT INTO fkg.d_basis_postnr VALUES (1162,'København K',1);
INSERT INTO fkg.d_basis_postnr VALUES (4244,'Agersø',1);
INSERT INTO fkg.d_basis_postnr VALUES (4245,'Omø',1);
INSERT INTO fkg.d_basis_postnr VALUES (4305,'Orø',1);
INSERT INTO fkg.d_basis_postnr VALUES (4942,'Askø',1);
INSERT INTO fkg.d_basis_postnr VALUES (4945,'Femø',1);
INSERT INTO fkg.d_basis_postnr VALUES (5601,'Lyø',1);
INSERT INTO fkg.d_basis_postnr VALUES (5602,'Avernakø',1);
INSERT INTO fkg.d_basis_postnr VALUES (5603,'Bjørnø',1);
INSERT INTO fkg.d_basis_postnr VALUES (5943,'Strynø',1);
INSERT INTO fkg.d_basis_postnr VALUES (5965,'Birkholm',1);
INSERT INTO fkg.d_basis_postnr VALUES (6210,'Barsø',1);
INSERT INTO fkg.d_basis_postnr VALUES (8789,'Endelave',1);
INSERT INTO fkg.d_basis_postnr VALUES (8799,'Tunø',1);

-- SELECT * FROM d_basis_postnr;

INSERT INTO fkg.d_basis_funktionsstatus VALUES (1,'Planlagt',1,'Planlagt etableret');
INSERT INTO fkg.d_basis_funktionsstatus VALUES (2,'Under anlæg',1,'Under anlæg');
INSERT INTO fkg.d_basis_funktionsstatus VALUES (3,'Aktiv',1,'I drift');
INSERT INTO fkg.d_basis_funktionsstatus VALUES (4,'Midlertidig lukket',1,'Midlertidigt lukket/ude af drift');
INSERT INTO fkg.d_basis_funktionsstatus VALUES (5,'Lukket',1,'Lukket');
INSERT INTO fkg.d_basis_funktionsstatus VALUES (6,'Fjernet',1,'Fysisk fjernet');
INSERT INTO fkg.d_basis_funktionsstatus VALUES (8,'Andet',1,'Anden');
INSERT INTO fkg.d_basis_funktionsstatus VALUES (9,'Ukendt',1,'Mangler viden');
-- SELECT * FROM d_basis_funktionsstatus

INSERT INTO fkg.d_basis_magasin VALUES (1,'Primær',1,'Primær magasin');
INSERT INTO fkg.d_basis_magasin VALUES (2,'Sekundær',1,'Sekundær magasin');
INSERT INTO fkg.d_basis_magasin VALUES (9,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_basis_magasin

INSERT INTO fkg.d_basis_fors_omr_type VALUES (1,'Nuværende forsyningsområde',1,'Det område som vandværket forsyner i dag, udgøres af det område hvor der er nedgravet ledningsnet.');
INSERT INTO fkg.d_basis_fors_omr_type VALUES (2,'Naturlig  forsyningsområde',1,'Flade som er dækker det område hvor der er ledningsnet. I begrebet ligger, at det er et område som vandværker med sin nuværende kapacitet forventes umiddelbart at kunne forsyne.');
INSERT INTO fkg.d_basis_fors_omr_type VALUES (3,'Fremtidige forsyningsområde',1,'Det område som et vandværk må påregne at skulle forsyne inden for planperioden, når det er fuldt udbygget');
INSERT INTO fkg.d_basis_fors_omr_type VALUES (8,'Andet',1,'Andet');
INSERT INTO fkg.d_basis_fors_omr_type VALUES (9,'Ukendt',1,'Manglende viden');
-- SELECT * FROM d_basis_fors_omr_type;

INSERT INTO fkg.d_basis_driftniv VALUES (1,'Have',1,'Bedste niveau');
INSERT INTO fkg.d_basis_driftniv VALUES (2,'Park',1,'Mellem niveau');
INSERT INTO fkg.d_basis_driftniv VALUES (3,'Natur',1,'Laveste niveau');
INSERT INTO fkg.d_basis_driftniv VALUES (8,'Andet',1,'Hvor andre driftniveausbetegnelser ikke er dækkende.');
INSERT INTO fkg.d_basis_driftniv VALUES (9,'Ukendt',1,'Mangler viden om niveau/anvender ikke driftniveauer.');
-- SELECT * FROM d_basis_driftniv;

INSERT INTO fkg.d_basis_ukrudtsbek VALUES (1,'Mekanisk',1,'Lugejern, hakke, fræser, radrenser m.v. Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_basis_ukrudtsbek VALUES (2,'Termisk',1,'Varme. Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_basis_ukrudtsbek VALUES (3,'Kemisk',1,'Sprøjtegift m.v. Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_basis_ukrudtsbek VALUES (4,'Mekanisk/termisk',1,'Metodefrihed mellem mekanisk og termisk.');
INSERT INTO fkg.d_basis_ukrudtsbek VALUES (5,'Mekanisk/kemisk',1,'Metodefrihed mellem mekanisk og kemisk.');
INSERT INTO fkg.d_basis_ukrudtsbek VALUES (6,'Termisk/kemisk',1,'Metodefrihed mellem termisk og kemisk.');
INSERT INTO fkg.d_basis_ukrudtsbek VALUES (8,'Andet',1,'Hvor andre ukrudtsbekæmpelsemetoders betegnelser ikke er dækkende.');
INSERT INTO fkg.d_basis_ukrudtsbek VALUES (9,'Ukendt',1,'Mangler viden om ukrudtsbekæmpelsemetoder/anvender ikke ukrudtsbekæmpelsemetoder.');
-- SELECT * FROM d_basis_ukrudtsbek;

INSERT INTO fkg.d_basis_antal VALUES (0,'0',1,'Ingen');
INSERT INTO fkg.d_basis_antal VALUES (1,'1-9',1,'Mellem 1 og 9');
INSERT INTO fkg.d_basis_antal VALUES (2,'10-99',1,'Mellem 10 og 99');
INSERT INTO fkg.d_basis_antal VALUES (3,'100+',1,'Over 100 stk.');
INSERT INTO fkg.d_basis_antal VALUES (4,'1000+',1,'Over 1000 stk.');
INSERT INTO fkg.d_basis_antal VALUES (8,'Andet',1,'Andet');
INSERT INTO fkg.d_basis_antal VALUES (9,'Ukendt',1,'Mangler viden om antal');
-- SELECT * FROM d_basis_antal;

INSERT INTO fkg.d_basis_trin VALUES (1,'1. klasse',1,'1. klasse');
INSERT INTO fkg.d_basis_trin VALUES (2,'2. klasse',1,'2. klasse');
INSERT INTO fkg.d_basis_trin VALUES (3,'3. klasse',1,'3. klasse');
INSERT INTO fkg.d_basis_trin VALUES (4,'4. klasse',1,'4. klasse');
INSERT INTO fkg.d_basis_trin VALUES (5,'5. klasse',1,'5. klasse');
INSERT INTO fkg.d_basis_trin VALUES (6,'6. klasse',1,'6. klasse');
INSERT INTO fkg.d_basis_trin VALUES (7,'7. klasse',1,'7. klasse');
INSERT INTO fkg.d_basis_trin VALUES (8,'8. klasse',1,'8. klasse');
INSERT INTO fkg.d_basis_trin VALUES (9,'9. klasse',1,'9. klasse');
INSERT INTO fkg.d_basis_trin VALUES (10,'10. klasse',1,'10. klasse');
INSERT INTO fkg.d_basis_trin VALUES (11,'0. klasse',1,'0. klasse');
INSERT INTO fkg.d_basis_trin VALUES (12,'Førskole',1,'Førskole');
INSERT INTO fkg.d_basis_trin VALUES (97,'Ej relevant',1,'Ikke relevant for dette objekt'); -- https://github.com/OpenFKG/fkg-postgresql/issues/62
INSERT INTO fkg.d_basis_trin VALUES (98,'Andet',1,'Andet'); -- begrebsdefinition ændret: https://github.com/OpenFKG/fkg-postgresql/issues/62
INSERT INTO fkg.d_basis_trin VALUES (99,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_basis_trin;

-- New lookup-tables in 2.5:
INSERT INTO fkg.d_basis_belaegning VALUES (1,'Fast belægning',1,'Fast belægning, som fx asfalt, brolægning og beton');
INSERT INTO fkg.d_basis_belaegning VALUES (2,'Løs belægning',1,'Løs belægning, som fx perlesten, stenmel');
INSERT INTO fkg.d_basis_belaegning VALUES (3,'Uden belægning',1,'Uden belægning, som fx natursti, skovsti og trampet sti, strand.');
INSERT INTO fkg.d_basis_belaegning VALUES (8,'Andet',1,'Andet');
INSERT INTO fkg.d_basis_belaegning VALUES (9,'Ukendt',1,'Mangler viden om belægning');
-- SELECT * FROM fkg.d_basis_belaegning;

INSERT INTO fkg.d_basis_handicapegnet VALUES (1,'Handicapegnet',1,'Faciliteten er egnet for handicappede');
INSERT INTO fkg.d_basis_handicapegnet VALUES (2,'Delvist handicapegnet',1,'Faciliteten er delvist egnet for handicappede, fx kørestolsegnet, men intet handicaptoilet.');
INSERT INTO fkg.d_basis_handicapegnet VALUES (3,'Ikke handicapegnet',1,'Faciliteten er ikke egnet for handicappede');
INSERT INTO fkg.d_basis_handicapegnet VALUES (4,'Handicapvenligt', 1, 'Der er taget hensyn til adgang for handicappede.');
INSERT INTO fkg.d_basis_handicapegnet VALUES (8,'Andet',1,'Andet');
INSERT INTO fkg.d_basis_handicapegnet VALUES (9,'Ukendt',1,'Mangler viden om egnethed for handicappede.');
-- SELECT * FROM fkg.d_basis_handicapegnet;

INSERT INTO fkg.d_basis_invasivart VALUES (1010,'Almindelig pæleorm','Teredo navalis','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1020,'Amerikansk knivmusling','Ensis americanus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1030,'Amerikansk Ribbegople','Mnemiopsis leidyi','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1040,'Amerikansk Skarveand','Oxyura jamaicensis','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1050,'Bisamrotte','Ondatra zibethicus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1060,'Brun rotte','Rattus norvegicus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1070,'Canadagås','Branta canadensis','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1080,'Galizisk sumpkrebs/Tyrkerkrebs','Potamobius leptodatylus eller Astacus leptodactylus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1090,'Harlekinmariehøne','Harmonia axyridis','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1100,'Iberisk Skovsnegl, "Dræbersnegl"','Arion lusitanicus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1110,'Kastanie-minérmøl','Cameraria ohridella','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1120,'Kinesisk Uldhåndskrabbe','Eriocheir sinensis','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1130,'Kongekrabbe/Troldkrabbe/Kamtscatkakrabbe','Paralithodes camtschaticus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1140,'Mink','Mustela vison','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1150,'Mårhund','Nyctereutes procyonoides','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1160,'Nilgås','Alopochen aegyptiacus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1170,'Plettet voldsnegl','Cantareus aspersus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1180,'Rødøret Terrapin','Trachemys scripta','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1190,'Signalkrebs','Pacifastacus leniusculus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1200,'Sort Svane','Cygnus astratus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1210,'Stillehavsøsters/Japansk østers','Crassostrea gigas','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1220,'Sumpbæver/Bæverrotte','Myocastor coypus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1230,'Vandremusling','Dreissena polymorpha','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1240,'Vaskebjørn','Procyon lotor','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (1250,'Ålens svømmeblæreorm','Anguillicola crassus','Dyreriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2010,'Bjergfyr','Pinus mugo','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2020,'Butblæret sargassotang','Sargassum muticum','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2030,'Bynke-ambrosie','Ambrosia artemisiifolia','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2040,'Canadisk bakkestjerne','Conyza canadensis','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2050,'Contortafyr/Klitfyr','Pinus contorta','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2060,'Engelsk vadegræs','Spartina anglica','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2070,'Glansbladet hæg','Prunus serotina','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2080,'Gul kæmpekalla','Lysichiton americanus','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2090,'Gyldenris/Canadisk gyldenris/Sildig gyldenris','Solidago canadensis/Solidago gigantea','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2100,'Japansk pileurt','Fallopia japonica','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2110,'Kæmpe-balsamin','Impatiens glandulifera','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2120,'Kæmpe-bjørneklo','Heracleum mantegazzianum','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2130,'Kæmpe-pileurt','Fallopia sachalinensis','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2140,'Mangebladet lupin','Lupinus polyphyllus','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2150,'Pastinak','Pastinaca sativa','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2160,'Rød hestehov','Petasites hybridus','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (2170,'Rynket rose','Rosa rugosa','Planteriget',1);
INSERT INTO fkg.d_basis_invasivart VALUES (9998,'Andet','-','-',1);
INSERT INTO fkg.d_basis_invasivart VALUES (9999,'Ukendt','Ignoratus','Ignoratus',1);
-- SELECT * FROM fkg.d_basis_invasivart;

DELETE FROM fkg.d_basis_kotesystem;
INSERT INTO fkg.d_basis_kotesystem VALUES (1,'DNN',1,'Dansk normal nul, gammelt system. Indført omkring 1910. Udfaset i 2006.');
INSERT INTO fkg.d_basis_kotesystem VALUES (2,'DVR90',1,'Dansk Vertikal Reference 1990. Indført i 2002.');
INSERT INTO fkg.d_basis_kotesystem VALUES (8,'Andet',1,'Andet');
INSERT INTO fkg.d_basis_kotesystem VALUES (9,'Ukendt',1,'Ukendt');
-- SELECT * FROM fkg.d_basis_kotesystem;

-- New lookup-tables in 2.5.X:
INSERT INTO fkg.d_basis_ansva_v VALUES
(1, 'Privat/forening', 1, 'Vedligeholdes af privatpersoner/organisationer/foreninger og lign.'),
(2, 'Kommune',         1, 'Vedligeholdes af kommune.'),
(3, 'Staten',          1, 'Vedligeholdes af staten eller en myndighed under staten f.eks. Naturstyrelsen.'),
(8, 'Andet',           1, 'Andet'),
(9, 'Ukendt',          1, 'Mangler viden om vedligeholder');

INSERT INTO fkg.d_5000_vandl_type VALUES (1,'Almindelig',1,'Åbent vandløb');
INSERT INTO fkg.d_5000_vandl_type VALUES (2,'Rørlagt',1,'Administrativ registrering af rørlagt forløb. Kan registreres, hvor myndigheden mener, at registreringen har funktionsmæssig betydning for vandløbsnetværket.');
INSERT INTO fkg.d_5000_vandl_type VALUES (3,'Gennem sø',1,'Fiktiv VANDLØBSMIDTE gennem SØ');
INSERT INTO fkg.d_5000_vandl_type VALUES (4,'Link',1,'Fiktiv VANDLØBSMIDTE som forbinder vandløbene i et vandløbsnetværk, hvor vandløbet ikke går gennem sø');
-- SELECT * FROM d_5000_vandl_type;

INSERT INTO fkg.d_5000_maalsaetning VALUES (1,'A målsætning - Særligt naturområde',1,'A: Skærpet målsætning. Vandløb med skærpet målsætning er oftest vandløb, som er upåvirket eller kun svagt påvirket af menneskelig aktivitet, for eksempel skovvandløb og kilder, som er uregulerede, og som ikke er regelmæssigt vedligeholdt. Der kan i enkelte tilfælde også være tale om vandløb, som rummer en speciel fiske- eller insektfauna eller på anden måde er særligt bevaringsværdige, og som derfor udpeges som særligt naturområde, for eksempel vandløb med særlige geologiske, hydrologiske, kulturhistoriske eller landskabelige bevaringsinteresser. Særligt naturområde');
INSERT INTO fkg.d_5000_maalsaetning VALUES (2,'B0 målsætning - Alsidigt dyre- og planteliv',1,'B0 Alsidigt dyre- og planteliv (Denne målsætning var i tidligere planer benævnt B4). B0-målsætningen anvendes for små vandløb, der ikke kan opfylde alle de fysiske krav til en fiskevandsmålsætning. Det er karakteristisk for B0-målsatte vandløb, at de har en god fysisk variation, fordi de er uregulerede, men de er ofte sommerudtørrende, fordi de har et lille opland');
INSERT INTO fkg.d_5000_maalsaetning VALUES (3,'B1 målsætning - Gyde- og yngel opvækstområde for laksefisk',1,'B1 Gyde- og yngelopvækstområde for laksefisk. B1-målsætningen anvendes i små til mellemstore vandløb, som kan anvendes som gyde- og yngelopvækstområde for laksefisk, primært ørred. Det er typisk vandløb med hurtigtstrømmende vand og grusbund og med stor fysisk variation.');
INSERT INTO fkg.d_5000_maalsaetning VALUES (4,'B2 målsætning - Laksefiskvand',1,'B2 Laksefiskvand. B2-målsætningen anvendes oftest i de lidt større vandløb med god fysisk variation, og som kan være levested for de større laksefisk, primært ørred. ');
INSERT INTO fkg.d_5000_maalsaetning VALUES (5,'B3 målsætning - Karpefiskevand',1,'B3 Karpefiskvand. B3-målsætningen (karpefiskvand, f.eks. ål, aborre og gedde) anvendes typisk for vandløbsstrækninger, hvor der er ringe fald og dermed sand- eller mudderbund uden større fysisk variation.'); 
INSERT INTO fkg.d_5000_maalsaetning VALUES (6,'B4',1,'Mangler beskrivelse');
INSERT INTO fkg.d_5000_maalsaetning VALUES (7,'C målsætning - Kun afledning af vand',1,'C: Lempet målsætning. De lempede målsætninger anvendes for vandløbsstrækninger, hvor det accepteres, at den menneskeskabte påvirkning ændrer vandløbskvaliteten og dyre- og plantelivet stærkt, bl.a. således at disse vandløb ikke kan påregnes at være levesteder for fisk. C Kun afledning af vand. C-målsætningen anvendes typisk for gravede pumpekanaler eller afvandingsgrøfter, der ikke er omfattet af naturbeskyttelseslovens § 3.');
INSERT INTO fkg.d_5000_maalsaetning VALUES (8,'D målsætning - Påvirket af spildevand',1,'D Påvirket af spildevand. D-målsætningen anvendes på vandløbsstrækninger, som i væsentlig grad tillades påvirket af spildevand. Det er typisk tilfældet, hvor hovedparten af vandføringen består af spildevand.');
INSERT INTO fkg.d_5000_maalsaetning VALUES (9,'E målsætning - Påvirket af okker',1,'E Påvirket af grundvandsindvinding. E-målsætningen er ikke anvendt for vandløb i Århus Amt. Eksisterende vandindvindinger til byformål påvirker vandføringen især i vandløb i Århus-området. Gennem særlig god spildevandsrensning og accept af, at vandføring og fiskebestand er mindsket, kan disse vandløb opfylde en generel målsætning. I Giber å opnås denne generelle målsætning dog kun ved, i tørre perioder, at udlede opmagasineret overfladevand og at udpumpe grundvand til åen.');
INSERT INTO fkg.d_5000_maalsaetning VALUES (10,'F',1,'Mangler beskrivelse ');
INSERT INTO fkg.d_5000_maalsaetning VALUES (11,'Vandløb uden målsætning',1,'Der er ikke sat en målsætning for vandløbet');
-- SELECT * FROM d_5000_maalsaetning;

INSERT INTO fkg.d_5000_klasse VALUES (1,'Naturligt',1,'Ved naturlige vandløb forstås vandløb, der har eksisteret fra naturens hånd. Det ændrer ikke på vandløbets status som naturligt, at der er foretaget regulering af vandløbet f. eks. uddybning, udretning eller omlægning. Alle vandløb som naturen har skabt også selvom det efterfølgende er blevet udrettet og/eller rørlagt.');
INSERT INTO fkg.d_5000_klasse VALUES (2,'Kunstigt',1,'Alle vandløb, der i modsætning til naturlige vandløb, er kunstigt anlagt (gravede grøfter og kanaler mv.) Kun 100% ren kunstige vandløb. F.eks. fra inddæmning og tørlægning af en fjord.');
INSERT INTO fkg.d_5000_klasse VALUES (3,'Blødbund',1,'Se vandplan');
-- SELECT * FROM d_5000_klasse;

INSERT INTO fkg.d_5001_maalest_type VALUES (1,'Hydrometrisk',1,'Fysisk lokalitet hvor der er opstillet en målestation, hvor der foretages hydrometrisk måling');
INSERT INTO fkg.d_5001_maalest_type VALUES (2,'DVFI',1,'Dansk Vandløbs Fauna Indeks målestation. Fysisk lokalitet hvor der foretages måling');
INSERT INTO fkg.d_5001_maalest_type VALUES (3,'Anden',1,'Andet');
-- SELECT * FROM d_5001_maalest_type;


INSERT INTO fkg.d_5002_spaerring VALUES (1,'Bro',1,'Betonbroer m.fl. som går over åen og forhindre passage af landdyr uden at krydse vejen/jernbanen m.v.');
INSERT INTO fkg.d_5002_spaerring VALUES (2,'Brøndstyrt',1,'Lodret fald i en brønd. Brugt bl.a. til opstemning af mindre sø. Forekommer også ved rørlagte vandløb der f.eks. skal skifte kote for at komme under en vej.');
INSERT INTO fkg.d_5002_spaerring VALUES (3,'Frontmur',1,'Et bygværk på tværs af et vandløb - et afgrænsende bygningselement ud mod et vandløb typisk med indbygget rør til ind-/udløb.');
INSERT INTO fkg.d_5002_spaerring VALUES (4,'Opstemning',1,'Opstemning af vandløb. Typisk ved et dambrug');
INSERT INTO fkg.d_5002_spaerring VALUES (5,'Reguleringsanlæg',1,'Anlæg til at regulere hvor meget vand der løbet videre');
INSERT INTO fkg.d_5002_spaerring VALUES (6,'Rist',1,'Rist til at opfange ting i vandløbet.');
INSERT INTO fkg.d_5002_spaerring VALUES (7,'Rørbro',1,'I stedet for at bygge en bro er der lagt et stort rør. Ofte kun en halvcirkel. Dvs. et rør uden bund.');
INSERT INTO fkg.d_5002_spaerring VALUES (8,'Rørgennemførsel',1,'Der er opbygget en dæmning til vej/jernbane, hvor vandløbet føres igennem med et rør');
INSERT INTO fkg.d_5002_spaerring VALUES (9,'Rørlægning',1,'Rørlægning af et vandløb. Ikke kun under vej/jernbane.');
INSERT INTO fkg.d_5002_spaerring VALUES (10,'Rørstyrt',1,'Hvor der er et fald fra røret til vandløbets overflade ved lav vandføring.');
INSERT INTO fkg.d_5002_spaerring VALUES (11,'Spærring Dambrug',1,'Spærring ved dambrug. Forhindre passage af dyr i vandløbet ved f.eks. periodevis tørlægning');
INSERT INTO fkg.d_5002_spaerring VALUES (12,'Stemmeværk',1,'En konstruktion udført som en dæmning beregnet til at opstemme og kontrollere vandmængder hvor tilløbende vand bliver holdt tilbage indtil værkets overkant/ krone bliver nået og skaber overløb over denne');
INSERT INTO fkg.d_5002_spaerring VALUES (13,'Stenkiste',1,'Bro opbygget af tilhugget kampesten. Typisk gamle broer.');
INSERT INTO fkg.d_5002_spaerring VALUES (14,'Styrt, andet',1,'Hvor der er et lodret fald på vandløbet, som ikke er fra rør eller i en brønd.');
INSERT INTO fkg.d_5002_spaerring VALUES (15,'Vej',1,'Hvor en vej krydser en spredningskorridor.');
INSERT INTO fkg.d_5002_spaerring VALUES (16,'Ålekiste',1,'Et redskab til fangst af ål, og benyttes både i mindre vandløb eller bække i en meget primitiv form som en kasse.');
INSERT INTO fkg.d_5002_spaerring VALUES (17,'Bro på piller',1,'Vej/jernbanebro der er sat på piller gennem del af f.eks. ådalen for at øge muligheden for landdyrs passage.');
INSERT INTO fkg.d_5002_spaerring VALUES (98,'Anden spærring',1,'Spærring hvor andet ikke er dækkende.');
INSERT INTO fkg.d_5002_spaerring VALUES (99,'Ukendt spærring',1,'Fået oplyst der er en spærring, men arten er ukendt. Typisk fra borger eller gammelt register.');
-- SELECT * FROM d_5002_spaerring;

INSERT INTO fkg.d_5002_passage VALUES (1,'Faunabro',1,'Anlægges med en bredde og størrelse med mulighed for beplantning, hvorved vilkårene for dyrene ikke ændres afgørende i forhold til landskabet på begge sider af vejen under passagen');
INSERT INTO fkg.d_5002_passage VALUES (2,'Faunarør',1,'Underføring under vej m.v. Betjener hovedsagligt smådyr. Også kaldt dyretunnel, men omfatter ikke paddetunnel. (Har egen kode.)');
INSERT INTO fkg.d_5002_passage VALUES (3,'Fisketrappe, andet',1,'Kunstigt anlagt vandløbsforløb ved om en spærring f.eks. en dæmning uden det er med kammer, modstrømstrappe eller zigzag.');
INSERT INTO fkg.d_5002_passage VALUES (4,'Fisketrappe, kammer',1,'Kunstigt anlagt vandløbsforløb ved om en spærring f.eks. en dæmning opbygget med kammer/bassiner hvor vand strømmer igennem men der også er ret stille vand/hvilepladser til fisk m.v.');
INSERT INTO fkg.d_5002_passage VALUES (5,'Fisketrappe, modstrøm',1,'Kunstigt anlagt vandløbsforløb ved om en spærring f.eks. en dæmning, hvor der typisk er en lang lige rende med kraftig modstrøm.');
INSERT INTO fkg.d_5002_passage VALUES (6,'Fisketrappe, zigzag',1,'Kunstigt anlagt vandløbsforløb ved om en spærring f.eks. en dæmning, hvor vandet zigzag’er ned og stømhastigheden derved sætte ned og give mulighed for korte hvil under passage.');
INSERT INTO fkg.d_5002_passage VALUES (7,'Odderpassage, andet',1,'Tørpassage langs vandløbet ved vejbroer m.v. hvor det er en anden løsning end flydebro, hængebro eller banket.');
INSERT INTO fkg.d_5002_passage VALUES (8,'Odderpassage, Flydebro',1,'Tørpassage langs vandløbet ved vejbroer m.v. hvor den flyder på vandet.');
INSERT INTO fkg.d_5002_passage VALUES (9,'Odderpassage, Hængebro',1,'Tørpassage langs vandløbet ved vejbroer m.v. hvor den hænger fast på siden af broen.');
INSERT INTO fkg.d_5002_passage VALUES (10,'Odderpassage, Banket',1,'Tørpassage langs vandløbet ved vejbroer m.v. hvor der er en fast banket/kant langs broen.');
INSERT INTO fkg.d_5002_passage VALUES (11,'Omløbsstryg',1,'Kunstigt anlagt vandløbsforløb uden om en spærring med en meget kraftig snoning og stort fald over kort strækning. Typiske med natursten i bunden og sider for at holde opbygning.');
INSERT INTO fkg.d_5002_passage VALUES (12,'Paddetunnel',1,'Underføring under vej til padder - typisk i rør.');
INSERT INTO fkg.d_5002_passage VALUES (13,'Stryg',1,'Stryg er et sted på en å hvor gruset vaskes rent. Her er der ofte også meget lavvandet og med god strøm.');
INSERT INTO fkg.d_5002_passage VALUES (14,'Ålepas',1,'Et rør eller en trækasse med fyldmateriale som giver ålen passage op ad vandløbet ved f.eks. et styrt.');
INSERT INTO fkg.d_5002_passage VALUES (98,'Anden passage',1,'Passagen hvor andet ikke er dækkende.');
INSERT INTO fkg.d_5002_passage VALUES (99,'Ukendt passage',1,'Fået oplyst der er en passage, men arten er ukendt. Typisk fra borger eller gammelt register.');
-- SELECT * FROM d_5002_passage;


INSERT INTO fkg.d_5003_ledn_type VALUES (1,'Ler',1,'Typiske røde lerrør der er meget korte.');
INSERT INTO fkg.d_5003_ledn_type VALUES (2,'Plast',1,'Typisk plastrør med riller/folder og mange små huller, så de er bøjelige.');
INSERT INTO fkg.d_5003_ledn_type VALUES (3,'Beton',1,'Typiske støbte betonrør i 1-2 meter længde.');
INSERT INTO fkg.d_5003_ledn_type VALUES (8,'Andet',1,'Materiale hvor andet ikke er dækkende.');
INSERT INTO fkg.d_5003_ledn_type VALUES (9,'Ukendt',1,'Fået oplyst der er et dræn, men materialet er ukendt. Typisk fra borger eller gammelt register.');
-- SELECT * FROM d_5003_ledn_type;


INSERT INTO fkg.d_5003_klasse VALUES (1,'Interne markdræn',1,'Hoveddrænledningen der kun dækker en mark. (Dækkes flere marker er det et rørlagt vandløb!)');
INSERT INTO fkg.d_5003_klasse VALUES (2,'Sidegren markdræn',1,'Sidegrene til et dræn. Ligger ofte lidt som sildeben. Ender typisk blindt eller med en enkelt deling.');
INSERT INTO fkg.d_5003_klasse VALUES (3,'Omfangsdræn',1,'Benyttes typisk ved huse med kældre for at holde fugt ude.');
INSERT INTO fkg.d_5003_klasse VALUES (8,'Andet',1,'Klasse hvor andet ikke er dækkende.');
INSERT INTO fkg.d_5003_klasse VALUES (9,'Ukendt',1,'Fået oplyst der er et dræn, men klassen er ukendt. Typisk fra borger eller gammelt register.');
-- SELECT * FROM d_5003_klasse;


INSERT INTO fkg.d_5004_omr_type VALUES (1,'privat markdræn',1,'Privat anlagte og drevet drænområde.');
INSERT INTO fkg.d_5004_omr_type VALUES (2,'off område',1,'Drænområde, hvor kommune eller stat har stået for anlæggelsen og/eller med i driften af anlægget.');
INSERT INTO fkg.d_5004_omr_type VALUES (8,'Andet',1,'Anden drænområde type.');
INSERT INTO fkg.d_5004_omr_type VALUES (9,'Ukendt',1,'Mangler viden om drænområde type.');
-- SELECT * FROM d_5004_omr_type;


INSERT INTO fkg.d_5005_maalsaetning VALUES (1,'Sø, skærpet målsætning A',1,'');
INSERT INTO fkg.d_5005_maalsaetning VALUES (2,'Sø, skærpet målsætning A, badevand A2',1,'');
INSERT INTO fkg.d_5005_maalsaetning VALUES (3,'Sø, basismålsætning B',1,'');
INSERT INTO fkg.d_5005_maalsaetning VALUES (4,'Sø, basismålsætning B, badevand A2',1,'');
INSERT INTO fkg.d_5005_maalsaetning VALUES (5,'Sø, lempet målsætning C',1,'');
INSERT INTO fkg.d_5005_maalsaetning VALUES (6,'Uden specifik målsætning',1,'');
INSERT INTO fkg.d_5005_maalsaetning VALUES (7,'Ikke særskilt målsat',1,'');
-- SELECT * FROM d_5005_maalsaetning;


INSERT INTO fkg.d_5005_soe_type VALUES (1,'1 - Kalkfattig, klarvandet, fersk og lav',1,'Kalkfattig, klarvandet, fersk og lav');
INSERT INTO fkg.d_5005_soe_type VALUES (2,'2 - Kalkfattig, klarvandet, fersk og dyb',1,'Kalkfattig, klarvandet, fersk og dyb');
INSERT INTO fkg.d_5005_soe_type VALUES (3,'3 - Kalkfattig, klarvandet, brak og lav',1,'Kalkfattig, klarvandet, brak og lav');
INSERT INTO fkg.d_5005_soe_type VALUES (4,'4 - Kalkfattig, klarvandet, brak og dyb',1,'Kalkfattig, klarvandet, brak og dyb');
INSERT INTO fkg.d_5005_soe_type VALUES (5,'5 - Kalkfattig, brunvandet, fersk og lav',1,'Kalkfattig, brunvandet, fersk og lav');
INSERT INTO fkg.d_5005_soe_type VALUES (6,'6 - Kalkfattig, brunvandet, fersk og dyb',1,'Kalkfattig, brunvandet, fersk og dyb');
INSERT INTO fkg.d_5005_soe_type VALUES (7,'7 - Kalkfattig, brunvandet, brak og lav',1,'Kalkfattig, brunvandet, brak og lav');
INSERT INTO fkg.d_5005_soe_type VALUES (8,'8 - Kalkfattig, brunvandet, brak og dyb',1,'Kalkfattig, brunvandet, brak og dyb');
INSERT INTO fkg.d_5005_soe_type VALUES (9,'9 - Kalkrig, klarvandet, fersk og lav',1,'Kalkrig, klarvandet, fersk og lav');
INSERT INTO fkg.d_5005_soe_type VALUES (10,'10 - Kalkrig, klarvandet, fersk og dyb',1,'Kalkrig, klarvandet, fersk og dyb');
INSERT INTO fkg.d_5005_soe_type VALUES (11,'11 - Kalkrig, klarvandet, brak og lav',1,'Kalkrig, klarvandet, brak og lav');
INSERT INTO fkg.d_5005_soe_type VALUES (12,'12 - Kalkrig, klarvandet, brak og dyb',1,'Kalkrig, klarvandet, brak og dyb');
INSERT INTO fkg.d_5005_soe_type VALUES (13,'13 - Kalkrig, brunvandet, fersk og lav',1,'Kalkrig, brunvandet, fersk og lav');
INSERT INTO fkg.d_5005_soe_type VALUES (14,'14 - Kalkrig, brunvandet, fersk og dyb',1,'Kalkrig, brunvandet, fersk og dyb');
INSERT INTO fkg.d_5005_soe_type VALUES (15,'15 - Kalkrig, brunvandet, brak og lav',1,'Kalkrig, brunvandet, brak og lav');
INSERT INTO fkg.d_5005_soe_type VALUES (16,'16 - Kalkrig, brunvandet, brak og dyb',1,'Kalkrig, brunvandet, brak og dyb');
INSERT INTO fkg.d_5005_soe_type VALUES (99,'Ukendt',1,'Mangler viden om søtype');
-- SELECT * FROM d_5005_soe_type;


INSERT INTO fkg.d_5005_habitat_type VALUES (1,'3110 Kalk- og næringsfattige søer og vandhuller (lobeliesøer) (1, 2)',1,'');
INSERT INTO fkg.d_5005_habitat_type VALUES (2,'3130 Ret næringsfattige søer og vandhuller med små amfibiske planter ved bredden (1, 2, 4, 6)',1,'');
INSERT INTO fkg.d_5005_habitat_type VALUES (3,'3140 Kalkrige søer og vandhuller med kransnålalger (6, 7)',1,'');
INSERT INTO fkg.d_5005_habitat_type VALUES (4,'3150 Næringsrige søer og vandhuller med flydeplanter eller store vandaks (6, 7)',1,'');
INSERT INTO fkg.d_5005_habitat_type VALUES (5,'3160 Brunvandede søer og vandhuller (4, 5, 9, 10)',1,'');
INSERT INTO fkg.d_5005_habitat_type VALUES (6,'1150 Kystlaguner og strandsøer (8)',1,'');
INSERT INTO fkg.d_5005_habitat_type VALUES (9,'Ukendt',1,'Mangler viden om habitattype');
-- SELECT * FROM d_5005_habitat_type;


INSERT INTO fkg.d_5007_opl VALUES (1,'Hav/ingen vandløb',1,'Hvor regnvand løber direkte i havet uden at løbe i et vandløb.');
-- SELECT * FROM d_5007_opl;


INSERT INTO fkg.d_5007_opl_type VALUES (1,'1. ordens vandskel',1,'');
INSERT INTO fkg.d_5007_opl_type VALUES (2,'2. ordens vandskel',1,'');
INSERT INTO fkg.d_5007_opl_type VALUES (3,'3. ordens vandskel',1,'');
INSERT INTO fkg.d_5007_opl_type VALUES (4,'4. ordens vandskel',1,'');
INSERT INTO fkg.d_5007_opl_type VALUES (9,'Ukendt',1,'');
-- SELECT * FROM d_5007_opl_type;


INSERT INTO fkg.d_5008_opl VALUES (1,'Hav/ingen sø',1,'');
-- SELECT * FROM d_5008_opl;


INSERT INTO fkg.d_5009_lag_type VALUES (1,'Digelag',1,'Sammenslutning (gruppe) af ejendomme (jordejere), der er fælles om et dige.');
INSERT INTO fkg.d_5009_lag_type VALUES (2,'Landvindingslag',1,'Sammenslutning (gruppe) af ejendomme (jordejere), der er fælles om et dige og pumpeanlæg. I forbindelse med tørlægning af en fjord eller sø. Typiske til landbrugsjord.');
INSERT INTO fkg.d_5009_lag_type VALUES (3,'Pumpelag',1,'Sammenslutning (gruppe) af ejendomme (jordejere), der er fælles om et (afvandings) -pumpeanlæg.');
INSERT INTO fkg.d_5009_lag_type VALUES (8,'Andet',1,'Hvor ovenstående valgmuligheder ikke passer.');
INSERT INTO fkg.d_5009_lag_type VALUES (9,'Ukendt',1,'Mangler viden om lagtype.');
-- SELECT * FROM d_5009_lag_type;


INSERT INTO fkg.d_5010_element_type VALUES (1,'Brønd',1,'Brønd på rørlagt vandløb');
INSERT INTO fkg.d_5010_element_type VALUES (2,'Sandfangsbrønd',1,'Sandfangsbrønd');
INSERT INTO fkg.d_5010_element_type VALUES (3,'Sandfang',1,'Sted på vandløbet hvor der kunstigt er skabt mulighed for sand bundfældes.');
INSERT INTO fkg.d_5010_element_type VALUES (4,'Rist',1,'Rist til at opfange ting i vandløbet.');
INSERT INTO fkg.d_5010_element_type VALUES (5,'Pumpe',1,'Pumpe');
INSERT INTO fkg.d_5010_element_type VALUES (6,'Sluse',1,'Mekanisk anordning til regulering af vandstanden.');
INSERT INTO fkg.d_5010_element_type VALUES (7,'Stemmeværk',1,'En konstruktion udført som en dæmning beregnet til at opstemme og kontrollere vandmængder hvor tilløbende vand bliver holdt tilbage indtil værkets overkant/ krone bliver nået og skaber overløb over denne');
INSERT INTO fkg.d_5010_element_type VALUES (8,'Bro',1,'Bro');
INSERT INTO fkg.d_5010_element_type VALUES (9,'Spang',1,'Lille bro/bræt over vandløb');
INSERT INTO fkg.d_5010_element_type VALUES (10,'Åbent tilløb venstre',1,'Tilløb af åbent vandløb fra venstreside');
INSERT INTO fkg.d_5010_element_type VALUES (11,'Åbent tilløb højre',1,'Tilløb af åbent vandløb fra højreside');
INSERT INTO fkg.d_5010_element_type VALUES (12,'Rørtilløb venstre',1,'Tilløb af rørlagt vandløb fra venstreside');
INSERT INTO fkg.d_5010_element_type VALUES (13,'Rørtilløb højre',1,'Tilløb af rørlagt vandløb fra højreside');
INSERT INTO fkg.d_5010_element_type VALUES (14,'Stationeringspunkt',1,'Punkt til angivelse af stationering i meter');
INSERT INTO fkg.d_5010_element_type VALUES (15,'Styrt',1,'Lodret/frit fald');
INSERT INTO fkg.d_5010_element_type VALUES (16,'Overkørsel',1,'Mindre/smal overdækning af mindre vandløb, der giver mulighed for at køre på tværs');
INSERT INTO fkg.d_5010_element_type VALUES (17,'Rørbro',1,'Bro bygget op af et rør, hvor vandet løber igennem');
INSERT INTO fkg.d_5010_element_type VALUES (18,'Indløb rør/frontmur',1,'Hvor vandløb løber ind i røret');
INSERT INTO fkg.d_5010_element_type VALUES (19,'Udløb rør/frontmur',1,'Hvor vandløb kommer ud af røret');
INSERT INTO fkg.d_5010_element_type VALUES (20,'Kantpæl',1,'Pæl i vandkanten til markering af vandløb');
INSERT INTO fkg.d_5010_element_type VALUES (21,'Skala',1,'Skala til at aflæse vandstanden i vandløbet');
INSERT INTO fkg.d_5010_element_type VALUES (22,'Stryg',1,'Stærkning med stort fald på vandløbet med mange sten');
INSERT INTO fkg.d_5010_element_type VALUES (23,'Udløb/ende på vandløb',1,'Udløb/enden på vandløbet f.eks. i en sø eller andet større vandløb');
INSERT INTO fkg.d_5010_element_type VALUES (24,'Ledning under',1,'Tele-, Gas-, Kloak-, El- eller Vandledninger eller tilsvarende ledninger');
INSERT INTO fkg.d_5010_element_type VALUES (98,'Andet',1,'Andet');
INSERT INTO fkg.d_5010_element_type VALUES (99,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_5010_element_type;


INSERT INTO fkg.d_5105_kaer_type VALUES (1,'Ekstremrigkær',1,'Ekstremrigkær er moser. De er den danske vegetationstype, der kan indeholde flest plantearter. Udviklet bl.a. på kalkholdige moræneaflejringer med et meget højt næringsstof indhold. Artsrig moser og enge med konstant vandmættet jordbund på særligt kalkrig bund, således at den særlige rigkærsvegetation opstår. Med græsning eller slåning er vegetationen åben og lavtvoksende som regel med mange små starer og mosser. Uden græsning eller slåning udvikles mere højtvoksende og tilgroede typer, som efterhånden ændr es til krat eller sumpskov. Ekstremrigkær adskiller sig fra rigkær ved forekomst af særlige plantearter som: Butblomstret siv');
INSERT INTO fkg.d_5105_kaer_type VALUES (2,'Ekstremfattigkær',1,'Moser karakteriseret af en ret ensartet græsagtig vegetation domineret af halvgræsser med tæt bunddække af tørvemosser, som ofte danner en gyngende hængesæk, der komplet dækker det minerogene søvand. Fattigkær er fugtige, næringsfattige områder med sur bund. Jordbundsfoholdene betinger, at fattigkærene også er artsfattige.');
-- SELECT * FROM d_5105_kaer_type;


INSERT INTO fkg.d_5106_pleje_type VALUES (1,'1. gangs rydning + græsning',1,'Rydning af træer og buske for at genoprette lysåben tilstand samt efterfølgende græsning.', 'NP1');
INSERT INTO fkg.d_5106_pleje_type VALUES (2,'1. gangs rydning',1,'Rydning af træer og buske for at genoprette lysåben tilstand.', 'NP2');
INSERT INTO fkg.d_5106_pleje_type VALUES (3,'Græsning',1,'Indhegnet område med dyr, der afgræsser området. F.eks. får, heste eller kreaturer eller en blanding af flere dyrearter.', 'NP3');
INSERT INTO fkg.d_5106_pleje_type VALUES (4,'Slåning',1,'Typisk med en brakpudser eller en stor græsklipper. Slår græs, buske og små træer ned.', 'NP4');
INSERT INTO fkg.d_5106_pleje_type VALUES (5,'Slåning af gyvel',1,'Slåning af gyvel med brakpudser hvert 2. år.', 'NP5');
INSERT INTO fkg.d_5106_pleje_type VALUES (6,'Nedskæring af vedplanter',1,'Træer og buske fældes/skæres ned', 'NP6');
INSERT INTO fkg.d_5106_pleje_type VALUES (7,'Plukhugst og stævning',1,'Fældning af større eller mindre træer, hvorefter området forynges ved genopvækst og selvsåede planter', 'NP7');
INSERT INTO fkg.d_5106_pleje_type VALUES (8,'Afbrænding',1,'Typisk afbrænding af lyng på heder for at forynge/bibeholde lyngdækket på sigt.', 'NP8');
INSERT INTO fkg.d_5106_pleje_type VALUES (9,'Vedligehold',1,'Vedligeholdelse af diverse publikumsfaciliteter. F.eks. toiletter, shelters, borde/bænke og stier i området', 'NP9');
INSERT INTO fkg.d_5106_pleje_type VALUES (11,'Pleje af fortidsminder, sommer',1,'Slåning af græs, urter og vedplanter 2 gange i vækstsæsonen', 'NP11');
INSERT INTO fkg.d_5106_pleje_type VALUES (12,'Pleje af fortidsminder, vinter',1,'Slåning af høje urter og vedplanter i vinterhalvåret.', 'NP12');
INSERT INTO fkg.d_5106_pleje_type VALUES (13,'Vandstandshævning',1,'Hævning af vandstand for at genoprette oprindelig tilstand', 'NP13');
INSERT INTO fkg.d_5106_pleje_type VALUES (14,'Græsningsaftaler',1,'Aftale med landmand m.v. om at området bliver afgræsset', 'NP14');
INSERT INTO fkg.d_5106_pleje_type VALUES (15,'Vedligehold rydning',1,'Den efterfølgende vedligeholdelse efter en rydning, så det ikke gro til igen.', 'NP15');
INSERT INTO fkg.d_5106_pleje_type VALUES (16,'Vedligehold sti',1,'Vedligeholdelses kun af stier i området', 'NP16');
INSERT INTO fkg.d_5106_pleje_type VALUES (98,'Andet',1,'Andet', 'NP98');
INSERT INTO fkg.d_5106_pleje_type VALUES (99,'Ukendt',1,'Ukendt', 'NP99');
-- SELECT * FROM d_5106_pleje_type;


INSERT INTO fkg.d_5106_faciliteter VALUES (1,'Kortbord',1,'Skilt med kort over området');
INSERT INTO fkg.d_5106_faciliteter VALUES (2,'Bænk',1,'Bænk');
INSERT INTO fkg.d_5106_faciliteter VALUES (3,'Legeplads',1,'Legeplads med redskaber for børn');
INSERT INTO fkg.d_5106_faciliteter VALUES (4,'Tørkloset',1,'Tørkloset');
INSERT INTO fkg.d_5106_faciliteter VALUES (5,'Multtoilet',1,'Multtoilet, kompost - eller separationstoilet er toiletter uden afløb. Urin og fækalier, samt eventuelt lidt skyllevand opsamles og lagres i særlige tanke for at omdannes til gødning.');
INSERT INTO fkg.d_5106_faciliteter VALUES (6,'Fugletårn',1,'Fugletårn');
INSERT INTO fkg.d_5106_faciliteter VALUES (7,'Shelter',1,'En shelter er en fast bivuak. En lav træbarak, traditionelt åben på den ene langside, gulvet hævet ca. 0,5 m over jorden og stort tagudhæng, således at man er relativt beskyttet mod regn.');
INSERT INTO fkg.d_5106_faciliteter VALUES (8,'Bålplads',1,'Udendørs plads til brug for lejrbål');
INSERT INTO fkg.d_5106_faciliteter VALUES (9,'Vandpost',1,'Udendørs frostsikker vandpost, hvor der kan hentes rent drikkevand.');
INSERT INTO fkg.d_5106_faciliteter VALUES (10,'P-plads',1,'En parkeringsplads/et område,beregnet til at henstille (parkere) køretøjer på, når de ikke bruges.');
INSERT INTO fkg.d_5106_faciliteter VALUES (11,'Bord og bænk',1,'Bord med bænke til at raste/spise ved udendørs (afholde picnic )');
INSERT INTO fkg.d_5106_faciliteter VALUES (12,'Affaldsstativ',1,'Stativ til affald.');
INSERT INTO fkg.d_5106_faciliteter VALUES (13,'Kanorasteplads',1,'Dagrasteplads for kanofarer');
INSERT INTO fkg.d_5106_faciliteter VALUES (98,'Andet',1,'');
INSERT INTO fkg.d_5106_faciliteter VALUES (99,'Ukendt',1,'');
-- SELECT * FROM d_5106_faciliteter;


INSERT INTO fkg.d_5200_affald VALUES (1,'Spildevand',1,'Slam fra renseanlæg.');
INSERT INTO fkg.d_5200_affald VALUES (2,'Industri-/procesrestprodukt',1,'Div. rester fra industriproduktion, som med fordel må spredes på marker.');
INSERT INTO fkg.d_5200_affald VALUES (3,'Aske',1,'Aske hovedsagligt fra afbrænding af halm på fjernvarmeanlæg.');
INSERT INTO fkg.d_5200_affald VALUES (8,'Andet',1,'Andet');
-- SELECT * FROM d_5200_affald;


INSERT INTO fkg.d_5400_affalds_type VALUES (1,'Storskrald',1,'Storskrald hentet ved borgeren');
INSERT INTO fkg.d_5400_affalds_type VALUES (2,'Dagrenovation',1,'Dagrenovation');
INSERT INTO fkg.d_5400_affalds_type VALUES (3,'Haveaffald',1,'Grønt affald til kompost hentet ved borgeren. Ej fødevare.');
INSERT INTO fkg.d_5400_affalds_type VALUES (8,'Andet',1,'Andet');
INSERT INTO fkg.d_5400_affalds_type VALUES (9,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_5400_affalds_type;


INSERT INTO fkg.d_5401_gs_type VALUES (1,'Genbrugsstation',1,'Større indhegnet område hvor borgere aflevere affald sorteret efter type. Typiske direkte i container.');
INSERT INTO fkg.d_5401_gs_type VALUES (2,'Affaldsø',1,'Mindre område hvor borgere kan aflevere mindre mænge af sorteret affald - Glas, papir og evt. metal.');
INSERT INTO fkg.d_5401_gs_type VALUES (3,'Fyldplads',1,'Områder der fyldes op med begrænset former for affald f.eks. i gammel grusgrav eller ved havneudvidelser.');
INSERT INTO fkg.d_5401_gs_type VALUES (4,'Komposteringsanlæg',1,'Plads hvor haveaffald m.v. komposteres til jord.');
INSERT INTO fkg.d_5401_gs_type VALUES (8,'Andet',1,'Andet');
INSERT INTO fkg.d_5401_gs_type VALUES (9,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_5401_gs_type;


INSERT INTO fkg.d_5402_gc_type VALUES (1,'Glas',1,'Flasker og andre typer glas fra madlavning');
INSERT INTO fkg.d_5402_gc_type VALUES (2,'Papir',1,'Aviser, reklamer og andet rent papir');
INSERT INTO fkg.d_5402_gc_type VALUES (3,'Batterier',1,'Brugte batterier');
INSERT INTO fkg.d_5402_gc_type VALUES (4,'Dåser',1,'Dåser i metal');
INSERT INTO fkg.d_5402_gc_type VALUES (5,'Tøj',1,'Brugt tøj der kan genbruges som tøj');
INSERT INTO fkg.d_5402_gc_type VALUES (6,'Miljøstationer',1,'Modtager miljøfarligt affald som malingsrester, kemikaler m.v.');
INSERT INTO fkg.d_5402_gc_type VALUES (7,'Husholdningsaffald',1,'Blandet affald fra husholdning med madrester og meget mere.');
INSERT INTO fkg.d_5402_gc_type VALUES (8,'Pap',1,'Rent pap, papkasser, bølgepap');
INSERT INTO fkg.d_5402_gc_type VALUES (9,'Metal',1,'Metallåg o.lign.');
INSERT INTO fkg.d_5402_gc_type VALUES (10,'Plast',1,'Plastflasker, dunke m.v.');
INSERT INTO fkg.d_5402_gc_type VALUES (98,'Andet',1,'Hvor ovenstående ikke passer ind i genbrugsmaterialet');
INSERT INTO fkg.d_5402_gc_type VALUES (99,'Ukendt',1,'Hvor der mangler viden om typen.');
-- SELECT * FROM d_5402_gc_type;


INSERT INTO fkg.d_5506_anlaegtype VALUES (1,'Renseanlæg',1,'Anlæg som renser spildevand for dele af indholdet.');
INSERT INTO fkg.d_5506_anlaegtype VALUES (2,'Forsinkelsesbassin',1,'Bassinanlæg til ’parkering’ af spildevandet, når det regner voldsomt');
INSERT INTO fkg.d_5506_anlaegtype VALUES (3,'Sparebassin',1,'Et bassin som oplagrer spildevandet i ”regntiden” hvor pumperne ikke kan ikke kan følge med.');
INSERT INTO fkg.d_5506_anlaegtype VALUES (4,'Overløbsbygværk',1,'Bygværk som ved overbelastning sender spildevand til et bassin eller udløb.');
INSERT INTO fkg.d_5506_anlaegtype VALUES (5,'Pumpestation',1,'Pumpe der pumper spildevand væk via en trykledning.');
INSERT INTO fkg.d_5506_anlaegtype VALUES (6,'Udløb',1,'Punktet hvor ledningen slutter/ender i en ”naturlig” recipient.');
INSERT INTO fkg.d_5506_anlaegtype VALUES (7,'Nedsivning',1,'Ejendommen med punktet har anlagt nedsivning af regnvand');
INSERT INTO fkg.d_5506_anlaegtype VALUES (8,'Andet',1,'Andet');
-- SELECT * FROM d_5506_anlaegtype;


INSERT INTO fkg.d_5508_stoej VALUES (1,'44 dB(A) ved en vindhastighed på 8 m/s i det åbne land',1,'Måles ved 15 meter fra beboelse i det åbne land ved 8 m/s');
INSERT INTO fkg.d_5508_stoej VALUES (2,'42 dB(A) ved en vindhastighed på 6 m/s i det åbne land',1,'Måles ved 15 meter fra beboelse i det åbne land ved 6 m/s');
INSERT INTO fkg.d_5508_stoej VALUES (3,'39 dB(A) ved en vindhastighed på 8 m/s i støjfølsomt område',1,'støjfølsom arealanvendelse ved 8 m/s');
INSERT INTO fkg.d_5508_stoej VALUES (4,'37 dB(A) ved en vindhastighed på 6 m/s i støjfølsomt område',1,'støjfølsom arealanvendelse ved 6 m/s');
INSERT INTO fkg.d_5508_stoej VALUES (9,'Ukendt',1,'Mangler viden om typen');
-- SELECT * FROM d_5508_stoej;


INSERT INTO fkg.d_5600_rute VALUES (1,'Klasse I rute',1,'Veje som har afgørende betydning for fjerntrafikken.');
INSERT INTO fkg.d_5600_rute VALUES (2,'Klasse II rute',1,'Veje som har betydning for fjerntrafikken og/eller afgørende betydning for afvikling af den gennemkørende trafik.');
INSERT INTO fkg.d_5600_rute VALUES (3,'Klasse III rute',1,'Veje som har betydning for afvikling af den gennemkørende og/eller kollektive trafik, eller afgørende betydning for afvikling af den lokale nærtrafik.');
INSERT INTO fkg.d_5600_rute VALUES (4,'Klasse IV rute',1,'Veje som har betydning for afvikling af den lokale nærtrafik.');
INSERT INTO fkg.d_5600_rute VALUES (5,'Klasse V rute',1,'Veje som har mindre betydning for afvikling af trafikken.');
INSERT INTO fkg.d_5600_rute VALUES (6,'Klasse VI rute',1,'Veje som betjener enkeltbruger områder og mindre boligveje.');
-- SELECT * FROM d_5600_rute;
 

INSERT INTO fkg.d_5601_hasti_type VALUES (1,'Forvarsling',1,'Varsling typisk i form af skilte om der kommer en hastighedsdæmpende foranstaltning.');
INSERT INTO fkg.d_5601_hasti_type VALUES (2,'Port',1,'En visuel markering af en byport. Typisk med beplantning, belægningsskift, portaler, belysning og/eller indsnævring');
INSERT INTO fkg.d_5601_hasti_type VALUES (3,'2-sporet bump',1,'Bump der dækker 2 spor (typiske begge retninger).');
INSERT INTO fkg.d_5601_hasti_type VALUES (4,'2-sporet hævet flade',1,'Hævet vejflade der dækker 2 spor (typisk begge retninger) mindste længde 10 meter.');
INSERT INTO fkg.d_5601_hasti_type VALUES (5,'Forsætning',1,'Forskydning af vejen til siden (parallelt)');
INSERT INTO fkg.d_5601_hasti_type VALUES (6,'2-sporet indsnævring fra vejmidte',1,'Helle anlæg mellem kørselsretningerne, men uden at øge den samlet vejbredde tilsvarende, så det enkelte kørespor bliver smallere.');
INSERT INTO fkg.d_5601_hasti_type VALUES (7,'2-sporet indsnævring fra vejkant',1,'Over en kort strækning er vejbredden smallere, men der er stadigvæk to spor.');
INSERT INTO fkg.d_5601_hasti_type VALUES (8,'Indsnævring til 1 spor',1,'Det ene spor blokeres fysisk med blomsterkasse, helle med træ eller lign.');
INSERT INTO fkg.d_5601_hasti_type VALUES (9,'Indsnævring til 1 spor med bump',1,'Bump samtidigt med det ene spor blokeres fysisk med blomsterkasse, helle med træ eller lign.');
INSERT INTO fkg.d_5601_hasti_type VALUES (10,'Indsnævring til 1 spor med hævet flade',1,'Hævet flade samtidigt med det ene spor blokeres fysisk med blomsterkasse, helle med træ eller lign.');
INSERT INTO fkg.d_5601_hasti_type VALUES (11,'Forsætning med indsnævring til 1 spor',1,'Begge spor blokeres forskudt fysisk med blomsterkasse, helle med træ eller lign. Så der kun er et spor tilbage igennem slusen.');
INSERT INTO fkg.d_5601_hasti_type VALUES (12,'Forsætning med indsnævring til 1 spor og bump',1,'Hævet flade samtidig med at det ene spor blokeres fysisk med blomsterkasse, helle med træ eller lign.');
INSERT INTO fkg.d_5601_hasti_type VALUES (13,'Forsætning med indsnævring til 1 spor og hævet flade',1,'Begge spor blokeres forskudt fysisk med blomsterkasse, helle med træ eller lign. Så der kun er et spor tilbage igennem slusen. Udfor eller mellem hver blokering er der en hævet flade.');
INSERT INTO fkg.d_5601_hasti_type VALUES (14,'Rundkørsel',1,'Rundkørsel (ensrettet kørsel omkring en "ø")');
INSERT INTO fkg.d_5601_hasti_type VALUES (15,'Cirkelformet bump',1,'Bump der fra siden har form som en cirkelbue - en del af en cylinderflade.');
INSERT INTO fkg.d_5601_hasti_type VALUES (16,'Modificeret cirkelbump',1,'Bump der fra siden har form som en cirkelbue, men flader ud så den fanger vej i en blød overgang.');
INSERT INTO fkg.d_5601_hasti_type VALUES (17,'Modificeret sinusbump',1,'Bump der fra siden har form som en sinuskurve, men flader ud så den fanger vej i en blød overgang.');
INSERT INTO fkg.d_5601_hasti_type VALUES (18,'Kuppelformet bump',1,'Bump der har form som en kuppel - en del af en kugleflade.');
INSERT INTO fkg.d_5601_hasti_type VALUES (19,'Trapezformet bump',1,'En plan flade med ramper i en ret linje.');
INSERT INTO fkg.d_5601_hasti_type VALUES (20,'Trapezbump med modificeret rampe',1,'En plan flade med ramper i en blød kurve linje.');
INSERT INTO fkg.d_5601_hasti_type VALUES (21,'Kombibump',1,'2 forskellige bump typer inde i hinanden, hvor busser m.v. benytter den ene og biler benytter den anden. Normalt to sæt ramper med forskellige afstand.');
INSERT INTO fkg.d_5601_hasti_type VALUES (22,'Pudebump',1,'Et smalt bump, der tillader store køretøjer at skræve henover bumpet, således at kun mindre køretøjer mærker bumpet ved passage. Der er et pudebump i hvert kørespor.');
INSERT INTO fkg.d_5601_hasti_type VALUES (23,'Pukkelbump',1,'Flere mindre kuppelformede bump, der placeres forskudt i forhold til hinanden. Også kaldet mushrooms, paddehatte, mariehøns eller skildpadder.');
INSERT INTO fkg.d_5601_hasti_type VALUES (24,'Præfabrikeret permanent bumptype',1,'Bump der er fremstillet på en virksomhed og stillet færdige op.');
INSERT INTO fkg.d_5601_hasti_type VALUES (25,'Midlertidig bump',1,'Bump der opsættes til en særlig lejlighed/i kortere tidsrum.');
INSERT INTO fkg.d_5601_hasti_type VALUES (26,'Variabel bump',1,'Bump, der giver efter og jævnes ud, når det passeres af busser og andre store køretøjer.');
INSERT INTO fkg.d_5601_hasti_type VALUES (27,'Rumlefelt',1,'Felt med afvigende belægning eller tværgående smalle striber, der afgiver lyd og skaber opmærksomhed, når man kører henover det');
INSERT INTO fkg.d_5601_hasti_type VALUES (98,'Andet',1,'Hvor ovenstående ikke er dækkende.');
INSERT INTO fkg.d_5601_hasti_type VALUES (99,'Ukendt',1,'Hvor der mangler viden om typen');
-- SELECT * FROM d_5601_hasti_type;


INSERT INTO fkg.d_5602_p_tid VALUES (0,'Ingen tidsbegrænsning',1,'Ikke begrænsning i perioden køretøjet må parkere i.');
INSERT INTO fkg.d_5602_p_tid VALUES (1,'Max 1 time',1,'Parkering er tilladt i op til 1 time.');
INSERT INTO fkg.d_5602_p_tid VALUES (2,'Max 2 timer',1,'Parkering er tilladt i op til 2 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (3,'Max 3 timer',1,'Parkering er tilladt i op til 3 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (4,'Max 4 timer',1,'Parkering er tilladt i op til 4 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (5,'Max 5 timer',1,'Parkering er tilladt i op til 5 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (6,'Max 6 timer',1,'Parkering er tilladt i op til 6 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (7,'Max 7 timer',1,'Parkering er tilladt i op til 7 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (8,'Max 8 timer',1,'Parkering er tilladt i op til 8 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (9,'Max 9 timer',1,'Parkering er tilladt i op til 9 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (10,'Max 10 timer',1,'Parkering er tilladt i op til 10 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (11,'Max 11 timer',1,'Parkering er tilladt i op til 11 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (12,'Max 12 timer',1,'Parkering er tilladt i op til 12 timer.');
INSERT INTO fkg.d_5602_p_tid VALUES (15,'Max 15 minutter',1,'Parkering er tilladt i op til 15 minutter.');
INSERT INTO fkg.d_5602_p_tid VALUES (30,'Max 30 minutter',1,'Parkering er tilladt i op til 30 minutter.');
INSERT INTO fkg.d_5602_p_tid VALUES (45,'Max 45 minutter',1,'Parkering er tilladt i op til 45 minutter.');
INSERT INTO fkg.d_5602_p_tid VALUES (97,'Uden forbudsperiode',1,'Tidsrum hvor der ingen restriktioner er');
INSERT INTO fkg.d_5602_p_tid VALUES (98,'Andet',1,'Anden værdi end muligt at vælge i ovenstående liste.');
INSERT INTO fkg.d_5602_p_tid VALUES (99,'Ukendt',1,'Mangler viden om tidsbegrænsning.');
-- SELECT * FROM d_5602_p_tid;


INSERT INTO fkg.d_5602_p_type VALUES (1,'Betalingszone',1,'Parkering i zonen tilladt mod betaling');
INSERT INTO fkg.d_5602_p_type VALUES (2,'Betalingsfri zone',1,'Parkering i zonen tilladt uden betaling, men så typiske tidsbegrænset og/eller kun på afmærket pladser.');
INSERT INTO fkg.d_5602_p_type VALUES (3,'Beboerparkering',1,'Parkering i zonen på privat ejendom tiltænkt beboere m.v.');
INSERT INTO fkg.d_5602_p_type VALUES (4,'Erhvervsparkering',1,'Parkering i zonen på privat ejendom tiltænkt kontorfolk m.v.');
INSERT INTO fkg.d_5602_p_type VALUES (5,'P-licens',1,'Parkering i zonen med parkeringslicens. F.eks. Beboerlicens.');
INSERT INTO fkg.d_5602_p_type VALUES (8,'Andet',1,'Hvor ovenstående ikke dækker.');
INSERT INTO fkg.d_5602_p_type VALUES (9,'Ukendt',1,'Hvor der mangler viden om zonetype.');
-- SELECT * FROM d_5602_p_type;


INSERT INTO fkg.d_5604_begr_type VALUES (1,'Gågadekørsel',1,'Kørsel med bil og cykel er forbudt som hovedregl en, men tilladt i korte tidsrum af døgnet til f.eks. v arekørsel m.v. til områdets butikker.');
INSERT INTO fkg.d_5604_begr_type VALUES (2,'Varekørsel',1,'Kun varekørsel til området tilladt');
INSERT INTO fkg.d_5604_begr_type VALUES (3,'Sommerkørsel',1,'Kun kørsel i sommerperioden');
INSERT INTO fkg.d_5604_begr_type VALUES (4,'Lastbilkørsel',1,'Begrænset højde, bredde eller befæstelse der hindrer store/tunge køretøjers færdsel');
INSERT INTO fkg.d_5604_begr_type VALUES (5,'Tvangsrute',1,'Tvangsrute for farligt gods');
INSERT INTO fkg.d_5604_begr_type VALUES (6,'Lang transport',1,'Ruter for køretøjer der er > 25 meter lange');
INSERT INTO fkg.d_5604_begr_type VALUES (8,'Andet',1,'Hvor ovenstående ikke er dækkende');
INSERT INTO fkg.d_5604_begr_type VALUES (9,'Ukendt',1,'Mangler viden om begrænsningen');
-- SELECT * FROM d_5604_begr_type;


INSERT INTO fkg.d_5605_dekl_type VALUES (1,'Oversigt',1,'For at sikre oversigt - frit udsyn til trafikanter. Særligt ved vejkryds.');
INSERT INTO fkg.d_5605_dekl_type VALUES (2,'Vejbyggelinje_planlov',1,'Forbud mod alt byggeri efter planloven. Typiske i en bestemt afstand fra vejmidte.');
INSERT INTO fkg.d_5605_dekl_type VALUES (3,'Fjernelse',1,'Byggeri sket på trods af byggelinje, men med krav/de klaration så vejmyndigheden frit kan kræve byggeriet fjernet igen, hvis der skulle opstå behov for dette.');
INSERT INTO fkg.d_5605_dekl_type VALUES (4,'Dispensation_planlov',1,'Der er givet dispensation efter Planloven fra en planmæssig byggelinje.');
INSERT INTO fkg.d_5605_dekl_type VALUES (5,'§34',1,'Vejteknisk byggelinje langs eksisterende veje (Vejlovens §34)');
INSERT INTO fkg.d_5605_dekl_type VALUES (6,'§35',1,'Byggelinjer langs planlagte veje (Vejlovens §35)');
INSERT INTO fkg.d_5605_dekl_type VALUES (7,'Dispensation_vejlov',1,'Der er givet dispensation efter Vejloven fra en vejteknisk byggelinje.');
INSERT INTO fkg.d_5605_dekl_type VALUES (8,'Andet',1,'Andet');
INSERT INTO fkg.d_5605_dekl_type VALUES (9,'Ukendt',1,'Manglende viden');
-- SELECT * FROM d_5605_dekl_type;

INSERT INTO fkg.d_5606_inventar_type VALUES (1,'Pullert',1,'Pæl eller stolpe');
INSERT INTO fkg.d_5606_inventar_type VALUES (2,'Trafikskilte',1,'Trafikskilte med f.eks. vigepligt, parkeringsforbud m.v.');
INSERT INTO fkg.d_5606_inventar_type VALUES (3,'Rampe',1,'Skrående flade, der giver niveaufri passage');
INSERT INTO fkg.d_5606_inventar_type VALUES (4,'P-automater',1,'Automat til at købe parkeringsbillet i.');
INSERT INTO fkg.d_5606_inventar_type VALUES (5,'Signalanlæg (lyssignaler)',1,'Lysregulering typisk i vejkryds.');
INSERT INTO fkg.d_5606_inventar_type VALUES (6,'Vejnavneskilt',1,'Skiltet med vejens navn');
INSERT INTO fkg.d_5606_inventar_type VALUES (7,'Belysning',1,'Gadelys');
INSERT INTO fkg.d_5606_inventar_type VALUES (8,'Pumpestation',1,'Pumpestation for vejanlæg');
INSERT INTO fkg.d_5606_inventar_type VALUES (9,'El-skab',1,'Skab hver der elektriske installationer m.v.');
INSERT INTO fkg.d_5606_inventar_type VALUES (10,'Spærrebum',1,'Spærrebum til blokering af');
INSERT INTO fkg.d_5606_inventar_type VALUES (11,'Fartmåler',1,'Fast fartmåler');
INSERT INTO fkg.d_5606_inventar_type VALUES (12,'Tællerstation',1,'Installation der automatisk tæller biler m.v.');
INSERT INTO fkg.d_5606_inventar_type VALUES (98,'Andet',1,'Andet');
INSERT INTO fkg.d_5606_inventar_type VALUES (99,'Ukendt',1,'Manglende viden');
-- SELECT * FROM d_5606_inventar_type;

INSERT INTO fkg.d_5607_ladefacilitet_type VALUES (1, E'Elladestander til bil', 1, E'En elladestander, der kan bruges til at oplade en elbil eller hybridbil.');
INSERT INTO fkg.d_5607_ladefacilitet_type VALUES (2, E'Elladestander til cykel', 1, E'En elladestander, der kan bruges til at oplade en elcykel.');
INSERT INTO fkg.d_5607_ladefacilitet_type VALUES (3, E'Elladestander til kørestol', 1, E'En elladestander, der kan bruges til at oplade en elektrisk kørestol.');

INSERT INTO fkg.d_5607_effekt_type VALUES (1, E'Normallader', 1, E'3-22 kW');
INSERT INTO fkg.d_5607_effekt_type VALUES (2, E'Hurtiglader', 1, E'50-100 kW');
INSERT INTO fkg.d_5607_effekt_type VALUES (3, E'Lynlader', 1, E'> 150 kW');

INSERT INTO fkg.d_5607_tilgaengelighed_type VALUES (1, E'Offentligt tilgængelig', 1, E'En ladefacilitet eller en tankstation til forsyning med et alternativt drivmiddel, som giver ikkediskriminerende adgang for brugere. Ikkediskriminerende adgang kan omfatte forskellige vilkår for godkendelse, anvendelse og betaling.');
INSERT INTO fkg.d_5607_tilgaengelighed_type VALUES (2, E'Privat ladestander', 1, E'En ladefacilitet eller en tankstation, som ejes af privatejer eller virksomhed og som giver en eksklusiv ret til ejer samt evt. ansatte i virksomhed.');
INSERT INTO fkg.d_5607_tilgaengelighed_type VALUES (3, E'Kommunal bilflåde', 1, E'En ladefacilitet eller en tankstation, som ejes af kommune og som giver en eksklusiv ret til den kommunale bilflåde.');
INSERT INTO fkg.d_5607_tilgaengelighed_type VALUES (4, E'Statslig bilflåde', 1, E'En ladefacilitet eller en tankstation, som ejes af statslig myndighed og som giver en eksklusiv ret til den statslige bilflåde.');

INSERT INTO fkg.d_5700_forening_type VALUES (1,'Andelsboligforening',1,'En forening, der er stiftet med det formål at erhverve, eje og drive den ejendom, som foreningens medlemmer bor i.');
INSERT INTO fkg.d_5700_forening_type VALUES (2,'Borgerforening',1,'Forening af borger/beboer indenfor et område. Dækker ofte mindre bysamfund/landsbyer.');
INSERT INTO fkg.d_5700_forening_type VALUES (3,'Grundejerforening',1,'En forening af grundejer i et område. Nogle gang tvunget medlemskab via lokalplan. Nogle gange kan ikke ejer men beboer i området også være med.');
INSERT INTO fkg.d_5700_forening_type VALUES (4,'Vejlav',1,'En frivillig forening af bruger/grundejer af et vejsystem/-strækning. Primære opgave er vedligeholdelse af en privatejet vejstrækning. Her under også snerydning.');
INSERT INTO fkg.d_5700_forening_type VALUES (5,'Facaderåd',1,'Facaderåd varetager opgaver for kommunen f.eks. i henhold til lokalplan om facader mv.');
INSERT INTO fkg.d_5700_forening_type VALUES (6,'Haveforening',1,'Kolonihaver m.m.');
INSERT INTO fkg.d_5700_forening_type VALUES (7,'Almennyttige boligforeninger',1,'almennyttige boliger, sociale boliger, lejeboliger opført som offentlig støttet boligbyggeri af et godkendt almennyttigt boligselskab; siden 1996 anvendes betegnelsen almene boliger.');
INSERT INTO fkg.d_5700_forening_type VALUES (8,'Andet',1,'Ingen af de andre passer entydigt på objektet.');
INSERT INTO fkg.d_5700_forening_type VALUES (9,'Uoplyst',1,'Mangler viden for at kunne udfylde feltet.');

INSERT INTO fkg.d_5700_adr_beskyt VALUES ('0','Ingen adressebeskyttelse',1,'Ingen adressebeskyttelse');
INSERT INTO fkg.d_5700_adr_beskyt VALUES ('A','Ejers navn og ejendomsoplysninger overføres til vejvisere',1,'Ejers navn og ejendomsoplysninger overføres til vejvisere');
INSERT INTO fkg.d_5700_adr_beskyt VALUES ('B','Adressen er beskyttet i CPR',1,'Adressen er beskyttet i CPR');
INSERT INTO fkg.d_5700_adr_beskyt VALUES ('E','Der overføres ikke oplysning fra ESR til vejvisere',1,'Der overføres ikke oplysning fra ESR til vejvisere');
INSERT INTO fkg.d_5700_adr_beskyt VALUES ('L','Adressen må ikke optages i vejvisere',1,'Adressen må ikke optages i vejvisere');
-- SELECT * FROM d_5700_adr_beskyt;


INSERT INTO fkg.d_5705_udlejning VALUES (1,'Udlejet',1,'Kommunen har udlejet arealet til privt person/virksomhed');
INSERT INTO fkg.d_5705_udlejning VALUES (2,'Vederlagsfrit',1,'udlejnings vilkår: arealet stilles vederlagsfrit til rådighed eller lejes af andre til brug for kommunen');
INSERT INTO fkg.d_5705_udlejning VALUES (3,'Lejet',1,'Kommunen er lejer af arealet');
INSERT INTO fkg.d_5705_udlejning VALUES (4,'Forpagtet',1,'Forpagtning er en aftale mellem to parter, der indebærer, at en person får rådighed over og pligt til at drive den virksomhed, der ejes af den, der bortforpagter.');
INSERT INTO fkg.d_5705_udlejning VALUES (8,'Andet',1,'Ingen af de andre passer entydigt på objektet.');
INSERT INTO fkg.d_5705_udlejning VALUES (9,'Uoplyst',1,'Mangler viden for at kunne udfylde feltet.');
-- SELECT * FROM d_5705_udlejning;


INSERT INTO fkg.d_5706_havn_type VALUES (1,'Erhvervshavn',1,'Havneareal for erhvervshavn med egen ejer/administrator');
INSERT INTO fkg.d_5706_havn_type VALUES (2,'Lystbådehavn',1,'Havneareal for lystbådehavn med egen ejer/administrator');
INSERT INTO fkg.d_5706_havn_type VALUES (3,'Erhvervs- og lystbådehavn',1,'Havneareal for både erhvervshavn og lystbådehavn som administreres samlet');
INSERT INTO fkg.d_5706_havn_type VALUES (8,'Andet',1,'Andet');
INSERT INTO fkg.d_5706_havn_type VALUES (9,'Ukendt',1,'Manglende viden');
-- SELECT * FROM d_5706_havn_type;


INSERT INTO fkg.d_5707_grund_type VALUES (1,'Byggegrund - parcelhus',1,'Grund med ret til at bygge en bolig – parcelhus');
INSERT INTO fkg.d_5707_grund_type VALUES (2,'Byggegrund – sommerhus',1,'Grund med ret til at bygge en fritidsbolig – sommerhus');
INSERT INTO fkg.d_5707_grund_type VALUES (3,'Byggegrund - storparcel',1,'Grund med ret til at bygge flere boligere – parcelhus, rækkehus, boligblok m.v.');
INSERT INTO fkg.d_5707_grund_type VALUES (4,'Byggegrund – Erhverv',1,'Grund med ret til at bygge erhvervsbyggeri');
INSERT INTO fkg.d_5707_grund_type VALUES (5,'Landbrugsjord/mark',1,'Mark/landbrugsjord med ret til at dyrke jorden');
INSERT INTO fkg.d_5707_grund_type VALUES (6,'Parcelhus på egen grund',1,'Eksisterende parcelhus bygget på egen grund');
INSERT INTO fkg.d_5707_grund_type VALUES (7,'Rækkehus på egen grund',1,'Eksisterende rækkehus bygget på egen grund');
INSERT INTO fkg.d_5707_grund_type VALUES (8,'Dobbelthus på egen grund',1,'Eksisterende dobbelthus bygget på egen grund – en bolig/½dobbelthus');
INSERT INTO fkg.d_5707_grund_type VALUES (9,'Ejerlejlighed',1,'Eksisterende lejlighed');
INSERT INTO fkg.d_5707_grund_type VALUES (10,'Erhvervsbyggeri på egen grund',1,'Eksisterende erhvervsbyggeri på egen grund');
INSERT INTO fkg.d_5707_grund_type VALUES (11,'Byggegrund - jordbrugsparcel',1,'Grund med ret til at bygge en bolig med mulihged for mindre dyrehold eller stor have/udenomareal');
INSERT INTO fkg.d_5707_grund_type VALUES (98,'Anden fast ejendom',1,'Hvor andre ejendomstype ikke er dækkende');
-- SELECT * FROM d_5707_grund_type;


INSERT INTO fkg.d_5707_salg_status VALUES (1,'Til salg',1,'Grund til salg');
INSERT INTO fkg.d_5707_salg_status VALUES (2,'Reserveret',1,'Grund reserveret');
INSERT INTO fkg.d_5707_salg_status VALUES (3,'Solgt',1,'Grund solgt');
INSERT INTO fkg.d_5707_salg_status VALUES (4,'Fremtidig',1,'Planlægges sat til salg');
INSERT INTO fkg.d_5707_salg_status VALUES (8,'Andet',1,'Hvor andre salgstyper ikke er dækkende');
INSERT INTO fkg.d_5707_salg_status VALUES (9,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_5707_salg_status;

-- Tema udgået v. 2.4
-- INSERT INTO fkg.d_5708_institution_type VALUES (1,'Vuggestue',1,'Pasningstilbud for børn 0-3 år.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (2,'Børnehave',1,'Pasningstilbud for børn 3-6 år.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (3,'Integreret Institution',1,'Pasningstilbud for børn 0-6 år.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (4,'SFO',1,'Pasnings-/fritidstilbud for skolebørn efter skoletid+ferier');
-- INSERT INTO fkg.d_5708_institution_type VALUES (5,'Fritidsklub',1,'Fritidstilbud for skolebørn 10-13 år.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (6,'Ungdomsklub',1,'Klub for store børn og unge, der er vokset fra pasningsordninger.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (7,'Folkeskole',1,'Den kommunale børneskole i Danmark, der kan består af en enårig børnehaveklasse, en niårig grundskole og en enårig tiendeklasse.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (8,'Privatskole',1,'Privatejet skole, der drives som en fri grundskole. Har gerne et religiøst, pædagogisk eller kulturelt særkende.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (9,'Friskole',1,'fri grundskole, der ud fra en særlig grundholdning, fx religiøs, giver undervisning svarende til folkeskolens krav. Friskoletanken stammer fra Grundtvig og Christen Kold.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (10,'Ungdomsskole',1,'Skoleform for unge mellem 14 og 18 år. Betegnelsen angiver nu sædvanligvis kommunale institutioner, som overvejende tilbyder undervisning i de unges fritid');
-- INSERT INTO fkg.d_5708_institution_type VALUES (11,'Efterskole',1,'speciel dansk skoleform for unge mellem 14 og 18 år');
-- INSERT INTO fkg.d_5708_institution_type VALUES (12,'Plejecentre',1,'');
-- INSERT INTO fkg.d_5708_institution_type VALUES (13,'Pleje- og ældreboliger',1,'Boliger for personer, oftest ældre, der ikke kan klare sig i eget hjem eller i en ældrebolig. Indtil 2005 betegnet plejehjem');
-- INSERT INTO fkg.d_5708_institution_type VALUES (14,'Handicaptilbud',1,'Boliger til handicappende personer der ikke kan bor alene.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (15,'Psykiatritilbud',1,'Boliger til psykiske syge personer, der ikke kan bor alene.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (16,'Handicap og psykiatri',1,'Boliger til psykiske syge og handicappende personer, der ikke kan bor alene.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (17,'Rådhus',1,'Et rådhus er en bygning for centraladministrationen i en kommune, hvor blandt andet kommunalbestyrelsen holder til');
-- INSERT INTO fkg.d_5708_institution_type VALUES (18,'Borgerservice',1,'Borgerens indgang til den offentlige sektor.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (19,'Bibliotek',1,'Bibliotek er en samling af bøger, håndskrifter og andet referencemateriale (kort, film, bånd, etc.) og stedet, hvor disse opbevares.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (20,'Tandpleje',1,'Tandpleje (gratis tandlægebesøg) for børn og unge under 18 år.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (21,'Medborgerhus',1,'Et medborgerhus er en betegnelse for en kulturinstitution, der står til rådighed for en by eller en egns befolkning i f.m. kultur-, forenings - og fritidstilbud. Begrebet Medborgerhus kan relateres til det mere historiske begreb forsamlingshuset, når vi skuer baggrund – og begrebet kulturhus, når vi ser fremefter. Hjemsted for en stor del af kommunens foreningsliv. Udlåner/udlejer lokaler til f.eks. møder, foredrag og kurser');
-- INSERT INTO fkg.d_5708_institution_type VALUES (22,'Kulturhus',1,'En samling af forskellige faciliteter under samme tag. F.eks. musiksteder, biografer, foreninger, idrætsfaciliteter, restaurenter, koncertsale, teater, børnekultur, danseforestillinger, møder, lokale foreninger, motionsfaciliteter, markeder, udstillingslokaler, kreative værksteder m.v.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (23,'Specialskole',1,'En specialskole er en skole for elever, som vurderes ikke at ville kunne følge den normale undervisning i folkeskolen. Eksempler på sådanne elever er døve eller blinde elever, samt elever med autisme, ADHD eller lignende handicaps.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (24,'Musikskole',1,'På en musikskole undervises elever i musikalsk teori (som fx noder og toner) og i at bruge et eller flere musikinstrumenter.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (25,'Højskole',1,'Folkehøjskoler var oprindeligt skoler for voksne mænd og kvinder, hvor der blev givet en undervisning, som tog sigte på at gøre dem til gode statsborgere. Med tiden er fokus blevet mere på personlig udvikling, og ofte specialiserer de enkelte skoler sig særligt i dele af dette.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (26,'Produktionsskole',1,'Produktionsskolen er et praktisk uddannelsestilbud, baseret på værkstedundervisning');
-- INSERT INTO fkg.d_5708_institution_type VALUES (27,'Naturskole',1,'En skole der supplere folkeskolens undervisning, så børn og unge gennem egne oplevelser får indblik i sammenhænge i naturen og dermed øget ansvarsbevi dsthed over for natur og miljø.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (28,'Gymnasium',1,'Gymnasium, almendannende og dermed studieforberedende ungdomsuddannelse. Siden 1903 har betegnelsen været brugt om de tre skoleår forud for studentereksamen.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (29,'Universitet',1,'Universitet, højeste læreanstalt for uddannelse og forskning. Et universitet defineres traditionelt som en institution, der har stor faglig bredde og rummer fag inden for de humanistiske, teologiske, juridiske, samfunds-, sundheds- og naturvidenskabelige discipliner.');
-- INSERT INTO fkg.d_5708_institution_type VALUES (98,'Øvrige institutioner og tilbud',1,'Andre typer institutioner.');
-- SELECT * FROM d_5708_institution_type;

-- Tema udgået v. 2.4
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (1,'Børne',1,'Børnedistrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (2,'Dagpleje',1,'Dagplejedistrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (3,'Klub',1,'Klubdistrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (4,'Plejegruppe',1,'Plejegruppedistrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (5,'Skole',1,'Skoledistrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (6,'Social',1,'Socialdistrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (7,'SSP',1,'SSP-distrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (8,'Sundhedsplejerske',1,'Sundhedsplejerskedistrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (9,'Ældre',1,'Ældredistrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (10,'Ejendomsdrift',1,'Ejendomsdriftsdistrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (11,'Basisdistrikt',1,'Basis- eller statistikdistrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (98,'Andet',1,'Andre distrikter');
-- INSERT INTO fkg.d_5709_distrikt_type VALUES (99,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_5709_distrikt_type;


INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (1,'Børne',1,'Børnedistrikter');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (2,'Dagpleje',1,'Dagplejedistrikter');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (3,'Klub',1,'Klubdistrikter');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (4,'-',0,'-');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (5,'Skole',1,'Skoledistrikter');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (6,'-',0,'-');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (7,'SSP',1,'SSP-distrikter');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (8,'-',0,'-');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (9,'-',0,'-');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (10,'-',0,'-');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (11,'-',0,'-');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (12,'SFO',1,'SFO-distrikter');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (98,'Andet',1,'Andre distrikter');
INSERT INTO fkg.d_5710_udd_distrikt_type VALUES (99,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_5710_udd_distrikt_type;


INSERT INTO fkg.d_5711_an_distrikt_type VALUES (1,'-',0,'-');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (2,'-',0,'-');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (3,'-',0,'-');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (4,'-',0,'-');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (5,'-',0,'-');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (6,'Social',1,'Socialdistrikter');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (7,'-',0,'-');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (8,'-',0,'-');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (9,'-',0,'-');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (10,'Ejendomsdrift',1,'Ejendomsdriftsdistrikter');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (11,'-',0,'-');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (98,'Andet',1,'Andre distrikter');
INSERT INTO fkg.d_5711_an_distrikt_type VALUES (99,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_5711_an_distrikt_type;


INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (1,'-',0,'-');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (2,'-',0,'-');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (3,'-',0,'-');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (4,'Plejegruppe',1,'Plejegruppedistrikter');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (5,'-',0,'-');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (6,'-',0,'-');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (7,'-',0,'-');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (8,'Sundhedsplejerske',1,'Sundhedsplejerskedistrikter');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (9,'Ældre',1,'Ældredistrikter');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (10,'-',0,'-');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (11,'-',0,'-');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (98,'Andet',1,'Andre distrikter');
INSERT INTO fkg.d_5712_plej_distrikt_type VALUES (99,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_5712_plej_distrikt_type;


INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (1,'-',0,'-');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (2,'-',0,'-');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (3,'-',0,'-');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (4,'-',0,'-');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (5,'-',0,'-');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (6,'-',0,'-');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (7,'-',0,'-');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (8,'-',0,'-');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (9,'-',0,'-');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (10,'-',0,'-');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (11,'Basisdistrikt',1,'Distrikt til beregning af befolkningsprognoser');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (98,'Andet',1,'Andre distrikter');
INSERT INTO fkg.d_5713_prog_distrikt_type VALUES (99,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_5713_prog_distrikt_type;


INSERT INTO fkg.d_5714_udd_institution_type VALUES (1,'Vuggestue',1,'Pasningstilbud for børn 0-3 år.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (2,'Børnehave',1,'Pasningstilbud for børn 3-6 år.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (3,'Integreret Institution',1,'Pasningstilbud for børn 0-6 år.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (4,'SFO',1,'Pasnings-/fritidstilbud for skolebørn efter skoletid+ferier');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (5,'Fritidsklub',1,'Fritidstilbud for skolebørn 10-13 år.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (6,'Ungdomsklub',1,'Klub for store børn og unge, der er vokset fra pasningsordninger.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (7,'Folkeskole',1,'Den kommunale børneskole i Danmark, der kan består af en enårig børnehaveklasse, en niårig grundskole og en enårig tiendeklasse.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (8,'Privatskole',1,'Privatejet skole, der drives som en fri grundskole. Har gerne et religiøst, pædagogisk eller kulturelt særkende.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (9,'Friskole',1,'fri grundskole, der ud fra en særlig grundholdning, fx religiøs, giver undervisning svarende til folkeskolens krav. Friskoletanken stammer fra Grundtvig og Christen Kold.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (10,'Ungdomsskole',1,'Skoleform for unge mellem 14 og 18 år. Betegnelsen angiver nu sædvanligvis kommunale institutioner, som overvejende tilbyder undervisning i de unges fritid');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (11,'Efterskole',1,'speciel dansk skoleform for unge mellem 14 og 18 år');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (12,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (13,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (14,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (15,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (16,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (17,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (18,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (19,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (20,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (21,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (22,'-',0,'-');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (23,'Specialskole',1,'En specialskole er en skole for elever, som vurderes ikke at ville kunne følge den normale undervisning i folkeskolen. Eksempler på sådanne elever er døve eller blinde elever, samt elever med autisme, ADHD eller lignende handicaps.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (24,'Musikskole',1,'På en musikskole undervises elever i musikalsk teori (som fx noder og toner) og i at bruge et eller flere musikinstrumenter.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (25,'Højskole',1,'Folkehøjskoler var oprindeligt skoler for voksne mænd og kvinder, hvor der blev givet en undervisning, som tog sigte på at gøre dem til gode statsborgere. Med tiden er fokus blevet mere på personlig udvikling, og ofte specialiserer de enkelte skoler sig særligt i dele af dette.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (26,'Produktionsskole',1,'Produktionsskolen er et praktisk uddannelsestilbud, baseret på værkstedundervisning');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (27,'Naturskole',1,'En skole der supplere folkeskolens undervisning, så børn og unge gennem egne oplevelser får indblik i sammenhænge i naturen og dermed øget ansvarsbevidsthed over for natur og miljø.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (28,'Gymnasium',1,'Gymnasium, almendannende og dermed studieforberedende ungdomsuddannelse. Siden 1903 har betegnelsen været brugt om de tre skoleår forud for studentereksamen.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (29,'Universitet',1,'Universitet, højeste læreanstalt for uddannelse og forskning. Et universitet defineres traditionelt som en institution, der har stor faglig bredde og rummer fag inden for de humanistiske, teologiske, juridiske, samfunds-, sundheds- og naturvidenskabelige discipliner.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (30,'Erhvervsskole',1,'Erhvervsskole varetager den teoretiske del af erhvervsuddannelsen. Typisk tømre, smede, mekanikeker,slagter m.v.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (98,'Øvrige institutioner og tilbud',1,'Andre typer institutioner.');
INSERT INTO fkg.d_5714_udd_institution_type VALUES (99,'Ukendt',1,'Ukendt institutiostype.');
-- SELECT * FROM d_5714_udd_institution_type;


INSERT INTO fkg.d_5715_botilbud_type VALUES (1,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (2,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (3,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (4,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (5,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (6,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (7,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (8,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (9,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (10,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (11,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (12,'Plejecentre',1,'Botilbud for alment svækkede borgere');
INSERT INTO fkg.d_5715_botilbud_type VALUES (13,'Pleje- og ældreboliger',1,'Boliger for personer, oftest ældre, der ikke kan klare sig i eget hjem eller i en ældrebolig. Indtil 2005 betegnet plejehjem');
INSERT INTO fkg.d_5715_botilbud_type VALUES (14,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (15,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (16,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (17,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (18,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (19,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (20,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (21,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (22,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (23,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (24,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (25,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (26,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (27,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (28,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (29,'-',0,'-');
INSERT INTO fkg.d_5715_botilbud_type VALUES (30,'Børnehjem',1,'Botilbud for børn og unge (0 – 17 årige). Der bor flere beboere på botilbuddet');
INSERT INTO fkg.d_5715_botilbud_type VALUES (31,'Pleje familie',1,'Botilbud for børn og unge (0 – 17 årige). Der bor typisk 1 – 2 anbragt børn eller unge.');
INSERT INTO fkg.d_5715_botilbud_type VALUES (32,'Særligt botilbud',1,'Botilbud tilpasset borgere medsærligt behov. Botilbuddet kan f.eks. være rettet med autister, blinde, psykisk syge mv.');
INSERT INTO fkg.d_5715_botilbud_type VALUES (33,'Genoptræningscenter',1,'Botilbud rettet mod genoptræning til eget hjem. Beboer har typisk ikke CPR-adresse på tilbuddet.');
INSERT INTO fkg.d_5715_botilbud_type VALUES (34,'Hospital',1,'Botilbud rettet mod behandling af psykiske eller fysisk sygdom. Beboer har typisk ikke CPR-adresse på tilbuddet.');
INSERT INTO fkg.d_5715_botilbud_type VALUES (35,'Fængsel',1,'Botilbud oprettet i henhold til retsplejeloven Gruppen omfatter også sikringsanstalter.');
INSERT INTO fkg.d_5715_botilbud_type VALUES (36,'Hospice',1,'Botilbud rettet mod terminal behandling af døende borgere');
INSERT INTO fkg.d_5715_botilbud_type VALUES (37,'Herberg',1,'Botilbud rettet mod hjemløse');
INSERT INTO fkg.d_5715_botilbud_type VALUES (98,'Øvrige botilbud',1,'Andre botilbud');
INSERT INTO fkg.d_5715_botilbud_type VALUES (99,'Ukendt',1,'Ukendt botilbudstype');
-- SELECT * FROM d_5715_botilbud_type;


INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (1,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (2,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (3,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (4,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (5,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (6,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (7,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (8,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (9,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (10,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (11,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (12,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (13,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (14,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (15,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (16,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (17,'Rådhus',1,'Et rådhus er en bygning for centraladministrationen i en kommune, hvor blandt andet kommunalbestyrelsen holder til');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (18,'Borgerservice',1,'Borgerens indgang til den offentlige sektor.');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (19,'Bibliotek',1,'Bibliotek er en samling af bøger, håndskrifter og andet referencemateriale (kort, film, bånd, etc.) og stedet, hvor disse opbevares.');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (20,'Tandpleje',1,'Tandpleje (gratis tandlægebesøg) for børn og unge under 18 år');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (21,'Medborgerhus',1,'Et medborgerhus er en betegnelse for en kulturinstitution, der står til rådighed for en by eller en egns befolkning i f.m. kultur-, forenings- og fritidstilbud. Begrebet Medborgerhus kan relateres til det mere historiske begreb forsamlingshuset, når vi skuer baggrund – og begrebet kulturhus, når vi ser fremefter. Hjemsted for en stor del af kommunens foreningsliv. Udlåner/udlejer lokaler til f.eks. møder, foredrag og kurser');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (22,'Kulturhus',1,'En samling af forskellige faciliteter under samme tag. F.eks. musiksteder, biografer, foreninger, idrætsfaciliteter, restaurenter, koncertsale, teater, børnekultur, danseforestillinger, møder, lokale foreninger, motionsfaciliteter, markeder, udstillingslokaler, kreative værksteder m.v.');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (23,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (24,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (25,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (26,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (27,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (28,'-',0,'-');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (29,'-',0,'-');
-- Nye værdier https://github.com/OpenFKG/fkg-postgresql/issues/62
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (30, 'Dagcenter', 1, 'Aktivitetsprægede tilbud med formål at øge og bevare brugernes muligheder for at klare sig selv, f.eks. ved at forebygge forringelse af den fysiske funktionsevne eller af social isolation.');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (31, 'Fysioterapiklinik', 1, 'Klinik til genoptræning til afhjælpning af fysisk funktionsnedsættelse');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (32, 'Behandlingscenter', 1, 'Institution der tilbyder ambulant behandling af misbrugsproblemer (stof og/eller alkohol) el. andre psykiske og fysiske lidelser.   Kommunalbestyrelsen skal tilbyde behandling af stofmisbrugere jf. Servicelovens § 101 og alkoholbehandling jf. Sundhedslovens §141.');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (33, 'Værested', 1, 'Sted hvor man kan komme, tilbringe tiden og møde andre især om opholdssted for fx børn og unge, hjemløse, psykisk syge el. narkomaner der kommer ind fra gaden og får rådgivning m.m. af frivillige');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (34, 'Sygeplejeklinik', 1, 'På sygeplejeklinikker tilbydes kommunale sygeplejeydelser. Sygeplejeydelser kan også tilbydes i borgerens eget hjem.');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (35, 'Krisecenter', 1, 'Krisecentre tilbyder husly og støtte til kvinder og børn, der har været udsat for vold eller trusler om vold i hjemmet. Man har mulighed for at bo på krisecentret i en kortere eller længere periode.    Tilbud om ophold på krisecenter er jf. servicelovens § 109.');
--
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (98,'Øvrige tilbud',1,'Andet');
INSERT INTO fkg.d_5716_Servicetilbud_type VALUES (99,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_5716_Servicetilbud_type;


INSERT INTO fkg.d_5800_facilitet VALUES (1012, 'Toilet', 1, 'WC i bygning/muldtoilet, der er åbent for offentligheden.');
INSERT INTO fkg.d_5800_facilitet VALUES (1022, 'Bålplads', 1, 'Afgrænset plads til bål eller grill til offentlig brug.  Ikke alle bålsteder har grill-muligheden.');
INSERT INTO fkg.d_5800_facilitet VALUES (1031, 'Legeplads', 1, 'En legeplads er et afgrænset sted udendørs, som er tilrettelagt for at børn kan lege der.');
INSERT INTO fkg.d_5800_facilitet VALUES (1041, 'Naturlegeplads', 1, 'Legeplads ude i naturen typisk bygget med naturens egne matrialer. Træstammer og sten m.v.');
INSERT INTO fkg.d_5800_facilitet VALUES (1051, 'Badestrand/-sted', 1, 'Område, der anvendes til badning. Særligt udpegede, servicerede ikke nødvendigvis certificerede. Fælles navn for hav- og søbade.');
INSERT INTO fkg.d_5800_facilitet VALUES (1061, 'Blå Flag strand', 1, 'Badeområde eller havne, der er tildelt Blå Flag.');
INSERT INTO fkg.d_5800_facilitet VALUES (1062, 'Badepunkt', 1, 'Badested tildelt Det nordiske kystflag.'); --https://github.com/OpenFKG/fkg-postgresql/issues/62
INSERT INTO fkg.d_5800_facilitet VALUES (1072, 'Blå Flag facilitet', 1, 'Faciliteter til Blå Flag badestrande, f.eks. infostandere, redningsposter mm.');
INSERT INTO fkg.d_5800_facilitet VALUES (1082, 'Spejderhytte', 1, 'Bygning, hvor en eller flere spejdergrupper holder til.');
INSERT INTO fkg.d_5800_facilitet VALUES (1091, 'Friluftsbad/Svømmebad', 1, 'Område med et eller flere badebassinner, der kan være overdækket eller under åben himmel. Dækker også havnebad.');
INSERT INTO fkg.d_5800_facilitet VALUES (1102, 'Slæbested', 1, 'Anlæg til ophaling eller isætning af mindre både, evt. med spil.');
INSERT INTO fkg.d_5800_facilitet VALUES (1112, 'Motionsmødested', 1, 'Herunder trailhead og lignende. Mødested hvorfra flere rekreative ruter udgår, som kan være udgangspunkt for fælles motion og aktivitet. Ved et Trailhead findes infotavler eller anden form for information, p-plads og evt. andre simple faciliteter i umiddelbar nærhed.');
INSERT INTO fkg.d_5800_facilitet VALUES (1122, 'Cykelpumpestation/-servicepost', 1, 'Sted hvor der er opstillet cykelpumpe og evt. andre faciliteter til service af cykler.');
INSERT INTO fkg.d_5800_facilitet VALUES (1132, 'Tørvejrsrum/Madpakkehus', 1, 'Halvåbent, overdækket sted, hvor du kan raste og spise medbragt mad.');
INSERT INTO fkg.d_5800_facilitet VALUES (1142, 'Virtuelt oplevelsespunkt', 1, 'Virtuelle oplevelsespunkter/Hotspots, som kan tilgås fx via apps eller lignende.');
INSERT INTO fkg.d_5800_facilitet VALUES (1152, 'Info-tavle', 1, 'Opstillet skilt, planche eller tavle med information om et område og dets muligheder.');
INSERT INTO fkg.d_5800_facilitet VALUES (1162, 'Cykelparkering', 1, 'Opstillet cykelstativ eller anden fast opstilling, der gør det muligt at parkere sin cykel.');
INSERT INTO fkg.d_5800_facilitet VALUES (1172, 'Ladestation', 1, 'Ladestation til el-cykler.');
INSERT INTO fkg.d_5800_facilitet VALUES (1182, 'Turistinformation', 1, 'Kontor/lokaler, der har til formål at informere turister om lokalområdet.');
INSERT INTO fkg.d_5800_facilitet VALUES (1191, 'Hundeskov/Hundepark/fritløbsareal', 1, 'Særligt udpeget og eventuelt indhegnet område for hundeluftning, hvor hunde må løbe frit, under forudsætning af ”fuld kontrol af hunden”. Kommunale og private områder.');
INSERT INTO fkg.d_5800_facilitet VALUES (1201, 'Borde-bænke/Picnic', 1, 'Plads med borde, siddepladser, evt. hængekøjer og andre ting til roligt ophold.');
INSERT INTO fkg.d_5800_facilitet VALUES (1211, 'Vandlegeplads', 1, 'Legeplads med særlige redskaber og faciliteter til leg med vand.');
INSERT INTO fkg.d_5800_facilitet VALUES (1222, 'Vandpost', 1, 'Offentligt tilgængeligt drikkevand. Kan være lukket om vinteren.');
INSERT INTO fkg.d_5800_facilitet VALUES (1232, 'Trækfærge', 1, 'En trækfærge er en pram som er forbundet med en wire. Trækfærgen forbinder bredderne på en å eller et vandløb så man kan med egen trækkraft komme over på den anden side.');
INSERT INTO fkg.d_5800_facilitet VALUES (1242, 'Livreddertårn', 1, 'Bemandet redningspost (rød og hvidstribet tårn) af specieluddannede kystlivreddere og udstyret med blandt andet hjertestartere, rescue boards og førstehjælpsudstyr.');
INSERT INTO fkg.d_5800_facilitet VALUES (1252, 'Livredderpost', 1, 'Ubemandet redningspost der typisk indeholder: Vejlednig, 1 redningskrans, 1 sejldugstaske med 220 m nylon line, 2 redningsveste, 2 gjordbælter med karbinhage og evt. isstige og issyle.');
INSERT INTO fkg.d_5800_facilitet VALUES (1261, 'Badevandsflag',	1, 'Badeområde der er tildelt badevandsflag, der ikke er Blå Flag.');
INSERT INTO fkg.d_5800_facilitet VALUES (1272, 'Badevandsflag facilitet', 1, 'Faciliteter til strande med badevandsflag, der ikke er Blå Flag, f.eks. førstehjælpskasser, skilte på vandkvalitetsmålinger, nødtelefon.');
INSERT INTO fkg.d_5800_facilitet VALUES (1281, 'Hesteophold', 1, 'Mindre indhegning m.v. til heste, som kan benyttes i forbindelse med midlertidigt ophold. Evt. en del af et høhotel.');
INSERT INTO fkg.d_5800_facilitet VALUES (1291, 'Holdeplads', 1, 'Holdeplads i tilknytning til rekreative områder/faciliteter og som ikke er registreret andre steder. Man kan angive om holdepladsen er egnet til f.eks. hestetrailer i beskrivelsesfeltet.');
INSERT INTO fkg.d_5800_facilitet VALUES (1302, 'Formidlingscenter', 1, 'Herunder trailcenter, gateway, port mv. Sted eller bygning som er udgangs- og knudepunkt for formidling af natur og aktiviteter samt oplevelser og ophold i det omkringliggende landskab. Indeholder relevante services og faciliteter eller skiltning/vejvisning dertil.');
INSERT INTO fkg.d_5800_facilitet VALUES (1311, 'Spang', 1, 'Simpel bro. Typisk bestående af udlagte stammer eller brædder.');
INSERT INTO fkg.d_5800_facilitet VALUES (1321, 'Stente', 1, 'Lille dobbelt stige med form som et omvendt V der fører over et hegn eller gærde omkring en mark med fx køer.');
INSERT INTO fkg.d_5800_facilitet VALUES (1331, 'Badebro', 1, 'Bro med adgang til badning.');
INSERT INTO fkg.d_5800_facilitet VALUES (1341, 'Bro', 1, 'Bro.');
INSERT INTO fkg.d_5800_facilitet VALUES (1351, 'Parkeringsplads', 1, 'En parkeringsplads/et område er et officielt sted beregnet til at henstille køretøjer på, når de ikke bruges.');
INSERT INTO fkg.d_5800_facilitet VALUES (1361, 'Fodhviler', 1, '');
INSERT INTO fkg.d_5800_facilitet VALUES (1371, 'Bænk', 1, '');
INSERT INTO fkg.d_5800_facilitet VALUES (2012, 'Fugletårn/Udsigtstårn', 1, 'Platform, tårn eller skjul som giver mulighed for udsigt over et område eller særlige seværdigheder, fx udsyn til områdets fugle, dyreliv, landskab mv.');
INSERT INTO fkg.d_5800_facilitet VALUES (2022, 'Udsigtspunkt', 1, 'Punkt med en god udsigt. Ofte på toppen af en høj eller skrænt. Kan også være fra en bygning.');
INSERT INTO fkg.d_5800_facilitet VALUES (2031, 'Fiskesø', 1, 'Put&take sø. Sted hvor man kan købe dagskort til at fiske efter udsatte fisk.');
INSERT INTO fkg.d_5800_facilitet VALUES (2041, 'Rekreativt naturområde', 1, 'Naturområde hvor borgere kan opholde sig og rekreere. Fordybelsessted.');
INSERT INTO fkg.d_5800_facilitet VALUES (2051, 'Park', 1, 'Grønt byområde anlagt med en blanding af buske, træer, blomster og græs.');
INSERT INTO fkg.d_5800_facilitet VALUES (2062, 'Naturcenter', 1, 'Bygningsfacilitet som er udgangspunkt for offentlig naturformidling og aktivteter i et naturområde. Oftest med ansat personale.');
INSERT INTO fkg.d_5800_facilitet VALUES (2072, 'Naturbase', 1, 'Plads i naturområde med mulighed for ophold, lån af grej, bålplads mm.');
INSERT INTO fkg.d_5800_facilitet VALUES (2082, 'Naturskole', 1, 'Bygningsfacilitet med primært formål at facilitere naturaktiviteter og undervisning for skoler og institutioner o.lign.');
INSERT INTO fkg.d_5800_facilitet VALUES (2092, 'Udstilling', 1, 'Offentlig tilgængelig formidling eller introduktion til et områdes natur- eller kulturforhold. Ofte placeret i mindre bygning eller vejrly.');
INSERT INTO fkg.d_5800_facilitet VALUES (2102, 'Naturrum', 1, 'Bygning og støttepunkt for naturformidling efter Friluftsrådets koncept og definition.');
INSERT INTO fkg.d_5800_facilitet VALUES (2111, 'Naturpark', 1, 'Naturpark af regional betydning, jf. mærkningsordning ved Friluftsrådet.');
INSERT INTO fkg.d_5800_facilitet VALUES (2121, 'Nationalpark', 1, 'Nationalpark anerkendt af staten.');
INSERT INTO fkg.d_5800_facilitet VALUES (2132, 'Kælkebakke', 1, 'Område med mulighed for at kælke, når der er snedække.');
INSERT INTO fkg.d_5800_facilitet VALUES (2141, 'Terapihave', 1, 'Specielt indrettede haveanlæg med terapeutisk og stressforebyggende formål.');
INSERT INTO fkg.d_5800_facilitet VALUES (2151, 'Spiselig vegetation', 1, 'Areal med offentligt tilgængelige spiselige planter, frugt, nødder, grønsager mm.');
INSERT INTO fkg.d_5800_facilitet VALUES (2161, 'Oplevelsespunkt', 1, 'Plads i naturområde eller friluftsanlæg med mulighed for ophold, naturoplevelser, evt. lån af grej, bålplads, information mm. Herunder oplevelsespunkt i havne f.eks. kaldet Oplevelseshavn.');
INSERT INTO fkg.d_5800_facilitet VALUES (2171, 'Frit fiskeri',	1, 'Område ved sø eller å, hvor der er en udvidet ret ud over den almindelig ret til at fiske ved danske kyster med gyldigt dansk fisketegn.');
INSERT INTO fkg.d_5800_facilitet VALUES (2183, 'Geopark', 1, 'Et særligt udpeget naturområde, hvor den geologiske historie kan studeres og opleves. Geoparker har til formål at beskytte, formidle og understøtte den geologiske arv.');
INSERT INTO fkg.d_5800_facilitet VALUES (2191, 'Seværdighed - Fauna', 1, 'Seværdighed indenfor dyreriget');
INSERT INTO fkg.d_5800_facilitet VALUES (2201, 'Seværdighed – Flora', 1, 'Seværdighed indenfor planteriget');
INSERT INTO fkg.d_5800_facilitet VALUES (2211, 'Seværdighed – Geologi', 1, 'Geologisk seværdighed ');
INSERT INTO fkg.d_5800_facilitet VALUES (2223, 'Naturkanon', 1	, 'Statens udpegede steder. Naturkanon steder/områder. Indmeldes kun af staten/MST.');
INSERT INTO fkg.d_5800_facilitet VALUES (2231, 'Naturnationalpark', 1  , 'Statens udpegede naturnationalparker.');
INSERT INTO fkg.d_5800_facilitet VALUES (3012, 'Shelter', 1, 'Primitiv overdækket overnatningsmulighed. En shelter kan være alt fra nogle stolper og en presenning, over klassiske sheltere, til simple hytter med overnatningspladser. Åbne i en eller flere sider.'); -- https://github.com/OpenFKG/fkg-postgresql/issues/62
INSERT INTO fkg.d_5800_facilitet VALUES (3022, 'Kano/kajak overnatningsplads', 1, 'Rasteplads til kano-/kajakfarer med mulighed for overnatning.');
INSERT INTO fkg.d_5800_facilitet VALUES (3031, 'Teltplads', 1, 'Sted til at slå telt op for overnatning.');
INSERT INTO fkg.d_5800_facilitet VALUES (3041, 'Campingplads', 1, 'Overnatningssted til campingvogne og telte.');
INSERT INTO fkg.d_5800_facilitet VALUES (3051, 'Hytter og Lejrskoler', 1, 'Udlejningshytter med plads til mange. Typiske med sovesale og storkøkken.');
INSERT INTO fkg.d_5800_facilitet VALUES (3061, 'Feriecenter', 1, 'En samling ferielejligheder, der danner rammen om familiens ophold på feriecenteret, samt en række fælles faciliteter, hvor der tilbydes en bred vifte af aktiviteter.');
INSERT INTO fkg.d_5800_facilitet VALUES (3071, 'Fri teltning', 1, 'Større område, hvor der frit må slås telt op og overnattes en enkelt nat, uden at der skal søges tilladelse i forvejen. Der må højest slå to telte og teltene må maks være trepersoners telte.');
INSERT INTO fkg.d_5800_facilitet VALUES (3081, 'Hængekøjelund', 1, 'Område indrettet enten med træer eller pæle, som er placeret med en afstand, som passer til at opsætte hængekøjer imellem. De anvendes ofte til overnatning af store grupper, som ønsker at sove i hængekøje.');
INSERT INTO fkg.d_5800_facilitet VALUES (3091, 'Bålhytte', 1, 'Overdækket bålsted. Ofte med delvis sidebeklædning og hul i taget, så røgen kan slippe ud.');
INSERT INTO fkg.d_5800_facilitet VALUES (4011, 'Idrætshal', 1, 'Kaldes også for sportshal. Stor hal hvor i der kan dyrkes en eller flere former for fysisk sport.');
INSERT INTO fkg.d_5800_facilitet VALUES (4021, 'Svømmehal', 1, 'Opvarmet svømmebassin inde i en bygning.');
INSERT INTO fkg.d_5800_facilitet VALUES (4031, 'Idrætsanlæg', 1, 'Bane hvor på der kan dyrkes en eller flere former for fysisk sport, f.eks. atletik, fodbold, baseball mm.');
INSERT INTO fkg.d_5800_facilitet VALUES (4041, 'Cykelbane', 1, 'Område til fx MTB  og BMX.');
INSERT INTO fkg.d_5800_facilitet VALUES (4051, 'Agilitybane', 1, 'Agilitybane er en hundesportsbane, hvor hundene skal tage en række forhindringer korrekt og i den rette rækkefølge.');
INSERT INTO fkg.d_5800_facilitet VALUES (4061, 'Modelflyveplads', 1, '”Lufthavn” for modelflyvere.');
INSERT INTO fkg.d_5800_facilitet VALUES (4071, 'Skøjtebane', 1, 'Bane til skøjteløb om vinteren på søer eller kunstige isbaner i byer både indendørs og udendørs.');
INSERT INTO fkg.d_5800_facilitet VALUES (4081, 'Minigolfbane', 1, 'Anlæg til at spille minigolf på, hvor banelængden normalt er under 10 m.');
INSERT INTO fkg.d_5800_facilitet VALUES (4091, 'Golfbane', 1, 'En golfbane er et idrætsanlæg, hvorpå man spiller golf. Den består af et antal huller, oftest 18, men for mindre baners vedkommende 9, mens store baner kan have 27 eller 36 huller.');
INSERT INTO fkg.d_5800_facilitet VALUES (4101, 'Discgolfanlæg', 1, 'Område med udpegede fairways og opstillede ”kurve” til spillet frisbee-golf/discgolf.');
INSERT INTO fkg.d_5800_facilitet VALUES (4111, 'Boldbane', 1, 'Baner indrettet til boldspil.');
INSERT INTO fkg.d_5800_facilitet VALUES (4121, 'Skydebaneanlæg', 1, 'En eller flere baner til skydning, fx kort- og langdistanceskydning.');
INSERT INTO fkg.d_5800_facilitet VALUES (4132, 'Pentanquebane', 1, 'En eller flere baner til petanque.');
INSERT INTO fkg.d_5800_facilitet VALUES (4142, 'Skateranlæg', 1, 'Anlæg, plads eller bane som rummer anlagte udfordringer til skatere, BMXcykler m.fl.');
INSERT INTO fkg.d_5800_facilitet VALUES (4152, 'Parkouranlæg', 1, 'Plads/område med særlige faciliteter til at udøve parkour i.');
INSERT INTO fkg.d_5800_facilitet VALUES (4161, 'Rideanlæg', 1, 'Placering for ridecenter eller –klub.');
INSERT INTO fkg.d_5800_facilitet VALUES (4172, 'Beachvolleybane', 1, 'Udendørs areal afsat til spillet beachvolley.');
INSERT INTO fkg.d_5800_facilitet VALUES (4182, 'Dykkerspot', 1, 'Område med seværdigheder og oplevelsesmuligheder under vand, fx vrag, rev, dyreliv mv.');
INSERT INTO fkg.d_5800_facilitet VALUES (4191, 'Kitesurf område', 1, 'Område anvist til kitesurfing.');
INSERT INTO fkg.d_5800_facilitet VALUES (4201, 'Windsurfområde', 1, 'Område anvist til windsurfing.');
INSERT INTO fkg.d_5800_facilitet VALUES (4211, 'Kitebuggyområde', 1, 'Område anvist til kørsel med kitebuggy.');
INSERT INTO fkg.d_5800_facilitet VALUES (4222, 'Udendørs Fitness/Motionsplads', 1, 'Baner, områder og redskaber under åben himmel, evt. i naturen som er designet til at dyrke motion og fitness, fx naturfitness, sundhedsplads, motionsplads, pulspark mv.');
INSERT INTO fkg.d_5800_facilitet VALUES (4231, 'Flugtskydningsbane', 1, 'Lerdueskydningsbane.');
INSERT INTO fkg.d_5800_facilitet VALUES (4241, 'Motorsportsbane', 1, 'Bane, hvor der udøves motorsport.');
INSERT INTO fkg.d_5800_facilitet VALUES (4251, 'Ketchersportsanlæg', 1, 'Udendørs og/eller indendørs anlæg eller bane til ketchersport, herunder tennis og squash.');
INSERT INTO fkg.d_5800_facilitet VALUES (4262, 'Rulleskøjtebane', 1, 'Udendørs eller indendørs anlæg indrettet til rulleskøjteløb.');
INSERT INTO fkg.d_5800_facilitet VALUES (4272, 'Klatreanlæg', 1, 'Område med opsatte klatreudfordringer eller forhindringsbane f.eks. i træer, klatrevægge, wireforløb mm.');
INSERT INTO fkg.d_5800_facilitet VALUES (4281, 'Cricketbane', 1, 'Bane til spillet Cricket');
INSERT INTO fkg.d_5800_facilitet VALUES (4291, 'Krolfbane', 1, 'Bane til spillet Krolf');
INSERT INTO fkg.d_5800_facilitet VALUES (4301, 'UV-jagtspot', 1, 'Område der er velegnet til undervands-jagt.');
INSERT INTO fkg.d_5800_facilitet VALUES (4311, 'Snorkelsti/-område', 1, 'Rute/område under vandet til snorkling, markeret f.eks. med et tov langs bunden eller med bøjer. Der kan i forbindelse med ruten formidles om de ting der kan opleves, fx via billeder, tekst eller effekter.');
INSERT INTO fkg.d_5800_facilitet VALUES (4322, 'Orienteringsrute startpunkt', 1, '"Find vej i"/orienteringsrute med afmærkede poster, hvor det handler om at finde vej til de opsatte poster ved hjælp af et kort. Viser blot startpunktet/-pælen.');
INSERT INTO fkg.d_5800_facilitet VALUES (4332, 'Orienteringsrute slutpunkt', 1, '"Find vej i"/orienteringsrute med afmærkede poster, hvor det handler om at finde vej til de opsatte poster ved hjælp af et kort. Viser blot slutpunktet/-pælen.');
INSERT INTO fkg.d_5800_facilitet VALUES (4342, 'Bindebom', 1, 'Sted hvor man kan tøjre en hest');
INSERT INTO fkg.d_5800_facilitet VALUES (4351, 'Skibakke', 1, 'Område med mulighed for at stå på ski i forbindelse med snevejr.');
INSERT INTO fkg.d_5800_facilitet VALUES (4361, 'Fodboldgolf', 1, 'Anlæg/bane til fodboldgolf.');
INSERT INTO fkg.d_5800_facilitet VALUES (4371, 'Bueskydning', 1, 'Bane til bueskydning.');
INSERT INTO fkg.d_5800_facilitet VALUES (4381, 'Strandhåndboldbane', 1, 'Bane hvor man kan spille strandhåndbold.');
INSERT INTO fkg.d_5800_facilitet VALUES (4391, 'Hundetræningsareal', 1, 'Areal hvor man kan træne hunde.');
INSERT INTO fkg.d_5800_facilitet VALUES (4401, 'Overbæringssted', 1, 'Sted hvor der kan overbæres kanoer mv.');
INSERT INTO fkg.d_5800_facilitet VALUES (4411, 'Fiskeplatform', 1, 'Bro el.lign. hvorfra fiskeri er velegent');
INSERT INTO fkg.d_5800_facilitet VALUES (5011, 'Forsamlingshus', 1, 'Et forsamlingshus er byens kulturhus og mødested.');
INSERT INTO fkg.d_5800_facilitet VALUES (5021, 'Museum', 1, 'Museum er en permanent institution med udstilling og formidling af f.eks. kunst, kulturhistorie eller naturhistorie.');
INSERT INTO fkg.d_5800_facilitet VALUES (5031, 'Teater', 1, 'Sted, hvor der opføres teater eller andre kulturelle opførelser. Herunder også amfiteater.');
INSERT INTO fkg.d_5800_facilitet VALUES (5041, 'Forlystelsesanlæg', 1, 'En park med flere faste forlystelser, typisk for hele familien.');
INSERT INTO fkg.d_5800_facilitet VALUES (5051, 'Biograf', 1, 'En biograf er et sted, sædvanligvis en bygning, hvor man fremviser film.');
INSERT INTO fkg.d_5800_facilitet VALUES (5061, 'Foreningshus', 1, 'Hus der kan huse en række forskellige foreningers aktiviteter og administration.');
INSERT INTO fkg.d_5800_facilitet VALUES (5072, 'Formidling af fortidsminder', 1, 'Særligt udvalgte fortidsminder til fokus.');
INSERT INTO fkg.d_5800_facilitet VALUES (5082, 'Historiske steder', 1, 'Lokalitet eller område, hvor særlige historiske begivenheder har fundet sted.');
INSERT INTO fkg.d_5800_facilitet VALUES (5092, 'Lokal- eller sogne-arkiv', 1, 'Lokalt arkiv til opbevaring af indsamlet viden om kultur og historie i nærmiljøet – herunder evt også kirkehistorie.');
INSERT INTO fkg.d_5800_facilitet VALUES (5102, 'Kunst', 1, 'Udendørs kunst, som fx skulpturer, gavlmalerier og land-art');
INSERT INTO fkg.d_5800_facilitet VALUES (6011, 'Bådplads', 1, 'Fortøjningssted til både/joller.');
INSERT INTO fkg.d_5800_facilitet VALUES (6021, 'Rostadion', 1, 'Område på sø til konkurrence roning.');
INSERT INTO fkg.d_5800_facilitet VALUES (6031, 'Umotoriseret sejlads tilladt', 1, 'Område, hvor det er tilladt at sejle i kano el. lign. Udpeges f.eks. på vandflade, hvor der ellers er generelt sejlforbud.');
INSERT INTO fkg.d_5800_facilitet VALUES (6042, 'Sejlsports- og roklub', 1, 'Klubhus, hvorfra der udøves sejlsport.');
INSERT INTO fkg.d_5800_facilitet VALUES (6052, 'Kano-/kajakrasteplads', 1, 'Rasteplads til kano- og/eller kajakfarer samt SUP (StandUpPadleboard).');
INSERT INTO fkg.d_5800_facilitet VALUES (6062, 'Ophaler-/isætningsplads', 1, 'Plads til isætning optagning af ikke motoriserede småbåde (kano, kajak o.lign.)');
INSERT INTO fkg.d_5800_facilitet VALUES (6071, 'Svajeplads', 1, 'Svajeplads/Bøje med mulighed for opankning.');
INSERT INTO fkg.d_5800_facilitet VALUES (6081, 'Vandscooter tilladt', 1, 'Sejlads med vandscooter tilladt. Dog i 300m-kystzonen kun vinkelret på kysten og med max 5 knob.');
INSERT INTO fkg.d_5800_facilitet VALUES (9981, 'Andet', 1, 'Hvor andre facilitetsbetegnelser ikke er dækkende.');
INSERT INTO fkg.d_5800_facilitet VALUES (9991, 'Ukendt', 1, 'Mangler viden om typen.');
-- SELECT * FROM fkg.d_5800_facilitet;


-- Udgået i 2.5.x
-- INSERT INTO fkg.d_5802_fremkommelighed VALUES (1,'Stor fremkommelighed',1,'Strækning med ingen eller små stigninger. Egnet til barnevogn mm');
-- INSERT INTO fkg.d_5802_fremkommelighed VALUES (2,'Middel fremkommelighed',1,'Strækning med middel fremkommelighed. Stigninger og strækninger uden belægning  kan forekomme.');
-- INSERT INTO fkg.d_5802_fremkommelighed VALUES (3,'Ringe fremkommelighed',1,'Strækning til fx MTB eller vandrestøvler. Store stigninger og løst underlag kan forekomme.');
-- INSERT INTO fkg.d_5802_fremkommelighed VALUES (8,'Andet',1,'Andet');
-- INSERT INTO fkg.d_5802_fremkommelighed VALUES (9,'Ukendt',1,'Mangler viden om fremkommeligheden');
-- SELECT * FROM fkg.d_5802_fremkommelighed;

INSERT INTO fkg.d_5800_saeson VALUES
(1, 'Helårsåbent',      1, 'Faciliteten er åbent hele året'),
(2, 'Sæsonåbent',       1, 'Faciliteten er åbent kun i sæsonen. Sæson/åbningstider kan/bør noteres i andre felter'),
(7, 'Ej relevant',      1, 'Angivelse af sæson er ikke relevant-'),
(8, 'Andet',            1, 'Andet'),
(9, 'Ukendt',           1, 'Mangler viden om fremkommeligheden');

INSERT INTO fkg.d_5800_kvalitet VALUES
(1, 'TurismQ2021',      1, 'Data om faciliteten er kvalitetssikret i 2021'),
(9, 'Ukendt',           1, 'Mangler viden om kvalitetssikring af facilitetens data');

INSERT INTO fkg.d_5802_rutetype VALUES
(1, 'Skirute',          1, 'Skiløberute på afmærkede og uafmærkede ruter i naturen.'),
(2, 'Løberute',         1, 'Løberute på afmærkede og uafmærkede ruter langs veje og i naturen.'),
(3, 'Cykelrute',        1, 'Rute for cykler, afmærket på kort og evt. i terræn.'),
(4, 'Mountainbikerute', 1, 'Afmærket eller uafmærket rute for mountainbikes.'),
(5, 'Vandrerute',       1, 'Rute velegnet til vandring.'),
(6, 'Motionsrute',      1, 'Rute udpeget til motionsformål – typisk løb eller gang.'),
(7, 'Undervandsrute',   1, 'Afmærket eller uafmærket rute under vand for snorkeldykkere/dykkere.'),
(8, 'Riderute',	        1, 'Afmærket eller uafmærket rute til færdsel til hest.'),
(9, 'Sejlrute',	        1, 'Afmærket eller beskrevet rute for kano- og kajak-sejlads.'),
(10,'Gratis fiskeri',	0, 'Strækning med gratis fiskeri.'),
(11,'Rekreativ sti',	0, 'Vandresti med fokus på det rekreative.'),
(12,'Adgangsvej',	    0, 'Sti eller spor med fri adgang, der fører hen til facilitet.'),
(13,'Bilrute',          1, 'Skiltet rute forbi seværdigheder og smuk natur. Tiltænkt biler og motorcyklister. Kan også være velegnet for cyklister.'),
(14,'Trec-bane',        1, 'Rideaktivitetsbane i naturen for heste og ryttere.'),
(15,'Svømmerute',       1, 'Svømmerute.'),
(98,'Andet',            1, 'Hvor andre facilitetsbetegnelser ikke er dækkende.'),
(99,'Ukendt',           1, 'Mangler viden om rutetypen.');

INSERT INTO fkg.d_5802_svaerhed VALUES
(1, 'Meget let',        1, 'MTB: MTB rytter nybegynder/uden grundlæggende færdigheder'),
(2, 'Let',              1, 'Vandreruter: Asfalt, stenmel eller andet fast underlag. Fortrinsvis flad rute, moderate stigninger ingen stejle op og nedgange. Cykelruter: Landeveje og cykelstier, asfalt underlag, ingen eller få/korte svære passager, egnet til ryttercykel. MTB: MTB rytter med grundlæggende færdigheder'),
(3, 'Middel/Moderat',   1, 'Vandreruter: Blandet underlag f.eks. asfalt, stenmel eller andet fast underlag, men også mere udfordrende og blødt underlag i form af f.eks. skovstier og spor. Mere udfordrende stigninger og nedgange kan forekomme (varieret terræn!), med broovergange, klaplåger, trapper og lignende. Cykelruter: Blanding af asfalt og grusveje, kan indeholde sværere passager, egnet til turcykling. MTB: Den øvede MTB rytter'),
(4, 'Svær/udfordrende', 1, 'Vandreruter: Trampestier i åbent og lukket terræn – skove, kyster mv. Udfordrende stigninger og nedgange kan forekomme (stejlt terræn), med stenter, gangbrædder, trin og lignende. Mange typer af udfordringer kan forekomme. Cykelruter: Forvent skovveje og mindre vedligeholdte spor, bedst egnet til kraftigere turcykler med brede dæk. MTB: Ekspert MTB rytter'),
(5, 'Ekstrem',          1, 'MTB: Specialiserede discipliner og ofte højrisiko MTB kørsel'),
(8, 'Andet',            1, 'Andet'),
(9, 'Ukendt',           1, 'Mangler viden om sværhedsgraden');

INSERT INTO fkg.d_5802_hierarki VALUES
(1, 'Hovedrute',        1, 'Den primære rute.'),
(2, 'Sløjfe',           1, 'Ekstra sløjfer på en hovedrute.'),
(3, 'Genvej',           1, 'Forbindelse som afkorter en hovedrute.'),
(4, 'Adgangssti',       1, 'Forbindelse til en hovedrute, en facilitet eller seværdighed.'),
(8, 'Andet',            1, 'Andet'),
(9, 'Ukendt',           1, 'Mangler viden om hieraki');

INSERT INTO fkg.d_5802_rute_uty VALUES
(1, 'Sundhedsspor',     1, 'Sundhedsspor er Naturstyrelsens landsdækkende koncept. Et sundhedsspor er en afmærket naturrute på 1-2½ km, som kan gås eller løbes på tid. Ved ruterne er der sat tavler op, som viser BMI og kondital ift. tid og alder.'),
(2, 'Kløversti',        1, 'Kløverstier er Friluftsrådets landsdækkende koncept. En Kløversti består af fire ruter, der alle udgår fra en centralt placeret Kløversti pæl. Hver af de fire ruter har en bestemt længde og farve, afmærket med Friluftsrådets Kløversti logo.'),
(3, 'Hjertesti',        1, 'Hjertestier er Hjerteforeningens landsdækkende koncept. En hjertesti er en afmærket motionsrute, hvor der langs ruten er opsat skilte med Hjerteforeningens logo.'),
(4, 'Spor i landskabet',1, 'Spor i Landskabet er spor er ”Spor i Landskabets” landsdækkende koncept. Sporene bliver lavet på baggrund af en frivillig aftale med lodsejerne om vandreadgang på deres private jord. Sporene er normalt ikke markerede men skal findes via foldere/hjemmeside.'),
(5, 'Panoramarute',     1, 'Dagsture koblet på de nationale cykelruter. Ruten skal være en rundtur og være mellem 20 og 50 km lang.'),
(8, 'Andet',            1, 'Andet'),
(9, 'Ukendt',           1, 'Mangler viden om rutetype');

INSERT INTO fkg.d_5802_kategori VALUES
(1, 'Lokal',            1, 'En lokal rute er planlagt af en eller flere kommuner. Den lokale cykelrute er typisk beregnet til udflugts eller hverdagsture, dvs. kortere rundture eller direkte ture mellem bolig og arbejdsplads / skole / indkøbsmuligheder. Bedre definition til at den passer til både vandre-, cykler og rideruter.'),
(2, 'Regional',         1, 'En regional rute forløber gennem flere kommuner. Den regionale rute er typisk lidt længere end beregnet til en dagstur.'),
(3, 'National',         1, 'En national rute er af national betydning, går gennem flere landsdele (for cykelruter mindst 200 km lang).'),
(7, 'Ej relevant',      1, 'Ikke relevant for dette objekt.'),
(8, 'Andet',            1, 'Andet'),
(9, 'Ukendt',           1, 'Mangler viden om kategori');

INSERT INTO fkg.d_5802_certifi VALUES
( 0, 'Ikke certificeret',               1, 'Ej certificeret'),
( 1, 'Premiumrute - rundvandrerute ',   1, 'Vandrerute certificeret af Deutsches Wanderinstitut. https://www.wanderinstitut.de/deutsches-wandersiegel/premiumwegtypen/'),
( 2, 'Premiumrute – let-vandrerute',    1, 'Vandrerute certificeret af Deutsches Wanderinstitut. https://www.wanderinstitut.de/premium-spazierwanderwege/'),
( 3, 'Premiumrute - langdistancerute',  1, 'Vandrerute certificeret af Deutsches Wanderinstitut. https://www.wanderinstitut.de/deutsches-wandersiegel/premiumwegtypen/'),
( 4, 'Premiumrute – byvandrerute',      1, 'Vandrerute certificeret af Deutsches Wanderinstitut. https://www.wanderinstitut.de/premium-stadtwanderwege/'),
( 5, 'Leading Quality Trail',           1, 'Vandrerute certificeret efter European Ramblers Associaltions ordning. https://www.era-ewv-ferp.org/lqt/'),
( 6, 'Kvalitetssti – Vandresti',        1, 'Vandrerute godkendt af Dansk Vandrelaug https://dvl.dk/kvalitetssti/'),
( 7, 'Kvalitetssti – Natursti',         1, 'Vandrerute godkendt af Dansk Vandrelaug https://dvl.dk/kvalitetssti/'),
( 8, 'Kvalitetssti – Kultursti',        1, 'Vandrerute godkendt af Dansk Vandrelaug https://dvl.dk/kvalitetssti/'),
( 9, 'Kvalitetssti – Gastronomisk sti', 1, 'Vandrerute godkendt af Dansk Vandrelaug https://dvl.dk/kvalitetssti/'),
(10, 'Kvalitetssti – Familiesti',       1, 'Vandrerute godkendt af Dansk Vandrelaug https://dvl.dk/kvalitetssti/'),
(11, 'Kvalitetssti – Komfortsti',       1, 'Vandrerute godkendt af Dansk Vandrelaug https://dvl.dk/kvalitetssti/'),
(12, 'Kvalitetssti – Bysti',            1, 'Vandrerute godkendt af Dansk Vandrelaug https://dvl.dk/kvalitetssti/'),
(98, 'Anden',                           1, 'Anden certificering'),
(99, 'Ukendt',                          1, 'Mangler viden om certificereing');

INSERT INTO fkg.d_5902_vaeske_type VALUES (1,'Ethanol',1,'Ethylalkohol (alm. sprit som det findes i øl, vin, spiritus og husholdningssprit)');
INSERT INTO fkg.d_5902_vaeske_type VALUES (2,'IPA-sprit',1,'Blandingen ethanol + isopropanol i forholdet 90:10 (altså 90% ethanol og 10% isopropanol) kaldes IPA-sprit, og bruges af nogle som erstatning for ren isopropanol');
INSERT INTO fkg.d_5902_vaeske_type VALUES (3,'Ethylenglycol',1,'HOCH2CH2OH, 1-2-ethandiol, farveløs, giftig væske, kogepunkt 197,2°C. Ethylenglycol er blandbar med vand og anvendes bl.a. som antifrostvæske til biler (en 40% vandig opløsning fryser ved —24°C).');
INSERT INTO fkg.d_5902_vaeske_type VALUES (4,'Propylenglycol',1,'Kaldes også 1,2-propandiol eller propan-1,2-diol, er et organisk stof (en diol eller dobbeltalkohol) med bruttoformlen C3H8O2 or HO-CH2-CHOH-CH3. Det er en klar, farveløs og næsten lugtløs væske med en svag, sødlig smag. Stoffet er vandsugende og lader sig blande med vand.');
INSERT INTO fkg.d_5902_vaeske_type VALUES (8,'Andet',1,'Anden frostvæske');
INSERT INTO fkg.d_5902_vaeske_type VALUES (9,'Ukendt',1,'Mangler kendskab til frostvæske');
-- SELECT * FROM d_5902_vaeske_type;

-- udgået
-- INSERT INTO fkg.d_6000_kotesystem VALUES (1,'DNN',1,'Dansk normal nul, gammelt system. Indført omkring 1910. Udfaset i 2006.');
-- INSERT INTO fkg.d_6000_kotesystem VALUES (2,'DVR90',1,'Dansk Vertikal Reference 1990. Indført i 2002.');
-- INSERT INTO fkg.d_6000_kotesystem VALUES (8,'Andet',1,'Andet');
-- INSERT INTO fkg.d_6000_kotesystem VALUES (9,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_6000_kotesystem;


INSERT INTO fkg.d_6003_zone_type VALUES (300,'Drikkevandsboring (300m)',1,'Vandindvindings boring, der benyttes til helt eller delvis benyttes til drikkevand - eller til noget der skal have drikkevandskvalitet.');
INSERT INTO fkg.d_6003_zone_type VALUES (150,'Anden boring (150m)',1,'Vandindvindingsboring, der ikke benyttes til drikkevand eller til noget der skal have drikkevandskvalitet.');
INSERT INTO fkg.d_6003_zone_type VALUES (50,'Almen vandforsyningsboring (50m)',1,'50 m zoner om almen vandforsyningsboring.');
INSERT INTO fkg.d_6003_zone_type VALUES (25,'Almen vandforsyningsboring (25m)',1,'25 m zoner om almen vandforsyningsboring.');
INSERT INTO fkg.d_6003_zone_type VALUES (10,'Almen vandforsyningsboring (10m)',1,'10 m zoner');
INSERT INTO fkg.d_6003_zone_type VALUES (1,'Beregnet beskyttelseszone',1,'Beskyttelseszone der er beregnet');
-- SELECT * FROM d_6003_zone_type;


INSERT INTO fkg.d_6100_brandhane VALUES (1,'A',1,'A-brandhanen er beregnet til opstilling på vandværksledninger med en vandføring på over 1.500 liter/min.');
INSERT INTO fkg.d_6100_brandhane VALUES (2,'B',1,'B-brandhanen er beregnet til opstilling på vandværksledninger med en vandføring på 800-1.500 liter/min. Den kan i øvrigt anvendes på alle vandværksledninger.');
INSERT INTO fkg.d_6100_brandhane VALUES (3,'C',1,'C-brandhanen er beregnet til opstilling på vandværksledninger med en vandføring på indtil 800 liter/min.');
INSERT INTO fkg.d_6100_brandhane VALUES (4,'Branddam',1,'Vandhul/sø hvor der kan pumpes vand op til brandslukning.');
INSERT INTO fkg.d_6100_brandhane VALUES (8,'Andet',1,'Anden type end ovenstående.');
INSERT INTO fkg.d_6100_brandhane VALUES (9,'Ukendt',1,'Mangler viden');
INSERT INTO fkg.d_6100_brandhane VALUES (11,'I',1,'<500l/min');
INSERT INTO fkg.d_6100_brandhane VALUES (12,'II',1,'< 1000');
INSERT INTO fkg.d_6100_brandhane VALUES (13,'III',1,'< 1500');
INSERT INTO fkg.d_6100_brandhane VALUES (14,'IIII',1,'> 1500');
-- SELECT * FROM d_6100_brandhane;

INSERT INTO fkg.d_6100_placering VALUES (1,'Overjordisk',1,'Normal placering – den røde i gadebilledet.');
INSERT INTO fkg.d_6100_placering VALUES (2,'Underjordisk',1,'Brandhane placeret under jorden/under dæksel.');
INSERT INTO fkg.d_6100_placering VALUES (3,'I bygning',1,'Brandhane indvendig i bygning.');
INSERT INTO fkg.d_6100_placering VALUES (8,'Andet',1,'Anden placering end ovenstående muligheder.');
INSERT INTO fkg.d_6100_placering VALUES (9,'Ukendt',1,'Mangler vide');
-- SELECT * FROM d_6100_placering;


INSERT INTO fkg.d_6101_beskyt_rum VALUES (1,'Beskyttelsesrum',1,'Beskyttelsesrum” er en betegnelse, der dækker alle typer af forstærkede rum, hvis formål er at beskytte befolkningen mod luftangreb. Benyttes her om offentlige beskyttelsesrum');
INSERT INTO fkg.d_6101_beskyt_rum VALUES (2,'Sikringsrum',1,'Et sikringsrum er et ufærdigt beskyttelsesrum, beregnet til beboere, beskæftigede samt andre personer, som opholder sig i bygningen.  Benyttes her mest om private beskyttelsesrum');
INSERT INTO fkg.d_6101_beskyt_rum VALUES (3,'Betondækningsgrav',1,'En særlig delmængde af beskyttelsesrum');
INSERT INTO fkg.d_6101_beskyt_rum VALUES (8,'Andet',1,'Hvor ovenstående typer ikke er dækkende.');
INSERT INTO fkg.d_6101_beskyt_rum VALUES (9,'Ukendt',1,'Mangler viden om typen.');
-- SELECT * FROM d_6101_beskyt_rum;


INSERT INTO fkg.d_6102_redvej_type VALUES (1,'Brandvej',0,'Adgangsvej der skal være fri passage til brandbiler m.v.');
INSERT INTO fkg.d_6102_redvej_type VALUES (2,'Flugtvej',0,'Udgang fra bygninger, som er afmærket og skal være frie.');
INSERT INTO fkg.d_6102_redvej_type VALUES (3,'Redningsvej',1,'Adgangsvej til strande m.v.');
INSERT INTO fkg.d_6102_redvej_type VALUES (8,'Andet',1,'Hvor ovenstående ikke er dækkende.');
INSERT INTO fkg.d_6102_redvej_type VALUES (9,'Ukendt',1,'Mangler viden om typen af adgangsvej');
-- SELECT * FROM d_6102_redvej_type;


INSERT INTO fkg.d_6104_risikotype VALUES (1,'Kolonne 2 virksomhed',1,'virksomheder med lidt mindre oplag af farlige stoffer end kolonne 3 virksomheder');
INSERT INTO fkg.d_6104_risikotype VALUES (2,'Kolonne 3 virksomhed',1,'virksomheder med meget store oplag af farlige stoffer');
INSERT INTO fkg.d_6104_risikotype VALUES (3,'Brandsynspligtige virksomhed',1,'1) Brandfarlige virksomheder og oplag m.v., der er omfattet af § 34 i beredskabsloven.\n2) Bygninger, m.v., der er omfattet af § 35, stk. 1 og 3, i beredskabsloven.\n3) Fredede bygninger, bortset fra statuer, mindestøtter, springvand, hegnsmure og lignende.'); 
INSERT INTO fkg.d_6104_risikotype VALUES (8,'Andet',1,'Hvis ovenstående ikke dækker.'); 
INSERT INTO fkg.d_6104_risikotype VALUES (9,'Ukendt',1,'Hvis der mangler viden om hvilket anlæg der er tale om.');
-- SELECT * FROM d_6104_risikotype;


INSERT INTO fkg.d_6104_brandhaem VALUES (1,'Automatisk brandalarm',1,'Anlæg der automatiske opdager brand.');
INSERT INTO fkg.d_6104_brandhaem VALUES (2,'Brandhæmmende gas',1,'Gas der kvæler ilden ved at reducere iltindholdet i luften og nedkøle. Hvis denne indgår i en kombination vælges denne.');
INSERT INTO fkg.d_6104_brandhaem VALUES (3,'Sprinkleranlæg',1,'Anlæg der sprøjter ud over rummet/inde i bygningen det er opsat i. Hvis der også der automatisk brandalarm, så vælge denne.');
INSERT INTO fkg.d_6104_brandhaem VALUES (8,'Andet',1,'Hvis ovenstående ikke dækker.');
INSERT INTO fkg.d_6104_brandhaem VALUES (9,'Ukendt',1,'Hvis der mangler viden om hvilket anlæg der er tale om.');
-- SELECT * FROM d_6104_brandhaem;


INSERT INTO fkg.d_6111_tilladelse VALUES (1,'Salg',1,'Hvor der er givet tilladelse til salg af fyrværkeri til privat personer, men ikke oplag.');
INSERT INTO fkg.d_6111_tilladelse VALUES (2,'Oplag',1,'Hvor der er givet tilladelse til oplag af fyrværkeri, men ikke salg til privat personer.');
INSERT INTO fkg.d_6111_tilladelse VALUES (3,'Salg og oplag',1,'Hvor der både må sælges og have oplag af fyrværkeri.');
INSERT INTO fkg.d_6111_tilladelse VALUES (8,'Andet',1,'Hvor ovenstående ikke dækker, men der er behov for at kunne registrere noget.');
INSERT INTO fkg.d_6111_tilladelse VALUES (9,'Ukendt',1,'I tilfældet af det er ukendt/uklart hvad der er givet tilladelse til. Bør kun være historiske registreringer.');
-- SELECT * FROM d_6111_tilladelse;


INSERT INTO fkg.d_6112_depottype VALUES (1,'Forurenet jord',1,'Jord som er gravet op for at fjerne forurenet jord fra en grund.');
INSERT INTO fkg.d_6112_depottype VALUES (2,'Oprensningsjord mv. fra akut forurening',1,'Jord der er gravet for at begrænse skader virkningerne ved en akut forurening');
INSERT INTO fkg.d_6112_depottype VALUES (3,'Slam mv. til udbringning',1,'Spildevandsslam m.v. som opbevares alene med henblik på udbringning.');
INSERT INTO fkg.d_6112_depottype VALUES (8,'Andet',1,'Hvis ovenstående ikke er dækkende.');
INSERT INTO fkg.d_6112_depottype VALUES (9,'Ukendt',1,'Hvis det er uklart/ukendt hvad depotet er blevet brugt til.');
-- SELECT * FROM d_6112_depottype;


INSERT INTO fkg.d_6115_afbr_type VALUES (1,'Afbrænding forbudt',1,'Afbrænding forbudt');
INSERT INTO fkg.d_6115_afbr_type VALUES (2,'Afbrændingsforbud jf. afbrændingsbekendtgørelsen',1,'Afbrænding forbudt som følge af afbrændingsbekendtgørelsen (miljø)');
INSERT INTO fkg.d_6115_afbr_type VALUES (3,'Afbrænding tilladt',1,'Afbrænding tilladt');
-- SELECT * FROM d_6115_afbr_type;


INSERT INTO fkg.d_6116_strandtype VALUES (1,'Sandstrand',1,'Kyst med sandstrand');
INSERT INTO fkg.d_6116_strandtype VALUES (2,'Stenstrand',1,'Kyst med stenstrand');
INSERT INTO fkg.d_6116_strandtype VALUES (3,'Strandeng og Marsk',1,'Kyst med strandeng eller marsk');
INSERT INTO fkg.d_6116_strandtype VALUES (4,'Klippekyst, (høfte og mole)',1,'Kyst med klipper, høfter eller mole.');
INSERT INTO fkg.d_6116_strandtype VALUES (5,'Klint og skrænt',1,'Kyst med klint eller skrænt');
INSERT INTO fkg.d_6116_strandtype VALUES (6,'Ø og holm',1,'Lille ø eller holm');
INSERT INTO fkg.d_6116_strandtype VALUES (7,'Opsamlingsdepot',1,'Depot mulighed i forbindelse med opsamling af olieforurening.');
INSERT INTO fkg.d_6116_strandtype VALUES (8,'Andet',1,'Anden strandtype');
INSERT INTO fkg.d_6116_strandtype VALUES (9,'Ukendt',1,'Mangler kendskab til strandtype');
-- SELECT * FROM d_6116_strandtype;


INSERT INTO fkg.d_6116_esi_klasse VALUES (1,'Udsatte stejle klippekyster samt lodrette menneskeskabte konstruktioner',1,'');
INSERT INTO fkg.d_6116_esi_klasse VALUES (2,'Udsatte klippeskær og klippeflader',1,'');
INSERT INTO fkg.d_6116_esi_klasse VALUES (3,'Finkornet sandstrand',1,'');
INSERT INTO fkg.d_6116_esi_klasse VALUES (4,'Grovkornede sandstrande',1,'');
INSERT INTO fkg.d_6116_esi_klasse VALUES (5,'Blandede sand- og stenstrande',1,'');
INSERT INTO fkg.d_6116_esi_klasse VALUES (6,'Stenstrande og høfder, stenmoler og kystforstærkninger',1,'');
INSERT INTO fkg.d_6116_esi_klasse VALUES (7,'Udsatte tidevandsflader',1,'');
INSERT INTO fkg.d_6116_esi_klasse VALUES (8,'Beskyttede klippekyster, sten og uigennemtrængelige menneskeskabte konstruktioner(moler, kajer m.m.)',1,'');
INSERT INTO fkg.d_6116_esi_klasse VALUES (9,'Beskyttede tidevandsområder og strande med højt organisk indhold',1,'');
INSERT INTO fkg.d_6116_esi_klasse VALUES (10,'Strandengs- og marskområder',1,'');
INSERT INTO fkg.d_6116_esi_klasse VALUES (98,'Andet',1,'Anden strandtype');
INSERT INTO fkg.d_6116_esi_klasse VALUES (99,'Ukendt',1,'Mangler kendskab til strandtype');
-- SELECT * FROM d_6116_esi_klasse;


INSERT INTO fkg.d_6117_indsatstype VALUES (1,'Regnvandsbassin ej tildelt type',1,'Regnvandsbassin ikke typeopdelt');
INSERT INTO fkg.d_6117_indsatstype VALUES (2,'Regnvandsbassin afspærringspunkt type 1',1,'');
INSERT INTO fkg.d_6117_indsatstype VALUES (3,'Regnvandsbassin afspærringspunkt type 2',1,'');
INSERT INTO fkg.d_6117_indsatstype VALUES (4,'Regnvandsbassin afspærringspunkt type 3',1,'');
INSERT INTO fkg.d_6117_indsatstype VALUES (5,'Regnvandsudløb ej tildelt type',1,'Udløb af en regnvandsledning ikke typeopdelt');
INSERT INTO fkg.d_6117_indsatstype VALUES (6,'Regnvandsudløb uden forsinkelse type 1',1,'');
INSERT INTO fkg.d_6117_indsatstype VALUES (7,'Regnvandsudløb uden forsinkelse type 2',1,'');
INSERT INTO fkg.d_6117_indsatstype VALUES (8,'Vandløb afspærringspunkt ej tildelt type',1,'Godt punkt i vandløbet til oprensning af akut forurening ikke typeopdelt');
INSERT INTO fkg.d_6117_indsatstype VALUES (9,'Vandløb afspærringspunkt type 1',1,'');
INSERT INTO fkg.d_6117_indsatstype VALUES (10,'Vandløb afspærringspunkt type 2',1,'');
INSERT INTO fkg.d_6117_indsatstype VALUES (11,'Vandløb afspærringspunkt type 3',1,'');
INSERT INTO fkg.d_6117_indsatstype VALUES (12,'Vandløb afspærringspunkt type 4',1,'');
INSERT INTO fkg.d_6117_indsatstype VALUES (13,'Vej krydser vandløb, åbent',1,'Vejmidte og vandløbsmidte, åbent krydser hinanden eller er tættere end 5 meter');
INSERT INTO fkg.d_6117_indsatstype VALUES (14,'Vej krydser vandløb, rørlagt',1,'Vejmidte og vandløbsmidte, rørlagt krydser hinanden eller er tættere end 5 meter');
INSERT INTO fkg.d_6117_indsatstype VALUES (15,'Brønd rørlagt vandløb',1,'Fritliggende brønddæksel til et rørlagt vandløb');
INSERT INTO fkg.d_6117_indsatstype VALUES (16,'Stigerør',1,'Fast rør installation i eller ved en bygning/område, som gør det muligt hurtigt og sikkert at få bragt slukningsvand frem til faste aftapningssteder');
INSERT INTO fkg.d_6117_indsatstype VALUES (98,'Andet ',1,'Andet');
INSERT INTO fkg.d_6117_indsatstype VALUES (99,'Ukendt',1,'Manglende viden');
-- SELECT * FROM d_6117_indsatstype;


INSERT INTO fkg.d_6118_brand_redarea_type VALUES (1,'Brandvej',1,'Adgangsvej der skal være fri passage til brandbiler m.v.');
INSERT INTO fkg.d_6118_brand_redarea_type VALUES (2,'-',0,'-');
INSERT INTO fkg.d_6118_brand_redarea_type VALUES (3,'-',0,'-');
INSERT INTO fkg.d_6118_brand_redarea_type VALUES (4,'Redningsareal',1,'Krav i bygningsreglement (Energistyrelsen) areal hvor der kan sættes en 30 m drejestige op – det er krav hvor bygninger er mere en 9,6 m over terræn svarende til mere end tre etager.');
INSERT INTO fkg.d_6118_brand_redarea_type VALUES (8,'Andet',1,'Hvor ovenstående ikke er dækkende.');
INSERT INTO fkg.d_6118_brand_redarea_type VALUES (9,'Ukendt',1,'Mangler viden om typen af adgangsvej');
-- SELECT * FROM d_6118_brand_redarea_type;


INSERT INTO fkg.d_6121_sua VALUES (1,'Festival',1,'Festival med flere koncerter m.v.');
INSERT INTO fkg.d_6121_sua VALUES (2,'Dyrskue',1,'Dyreskue');
INSERT INTO fkg.d_6121_sua VALUES (3,'Forsamlingstelt',1,'Telt med master og barduner, stålramme eller lignende, der anvendes til forsamling af mange mennesker. Flere end 150 personer');
INSERT INTO fkg.d_6121_sua VALUES (4,'Cirkus',1,'Cirkus flere end 150 personer');
INSERT INTO fkg.d_6121_sua VALUES (5,'Koncert',1,'Store udendørs koncerter');
INSERT INTO fkg.d_6121_sua VALUES (6,'Spejderlejr',1,'Spejderlejr med camping som ikke er omfattet af campingreglementet flere end 150 personer');
INSERT INTO fkg.d_6121_sua VALUES (7,'Kræmmermarked',1,'Kræmmermarked');
INSERT INTO fkg.d_6121_sua VALUES (8,'Camping',1,'Campingområde som ikke er omfattet af campingreglementet flere end 150 personer');
INSERT INTO fkg.d_6121_sua VALUES (98,'Andet',1,'Hvor andet ikke er dækkende.');
INSERT INTO fkg.d_6121_sua VALUES (99,'Ukendt',1,'Mangler viden om typen.');
-- SELECT * FROM fkg.d_6121_sua;


INSERT INTO fkg.d_6200_geologi VALUES (1,'A Moræne',1,'Er jord og løse klippestykker, der er blevet efterladt af en gletsjer.');
INSERT INTO fkg.d_6200_geologi VALUES (2,'B Bakke ø',1,'En morænebakke som er dannet under næstsidste istid (Saale), og som rager op over det omgivende flade land.');
INSERT INTO fkg.d_6200_geologi VALUES (3,'C Randmoræne',1,'En endemoræne, er en voldformet moræne opstået foran en gletsjer.');
INSERT INTO fkg.d_6200_geologi VALUES (4,'D Dødis',1,'Ved tilbagerykning af en gletcher kan større isstykker brække af, som derved efterlades som dødis. Efterhånden som dødisen smelter sænkes den samlede landskabsoverflade i dødislandskabet. Aflejringerne er meget rodede på grund af, at frosne jordmasser smelter fri, brækker af og flyder mod lavere områder. Der efterlades et landskab med dødisrelief i form af vandfyldte dødishuller og afløbsløse lavninger. Disse fremstår i dag som områder præget af søer og moser.');
INSERT INTO fkg.d_6200_geologi VALUES (5,'E Tunneldal',1,'opstår når floder af smeltevand eroderer landskabet under en gletsjer eller under Istidens islag i Danmark.');
INSERT INTO fkg.d_6200_geologi VALUES (6,'F Ås',1,'Aflang bakke, typisk bestående af lagdelt sand og grus. En ås er oftest dannet ved, at meget af det materiale gletcherfloden normalt transporterer ud foran gletcheren i stedet aflejres inde under isen i smeltevandsfloden. I takt med ophobningen af aflejringer smelter floden sig længere op i isen, så sand- og grusaflejringerne efterhånden vokser sig større. Når isen er smeltet væk fremstår en afstøbning af den tidligere smeltevandsflod. Der findes omkring 20 åse i Danmark. Mange er præget af råstofindvinding.');
INSERT INTO fkg.d_6200_geologi VALUES (7,'G Hedeslette',1,'Hedesletter består af smeltevandsaflejringer afsat foran isfronten. Det er velsorterede aflejringer, der for det meste består af sand, men kan også være silt eller ler. En hedeslette er tilsyneladende flad, måske med enkelte enkelte erosionsdale, men i virkeligheden falder det topografiske niveau væk fra isranden.');
INSERT INTO fkg.d_6200_geologi VALUES (8,'H Smeltevandsdal',1,'http://www.naturstyrelsen.dk/Planlaegning/Planlaegning_i_det_aabne_land/GeologiskeInteresser/');
INSERT INTO fkg.d_6200_geologi VALUES (9,'I Smeltevandsterasse',1,'http://www.naturstyrelsen.dk/Planlaegning/Planlaegning_i_det_aabne_land/GeologiskeInteresser/');
INSERT INTO fkg.d_6200_geologi VALUES (10,'J Isøbakke',1,'http://www.naturstyrelsen.dk/Planlaegning/Planlaegning_i_det_aabne_land/GeologiskeInteresser/');
INSERT INTO fkg.d_6200_geologi VALUES (11,'K Issølavning',1,'http://www.naturstyrelsen.dk/Planlaegning/Planlaegning_i_det_aabne_land/GeologiskeInteresser/');
INSERT INTO fkg.d_6200_geologi VALUES (12,'L Yoldia',1,'Yoldiaflader er områder med hævet havbund. I denne forbindelse er der tale om senglaciale havaflejringer, der er hævet over havniveau som følge af jordskorpens relative opløft, efter den er blevet frigjort for den tunge iskappe. Yoldiafladerne ses i Vendsyssel.'); 
INSERT INTO fkg.d_6200_geologi VALUES (13,'M Marint forland',1,'Landområde, der ligger mellem den nuværende og en ældre kystlinje og er skabt af marine kræfter efter sidste istid.');
INSERT INTO fkg.d_6200_geologi VALUES (14,'N Inddæmmet areal',1,'Arealer inddæmmet ved diger og tørlagt ved afvanding. Arealerne bliver hovedsagelig brugt til landbrugsdrift. Det er områder, som tidligere har været lavbundede fjorde og vige.');
INSERT INTO fkg.d_6200_geologi VALUES (15,'O Marsk',1,'Marsk er aflejringer dannet ved sedimentation i tidevandszonen. Dette kan bl.a. iagttages ved vekslende lagtykkelser i jordprofilet.');
INSERT INTO fkg.d_6200_geologi VALUES (16,'P Vade',1,'http://www.naturstyrelsen.dk/Planlaegning/Planlaegning_i_det_aabne_land/GeologiskeInteresser/');
INSERT INTO fkg.d_6200_geologi VALUES (17,'Q Højsande',1,'http://www.naturstyrelsen.dk/Planlaegning/Planlaegning_i_det_aabne_land/GeologiskeInteresser/');
INSERT INTO fkg.d_6200_geologi VALUES (18,'R Klit',1,'Klitter består af meget velsorteret sand.');
INSERT INTO fkg.d_6200_geologi VALUES (19,'S Grundfjeld',1,'Krystalline bjergarter, som her i Danmark findes på Bornholm. Der kan over grundfjeld dannes jordbund, og alt efter bjergartens beskaffenhed kan jordbunden blive næringsrig eller -fattig.');
INSERT INTO fkg.d_6200_geologi VALUES (20,'T Sprækkedal',1,'En stor "spalte" ned i urfjeldet.');
INSERT INTO fkg.d_6200_geologi VALUES (21,'U Alluvial kegle',1,'Alluvium er løst, ucementeret materiale som efterlades af floder eller gletsjere.');
INSERT INTO fkg.d_6200_geologi VALUES (22,'V Mose',1,'Et vedvarende sumpet vådområde.');
INSERT INTO fkg.d_6200_geologi VALUES (98,'Andet',1,'Andet');
INSERT INTO fkg.d_6200_geologi VALUES (99,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_6200_geologi;


INSERT INTO fkg.d_6200_jordtype VALUES (1,'a Flyvesand',1,'Flyvesand er de sandmængder, der bliver flyttet ved vindens hjælp.');
INSERT INTO fkg.d_6200_jordtype VALUES (2,'b Ferskvandsdannelser',1,'Ferskvandsdannelser er både organiske (tørv og gytje) samt mineralske (ler og sand). Forekomsten af ferskvandsaflejringer er knyttet til nuværende og tidligere vandløbssystemer og søområder');
INSERT INTO fkg.d_6200_jordtype VALUES (3,'c Marint sand og ler',1,'http://www.geus.dk/');
INSERT INTO fkg.d_6200_jordtype VALUES (4,'d Strandvolde',1,'Strandvoldene består af grus og sten, og forekommer bl.a. som krumodder på det marine forland.');
INSERT INTO fkg.d_6200_jordtype VALUES (5,'e Morænesand og –grus',1,'et usorteret sediment afsat af isen. Morænesand (sandet til) består af en sandet, lidt lerholdig grundmasse med sten og blokke.');
INSERT INTO fkg.d_6200_jordtype VALUES (6,'f Moræneler',1,'Moræneler er moræneaflejringer fra istiden, der indeholder en større eller mindre grad af ler.');
INSERT INTO fkg.d_6200_jordtype VALUES (7,'g Smeltevandssand og – grus',1,'Disse sedimenter består af dårligt sorteret sand og grus afsat af smeltevandsfloder. Sandet er lagdelt og krydslejret, og kan stedvis være stærkt forstyrret af senere isoverskridelser.');
INSERT INTO fkg.d_6200_jordtype VALUES (8,'h Ekstramarginale aflejringer',1,'består både af sand og grus.');
INSERT INTO fkg.d_6200_jordtype VALUES (9,'i Ældre havaflejringer',1,'Marint ler, silt og finsand aflejret i det senglaciale arktiske Yoldiahav.');
INSERT INTO fkg.d_6200_jordtype VALUES (98,'Andet',1,'Andet');
INSERT INTO fkg.d_6200_jordtype VALUES (99,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_6200_jordtype;


INSERT INTO fkg.d_6200_terraen VALUES (1,'a Flade/plateau',1,'Kurver med lille tæthed');
INSERT INTO fkg.d_6200_terraen VALUES (2,'b Jævnt stigende/faldende terræn',1,'Lange parallelle kurver med orientering');
INSERT INTO fkg.d_6200_terraen VALUES (3,'c Ret stejlt stigende/faldende flade/plateau',1,'lange kurver med stor egentæthed og orientering');
INSERT INTO fkg.d_6200_terraen VALUES (4,'d Småbakket/Dødisrelief',1,'Korte kurver med stor egentæthed og uden orientering');
INSERT INTO fkg.d_6200_terraen VALUES (5,'e Storbakket',1,'Lange konforme kurver med orientering');
INSERT INTO fkg.d_6200_terraen VALUES (6,'f Bølget',1,'bløde bakker markeret i terrænet');
INSERT INTO fkg.d_6200_terraen VALUES (7,'g Skrænter',1,'ved hjælp af suffix a og b kan de inddeles i grader mellem 0-6 og 6-12 og >12');
INSERT INTO fkg.d_6200_terraen VALUES (8,'Andet',1,'Andet');
INSERT INTO fkg.d_6200_terraen VALUES (9,'Ukendt',1,'Ukendt');
-- SELECT * FROM d_6200_terraen;


INSERT INTO fkg.d_6200_kompleksitet VALUES (1,'Moderat',1,'områder hvor bakker med terrænhældninger mellem 6-12° er hyppige eller hvor op til 25% af jordbunden udgøres af andre jordtyper end den dominerende');
INSERT INTO fkg.d_6200_kompleksitet VALUES (2,'Kompleks',1,'områder hvor bakker med terrænhældninger er større end 12° er hyppige eller hvor mere end 25% af jordbunden udgøres af andre jordtyper end den dominerende.');
-- SELECT * FROM d_6200_kompleksitet;


INSERT INTO fkg.d_6202_skala VALUES (1,'Stor',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6202_skala VALUES (2,'Middel',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6202_skala VALUES (3,'Lille',1,'Link til PDF (MIM 2007, side 144-162)*');
-- SELECT * FROM d_6202_skala;


INSERT INTO fkg.d_6202_rumlig_afgraensning VALUES (1,'Åbent',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6202_rumlig_afgraensning VALUES (2,'Transparent',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6202_rumlig_afgraensning VALUES (3,'Lukket',1,'Link til PDF (MIM 2007, side 144-162)*');
-- SELECT * FROM d_6202_rumlig_afgraensning;


INSERT INTO fkg.d_6202_kompleksitet VALUES (1,'Meget sammensat',1,'områdets karakter er præget af mange forskellige elementer');
INSERT INTO fkg.d_6202_kompleksitet VALUES (2,'Sammensat',1,'Link tilPDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6202_kompleksitet VALUES (3,'Enkelt',1,'områdets karakter er præget af få karaktergivende elementer');
-- SELECT * FROM d_6202_kompleksitet;


INSERT INTO fkg.d_6202_struktur VALUES (1,'Dominerende',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6202_struktur VALUES (2,'Middel',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6202_struktur VALUES (3,'Svagt',1,'Link til PDF (MIM 2007, side 144-162)*');
-- SELECT * FROM d_6202_struktur;


INSERT INTO fkg.d_6202_visuel_uro VALUES (1,'Uroligt',1,'visuel uro er stor, eksempelvis i form af passerende biler eller roterende vindmøller');
INSERT INTO fkg.d_6202_visuel_uro VALUES (2,'Middel',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6202_visuel_uro VALUES (3,'Roligt',1,'Et område, der visuelt er uberørt af bevægelse.');
-- SELECT * FROM d_6202_visuel_uro;


INSERT INTO fkg.d_6202_tidsdybde VALUES (1,'Ca. 0-50 år',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6202_tidsdybde VALUES (2,'Ca. 0-200 år',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6202_tidsdybde VALUES (3,'> 200 år',1,'Link til PDF (MIM 2007, side 144-162)*');
-- SELECT * FROM d_6202_tidsdybde;


INSERT INTO fkg.d_6203_karakterstyrke VALUES (1,'Særligt karakterisktisk',1,'Link til PDF (MIM 2007, side 155)*');
INSERT INTO fkg.d_6203_karakterstyrke VALUES (2,'Karakteristisk',1,'Link til PDF (MIM 2007, side 155)*');
INSERT INTO fkg.d_6203_karakterstyrke VALUES (3,'Karaktersvagt',1,'Link til PDF (MIM 2007, side 155)*');
INSERT INTO fkg.d_6203_karakterstyrke VALUES (4,'Kontrasterende',1,'Link til PDF (MIM 2007, side 155)*');
-- SELECT * FROM d_6203_karakterstyrke;


INSERT INTO fkg.d_6203_saarbarhed VALUES (1,'Stor',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6203_saarbarhed VALUES (2,'Middel',1,'Link til PDF (MIM 2007, side 144-162)*');
INSERT INTO fkg.d_6203_saarbarhed VALUES (3,'Lille',1,'Link til PDF (MIM 2007, side 144-162)*');
-- SELECT * FROM d_6203_saarbarhed;


INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (101000,'Prydplæne',1,'GR1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (102000,'Brugsplæne',1,'GR2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (102010,'Brugsplæne med lund',1,'GR2a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (102020,'Brugsplæne med løgvækster',1,'GR2b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (102040,'Brugsplæne med armering',1,'GR2d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (103000,'Græsflade',1,'GR3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (103010,'Græsflade med lund',1,'GR3a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (103020,'Græsflade med løgvækst',1,'GR3b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (103040,'Græsflade med armering',1,'GR3d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (103060,'Græsflade - skillerabat',1,'GR3f','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (103070,'Græsflade - helle',1,'GR3g','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (104000,'Fælledgræs',1,'GR4','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (104010,'Fælledgræs med lund',1,'GR4a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (104020,'Fælledgræs med løgvækst',1,'GR4b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (104040,'Fælledgræs med armering',1,'GR4d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (105000,'Sportsplæne',1,'GR5','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (105010,'Sportsplæne – Opvisningsbane',1,'GR5a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (105020,'Sportsplæne – Kampbane',1,'GR5b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (105030,'Sportsplæne – Træningsbane',1,'GR5c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (105050,'Sportsplæne - Vinter',1,'GR5e','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (106000,'Rabatgræs',1,'GR6','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (106010,'Rabatgræs med lund',1,'GR6a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (106020,'Rabatgræs med løgvækst',1,'GR6b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (106030,'Rabatgræs med oversigtsareal',1,'GR6c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (106040,'Rabatgræs med armering',1,'GR6d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (106050,'Rabatgræs med grøftekant',1,'GR6e','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (106060,'Rabatgræs - skillerabat',1,'GR6f','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (107000,'Naturgræs',1,'GR7','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (107010,'Naturgræs med lund',1,'GR7a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (107020,'Naturgræs med blomster',1,'GR7b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (107040,'Naturgræs med armering (p-pladser)',1,'GR7d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (108010,'Strand og klit',1,'GR8g','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (108020,'Eng',1,'GR8h','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (108030,'Overdrev',1,'GR8i','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (121000,'Roser',1,'BL1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (122000,'Prydstauder',1,'BL2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (123000,'Staudebed',1,'BL3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (124000,'Naturstauder',1,'BL4','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (124010,'Naturstauder – Grønt tag',1,'BL4a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (125000,'Udplantningsplanter',1,'BL5','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (125010,'Udplantningsplanter – Plates Bantes bed',1,'BL5a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (125020,'Udplantningsplanter – Forårsblomster',1,'BL5b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (125030,'Udplantningsplanter – Sommerblomster',1,'BL5c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (125040,'Udplantningsplanter – Vinterblomster',1,'BL5d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (126000,'Løgvækster',1,'BL6','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (126010,'Løgtæppe',1,'BL6a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (126020,'Løgvækst i blomsterbed',1,'BL6b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (127010,'Surbundsbed',1,'BL7','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (127020,'Urtebed',1,'BL8','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (161000,'Prydbuske',1,'BU1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (161010,'Prydbuske – Frugtbuske',1,'BU1a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (161020,'Prydbuske – Formklippede buske',1,'BU1b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (162000,'Bunddækkende buske',1,'BU2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (163000,'Busket',1,'BU3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (181000,'Prydhæk - flade',1,'HA1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse. NB findes også som linjeobjekt. Benyt ikke både som flade og linje. Skal vælge én og kun en geometritype.');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (182000,'Hæk - flade',1,'HA2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse. NB findes også som linjeobjekt. Benyt ikke både som flade og linje. Skal vælge én og kun en geometritype.');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (183000,'Pur',1,'HA3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (183010,'Pur - helle',1,'HA3g','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (184000,'Fritvoksende Hæk - flade',1,'HA4','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse. NB findes også som linjeobjekt. Benyt ikke både som flade og linje. Skal vælge én og kun en geometritype.');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (222000,'Krat',1,'SK2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (223000,'Lund',1,'SK3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (224000,'Skov',1,'SK4','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (225000,'Levende hegn',1,'SK5','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (226010,'Trægruppe - flade',1,'SK6a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (261000,'Gravsted Pleje',1,'GS1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (261010,'Gravsted Pleje – Individuel',1,'GS1a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (261020,'Gravsted Pleje – ledig',1,'GS1b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (261030,'Gravsted Pleje – bevaringsværdig',1,'GS1c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (262000,'Gravsted Udvidet pleje',1,'GS2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (262010,'Gravsted Udvidet pleje – Individuel',1,'GS2a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (262020,'Gravsted Udvidet pleje – ledig',1,'GS2b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (262030,'Gravsted Udvidet pleje – bevaringsværdig',1,'GS2c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (263000,'Gravsted Ydelse',1,'GS3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (263010,'Gravsted Ydelse – Gran',1,'GS3a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (263020,'Gravsted Ydelse – Krans',1,'GS3b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (263030,'Gravsted Ydelse – Pyntning',1,'GS3c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (263040,'Gravsted Ydelse – Blomster',1,'GS3d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (301000,'Bassin',1,'VA1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (302000,'Sø',1,'VA2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (302010,'Sø – vandhul',1,'VA2a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (302020,'Sø – dam',1,'VA2b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (302030,'Sø – parksø',1,'VA2c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (302040,'Sø – voldgrav',1,'VA2d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (302050,'Sø – kanal',1,'VA2e','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (303010,'Vandløb',1,'VA3a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (304010,'Badestrand',1,'VA4a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (305010,'Regnvandsbassin',1,'VA5a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401000,'Fast belægning',1,'FB1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401010,'Fast belægningr – Asfalt',1,'FB1a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401011,'Fast belægning - Raste-/P-plads',1,'FB1k','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401020,'Fast belægning – Naturstensbelægning',1,'FB1b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401030,'Fast belægning – Beton',1,'FB1c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401040,'Fast belægning – Klinker',1,'FB1d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401050,'Fast belægning – Brolægning',1,'FB1e','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401051,'Fast belægning - Helle m. brolægning',1,'FB1j','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401052,'Fast belægning - Helle m. asfalt',1,'FB1l','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401060,'Fast belægning – Belægningssten',1,'FB01f','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401070,'Fast belægning - Sten glacis',1,'FB1g','Stenklædt skråning. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (401080,'Fast belægning - Træ',1,'FB1h','F.eks. stier i sumpområder. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (402010,'Fortov – renholdt driften',1,'FB2a','Fortov med grundejerforpligtigelsen. Lokal standard – skal beskrives i udbudsmaterialet eller lignende. ');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (412000,'Løs belægning',1,'LB2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (412010,'Løs belægning – Perlesten',1,'LB2a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (412020,'Løs belægning – Parksti',1,'LB2b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (412030,'Løs belægning - Rekreative sti',1,'LB2c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (412040,'Løs belægning – Kunststofbelægning',1,'LB2d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (412050,'Løs belægning – Flis',1,'LB2e','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (412070,'Løs belægning - Helle',1,'LB2g','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (412080,'Løs belægning - Raste-/P-plads',1,'LB2h','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (412090,'Løs belægning, Stenmel',1,'LB2h','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (413000,'Natursti (bynær)',1,'LB3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (413010,'Natursti bynær - Ridesti',1,'LB3a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (413020,'Natursti bynær - Muldjord',1,'LB3b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (413030,'Natursti bynær - Råjord',1,'LB3c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (413040,'Natursti bynær - Flis/bark',1,'LB3d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (424000,'Sportsbelægning',1,'SB4','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (424010,'Sportsbelægning – Kunststof',1,'SB4a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (424020,'Sportsbelægning – Asfalt',1,'SB4b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (424030,'Sportsbelægning – Beton',1,'SB4c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (424040,'Sportsbelægning – Stenmel/grus',1,'SB4d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (424050,'Sportsbelægning – Jord',1,'SB4e','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (424060,'Sportsbelægning - Kunstgræs',1,'SB4f','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (424070,'Sportsbelægning - Sand',1,'SB4g','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (414000,'Faldunderlag',1,'LB4','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (414010,'Faldunderlag - Flis',1,'LB4a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (414040,'Sandkasse',1,'LB4d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (431000,'Trappe og rampe',1,'BY1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (431010,'Ophalerplads',1,'BY1a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (432000,'Bro',1,'BY2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (433000,'Både-/badebro - flade',1,'BY3','Div. broer ud i vandet, som der er driftforpligelse på. Typiske broer der ender blindt. Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (434010,'Bygning',1,'BY4a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (446010,'Legeudstyr - flade',1,'UD6a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (961010,'Renhold (uden anden pleje)',1,'RE1a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (961011,'Renhold Bef. areal',1,'RE1b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (961012,'Renhold Ubef. areal',1,'RE1c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (961013,'Renhold Udstyr',1,'RE1d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (961014,'Rengøring Toilet',1,'RE55a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (961020,'Ukrudts-bekæmpelse',1,'RE3a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (980000,'Andet',1,'AN1','Hvor andre facilitetsbetegnelser ikke er dækkende.');
INSERT INTO fkg.d_6800_vedlhold_f_type VALUES (990000,'Ukendt',1,'UK1','Mangler viden om typen.');
-- SELECT * FROM fkg.d_6800_vedlhold_f_type order by 1;

INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (106110,'Rabatgræs - linje',1,'GR61a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (106120,'Rabatgræs- skillerabat - linje',1,'GR61b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (126110,'Løgvækster - linje',1,'BL61b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (141000,'Fladedækkende klatreplanter',1,'KL1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (181100,'Prydhæk - linje',1,'HA11','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse. NB findes også som fladeobjekt. Benyt ikke både som flade og linje. Skal vælge én og kun en geometritype.');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (182100,'Hæk – linje',1,'HA21','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse. NB findes også som fladeobjekt. Benyt ikke både som flade og linje. Skal vælge én og kun en geometritype.');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (182110,'Stammehæk',1,'HA2a','Træer med sammenvokset krone, der klippes som ”hæk”. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (184100,'Fritvoksende Hæk – linje',1,'HA4','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse. NB findes også som fladeobjekt. Benyt ikke både som flade og linje. Skal vælge én og kun en geometritype.');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (303000,'Grøft',1,'VA3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (303010,'Vejgrøft',1,'VA3a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (303020,'Vandløb',1,'VA3b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (403010,'Kantsten',1,'FB3a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (435000,'Terrænmur',1,'BY5','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (436000,'Stendige',1,'BY6','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (437000,'Kampestensstøttemur',1,'BY7','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (438000,'Kirkegårdsdige',1,'BY8','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (443000,'Cykelstativ',1,'UD9','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (444021,'Sponsorskilt/banner',1,'UD4e','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (447000,'Trådflethegn',1,'UD8','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (447100,'Plankeværk / rækværk',1,'UD81','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (447110,'Autoværn',1,'UD71a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (447200,'Fodhegn',1,'UD82','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (447310,'Metal gelænder',1,'UD83a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (447320,'Bom',1,'UD83b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (447410,'Saltværn1',1,'UD84a','Beskyttelse af planter mod vejsalt type 1. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (447420,'Saltværn2',1,'UD84b','Beskyttelse af planter mod vejsalt type 2. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (447430,'Saltværn3',1,'UD84c','Beskyttelse af planter mod vejsalt type 3. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (801010,'Div. forhindring - ej pleje',1,'FO1a','Forhindringer (som ikke vedligeholdes) i f.eks. brugsplæne, kan vises i kort/liste. (Lokal standard – kan beskrives i udbudsmaterialet eller lignende)');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (980000,'Andet',1,'AN2','Hvor andre facilitetsbetegnelser ikke er dækkende.');
INSERT INTO fkg.d_6801_vedlhold_l_type VALUES (990000,'Ukendt',1,'UK2','Mangler viden om typen.');
-- SELECT * FROM d_6801_vedlhold_l_type;

INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (128000,'Baljeplante',1,'BL9','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (142000,'Solitære slyng- og klatreplante',1,'KL2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (142010,'Plantestativ',1,'KL2a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (161200,'Prydbusk (solitær/fritstående)',1,'BU3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (201000,'Fuldkronet træ',1,'TR1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (201010,'Vejtræ - åbenland',1,'TR1a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (202000,'Allé (træ)',1,'TR2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (203000,'Frugttræ',1,'TR3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (204000,'Formet træ',1,'TR4','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (432110,'Overkørsel',1,'BY21a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (439000,'Monument / mindesten / skulptur',1,'BY9','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (439010,'Pullert',1,'BY9a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (439020,'Stele',1,'BY9b','Stele er næsten det samme som en pullert - bare af sten. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (439030,'Natursten',1,'BY9c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (439040,'Km-sten',1,'BY9d','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (439050,'Flagstang',1,'BY9e','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (441000,'Affaldsspand',1,'UD1','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (441100,'Affaldsbeholder til grønt affald',1,'UD11','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (441800,'Vandpost / drikkepost (Vandhane)',1,'UD18','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (441810,'Springvand',1,'UD18a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (441820,'Nedløbsrist/sandfang',1,'UD18b','Kun nedløbsriste, der skal plejes/tømmes. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (441830,'Stophane',1,'UD18c','Kun stophaner der skal benyttes i plejen. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (442000,'Bænk og bordbænkesæt',1,'UD2','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (442010,'Bænk',1,'UD2a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (442020,'Bordbænkesæt',1,'UD2b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (443100,'Fodboldmål',1,'UD3','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (443010,'Sportsudstyr',1,'UD3a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (443500,'Bålplads / grill',1,'UD35','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (444000,'Informationsskilte',1,'UD4','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (444010,'Pictogrampæl',1,'UD4a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (444020,'Skilt, anden',1,'UD4b','Ikke vejskilte. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (444030,'Plakatsøjle',1,'UD4c','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (444500,'Hundeposeholdere',1,'UD45','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (445000,'Redningspost',1,'UD5','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (445020,'Førstehjælp',1,'UD5a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (445030,'Nødtelefon',1,'UD5b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (445100,'Badebro',1,'UD51','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (445500,'Shelter',1,'UD55','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (445510,'Toilet',1,'UD55a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (446000,'Legeudstyr',1,'UD6','Se den nye Branchestandard/landsdækkende kvalitetsbeskrivelse');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (447010,'Belysning',1,'UD7a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (447020,'Elboks',1,'UD7b','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (448010,'Låge',1,'UD8a','Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (448020,'Stente',1,'UD8b','Stente er en overgang over et hegn til mennesker. Lokal standard – skal beskrives i udbudsmaterialet eller lignende');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (802010,'Div. forhindring - ej pleje',1,'FO2a','Forhindringer (som ikke vedligeholdes) i f.eks. brugsplæne, kan vises i kort/liste. (Lokal standard – kan beskrives i udbudsmaterialet eller lignende)');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (980000,'Andet',1,'AN3','Hvor andre facilitetsbetegnelser ikke er dækkende.');
INSERT INTO fkg.d_6802_groenvedligh_punkt VALUES (990000,'Ukendt',1,'UK3','Mangler viden om typen.');
-- SELECT * FROM d_6802_groenvedligh_punkt;

INSERT INTO fkg.d_6803_pg_distrikt VALUES (1,'Udbudsområde',1,'Området der er udbudt');
INSERT INTO fkg.d_6803_pg_distrikt VALUES (2,'Fag-entreprise',1,'Entrepriseområdet, som kun dække et meget lille fagområde. F.eks. beskæring af træer.');
INSERT INTO fkg.d_6803_pg_distrikt VALUES (3,'Geografisk entreprise',1,'Entrepriseområdet, som dækker et stort fagområde, men hvor kommunen typiske er inddelt i flere områder/distrikter med forskellige entreprenører. Kan også benyttes til inddelingen efter hvor et område plejes fra (fx hvilken materielgård, når det er kommunens egne folk, der står for opgaven).');
INSERT INTO fkg.d_6803_pg_distrikt VALUES (4,'Arbejdssted',1,'Også kaldt arbejdsområde. Typisk et mindre område som en park eller en skole.');
INSERT INTO fkg.d_6803_pg_distrikt VALUES (8,'Andet',1,'Hvor andet ikke er dækkende.');
INSERT INTO fkg.d_6803_pg_distrikt VALUES (9,'Ukendt',1,'Mangler viden om typen.');
-- SELECT * FROM d_6803_pg_distrikt;
