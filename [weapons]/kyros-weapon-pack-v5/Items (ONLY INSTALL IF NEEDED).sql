DELETE FROM items WHERE name = 'WEAPON_BAR15'; # DO NOT INSTALL IF USING OX LIKE NIGGA READ THE INSTALL GUIDE
DELETE FROM items WHERE name = 'WEAPON_AXE';
DELETE FROM items WHERE name = 'WEAPON_BLACKARP';
DELETE FROM items WHERE name = 'WEAPON_BSCAR';
DELETE FROM items WHERE name = 'WEAPON_THOMPSON';
DELETE FROM items WHERE name = 'WEAPON_BLUEGLOCKS';
DELETE FROM items WHERE name = 'WEAPON_CHAIR';
DELETE FROM items WHERE name = 'WEAPON_DMK18';
DELETE FROM items WHERE name = 'WEAPON_FN57';
DELETE FROM items WHERE name = 'WEAPON_GLOCK21';
DELETE FROM items WHERE name = 'WEAPON_GLOCK41';
DELETE FROM items WHERE name = 'WEAPON_GLOCKBEAMS';
DELETE FROM items WHERE name = 'WEAPON_P30L';
DELETE FROM items WHERE name = 'WEAPON_ILLGLOCK17';
DELETE FROM items WHERE name = 'WEAPON_KRISSVECTOR';
DELETE FROM items WHERE name = 'WEAPON_LBTARP';
DELETE FROM items WHERE name = 'WEAPON_MGGLOCK';
DELETE FROM items WHERE name = 'WEAPON_MIDASGLOCK';
DELETE FROM items WHERE name = 'WEAPON_M500';
DELETE FROM items WHERE name = 'WEAPON_P210';
DELETE FROM items WHERE name = 'WEAPON_RAM7';
DELETE FROM items WHERE name = 'WEAPON_REDARP';
DELETE FROM items WHERE name = 'WEAPON_REDM4A1';
DELETE FROM items WHERE name = 'WEAPON_R590';
DELETE FROM items WHERE name = 'WEAPON_SR40';
DELETE FROM items WHERE name = 'WEAPON_T1911';
DELETE FROM items WHERE name = 'WEAPON_TARP';
DELETE FROM items WHERE name = 'WEAPON_TGLOCK19';
DELETE FROM items WHERE name = 'WEAPON_TEC9S';
DELETE FROM items WHERE name = 'WEAPON_WOARP';

DELETE FROM items WHERE name = 'COMPONENT_AT_BAR15_SCOPE_MEDIUM';
DELETE FROM items WHERE name = 'COMPONENT_AT_AR_BAR15_FLSH';
DELETE FROM items WHERE name = 'COMPONENT_AT_AR_BAR15_AFGRIP';
DELETE FROM items WHERE name = 'COMPONENT_BSCAR_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_THOMPSON_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_BLUEGLOCKS_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_BLUEGLOCKS_CLIP_03';
DELETE FROM items WHERE name = 'COMPONENT_BLUEGLOCKS_CLIP_04';
DELETE FROM items WHERE name = 'COMPONENT_BLUEGLOCKS_CLIP_05';
DELETE FROM items WHERE name = 'COMPONENT_AT_DMK18_SCOPE_MEDIUM';
DELETE FROM items WHERE name = 'COMPONENT_AT_AR_DMK18_FLSH';
DELETE FROM items WHERE name = 'COMPONENT_AT_AR_DMK18_AFGRIP';
DELETE FROM items WHERE name = 'COMPONENT_AT_AR_DMK18_SUPP';
DELETE FROM items WHERE name = 'COMPONENT_GLOCK41_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_GLOCKBEAMS_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_GLOCKBEAMS_CLIP_03';
DELETE FROM items WHERE name = 'COMPONENT_GLOCKBEAMS_CLIP_04';
DELETE FROM items WHERE name = 'COMPONENT_GLOCKBEAMS_CLIP_05';
DELETE FROM items WHERE name = 'COMPONENT_ILLGLOCK17_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_ILLGLOCK17_CLIP_03';
DELETE FROM items WHERE name = 'COMPONENT_ILLGLOCK17_CLIP_04';
DELETE FROM items WHERE name = 'COMPONENT_ILLGLOCK17_CLIP_05';
DELETE FROM items WHERE name = 'COMPONENT_LBTANARP_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_LBTANARP_CLIP_03';
DELETE FROM items WHERE name = 'COMPONENT_LBTANARP_CLIP_04';
DELETE FROM items WHERE name = 'COMPONENT_MGGLOCK_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_MGGLOCK_CLIP_03';
DELETE FROM items WHERE name = 'COMPONENT_MGGLOCK_CLIP_04';
DELETE FROM items WHERE name = 'COMPONENT_MGGLOCK_CLIP_05';
DELETE FROM items WHERE name = 'COMPONENT_MIDASGLOCK_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_MIDASGLOCK_CLIP_03';
DELETE FROM items WHERE name = 'COMPONENT_MIDASGLOCK_CLIP_04';
DELETE FROM items WHERE name = 'COMPONENT_MIDASGLOCK_CLIP_05';
DELETE FROM items WHERE name = 'COMPONENT_REDARP_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_REDARP_CLIP_03';
DELETE FROM items WHERE name = 'COMPONENT_REDARP_CLIP_04';
DELETE FROM items WHERE name = 'COMPONENT_REDM4A1_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_AT_AR_REDM4A1_SUPP';
DELETE FROM items WHERE name = 'COMPONENT_TANARP_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_TANARP_CLIP_03';
DELETE FROM items WHERE name = 'COMPONENT_TANARP_CLIP_04';
DELETE FROM items WHERE name = 'COMPONENT_TGLOCK19_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_TGLOCK19_CLIP_03';
DELETE FROM items WHERE name = 'COMPONENT_TGLOCK19_CLIP_04';
DELETE FROM items WHERE name = 'COMPONENT_TGLOCK19_CLIP_05';
DELETE FROM items WHERE name = 'COMPONENT_TEC9S_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_WOARP_CLIP_02';
DELETE FROM items WHERE name = 'COMPONENT_WOARP_CLIP_03';
DELETE FROM items WHERE name = 'COMPONENT_WOARP_CLIP_04';

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('WEAPON_BAR15', 'AR-15', 2, 0, 1),
('WEAPON_AXE', 'AXE', 1, 0, 1),
('WEAPON_BLACKARP', 'BLACK ARP', 2, 0, 1),
('WEAPON_BSCAR', 'BLACK SCAR', 2, 0, 1),
('WEAPON_THOMPSON', 'BLACK THOMPSON', 2, 0, 1),
('WEAPON_BLUEGLOCKS', 'BLUE GLOCK SWITCH', 1, 0, 1),
('WEAPON_CHAIR', 'BRAWL CHAIR', 1, 0, 1),
('WEAPON_DMK18', 'DESERET MK18', 1, 0, 1),
('WEAPON_FN57', 'FN Five-seveN', 1, 0, 1),
('WEAPON_GLOCK21', 'GLOCK 21', 1, 0, 1),
('WEAPON_GLOCK41', 'GLOCK 41', 1, 0, 1),
('WEAPON_GLOCKBEAMS', 'GLOCK BEAM SWITCH', 1, 0, 1),
('WEAPON_P30L', 'H&K P30L', 1, 0, 1),
('WEAPON_ILLGLOCK17', 'ILLEGAL GLOCK 17', 1, 0, 1),
('WEAPON_KRISSVECTOR', 'KRISS VECTOR', 1, 0, 1),
('WEAPON_LBTARP', 'LB TAN ARP', 1, 0, 1),
('WEAPON_MGGLOCK', 'MG GLOCK', 1, 0, 1),
('WEAPON_MIDASGLOCK', 'MIDAS GLOCK', 1, 0, 1),
('WEAPON_M500', 'MOSSBERG 500', 1, 0, 1),
('WEAPON_P210', 'P210 CARRY', 1, 0, 1),
('WEAPON_RAM7', 'RAM-7', 1, 0, 1),
('WEAPON_REDARP', 'TRED DRAG ARP', 1, 0, 1),
('WEAPON_REDM4A1', 'RED DRAG M4A1', 1, 0, 1),
('WEAPON_R590', 'REMINGTON 590', 1, 0, 1),
('WEAPON_SR40', 'RUGER SR40', 1, 0, 1),
('WEAPON_T1911', 'TAN 1911', 1, 0, 1),
('WEAPON_TARP', 'RTAN ARP', 1, 0, 1),
('WEAPON_TGLOCK19', 'TAN G19', 1, 0, 1),
('WEAPON_TEC9S', 'TEC 9 W STRAP', 1, 0, 1),
('WEAPON_WOARP', 'WHITE OUT ARP', 1, 0, 1),

('COMPONENT_AT_BAR15_SCOPE_MEDIUM', 'AR 15 Scope', 1, 0, 1),
('COMPONENT_AT_AR_BAR15_FLSH', 'AR 15 Flashlist', 1, 0, 1),
('COMPONENT_AT_AR_BAR15_AFGRIP', 'AR 15 Grip', 1, 0, 1),

('COMPONENT_BSCAR_CLIP_02', 'Black Thompson Extended Clip', 1, 0, 1),

('COMPONENT_THOMPSON_CLIP_02', 'Black Thompson Extended Clip', 1, 0, 1),

('COMPONENT_BLUEGLOCKS_CLIP_02', 'BLUE GLOCK SWITCH Extended Clip', 1, 0, 1),
('COMPONENT_BLUEGLOCKS_CLIP_03', 'BLUE GLOCK SWITCH Drum mag', 1, 0, 1),
('COMPONENT_BLUEGLOCKS_CLIP_04', 'BLUE GLOCK SWITCH 100 Round Mag', 1, 0, 1),
('COMPONENT_BLUEGLOCKS_CLIP_05', 'BLUE GLOCK SWITCH Clear Round Mag', 1, 0, 1),

('COMPONENT_AT_DMK18_SCOPE_MEDIUM', 'DESERET MK18 Scope', 1, 0, 1),
('COMPONENT_AT_AR_DMK18_FLSH', 'DESERET MK18 Flashlist', 1, 0, 1),
('COMPONENT_AT_AR_DMK18_AFGRIP', 'DESERET MK18 Grip', 1, 0, 1),
('COMPONENT_AT_AR_DMK18_SUPP', 'DESERET MK18 Suppressor', 1, 0, 1),

('COMPONENT_GLOCK41_CLIP_02', 'DESERET MK18 Extended Clip', 1, 0, 1),

('COMPONENT_GLOCKBEAMS_CLIP_02', 'GLOCK BEAM Extended Clip', 1, 0, 1),
('COMPONENT_GLOCKBEAMS_CLIP_03', 'GLOCK BEAM Drum mag', 1, 0, 1),
('COMPONENT_GLOCKBEAMS_CLIP_04', 'GLOCK BEAM 100 Round Mag', 1, 0, 1),
('COMPONENT_GLOCKBEAMS_CLIP_05', 'GLOCK BEAM Clear Round Mag', 1, 0, 1),

('COMPONENT_ILLGLOCK17_CLIP_02', 'ILLEGAL GLOCK 17 Extended Clip', 1, 0, 1),
('COMPONENT_ILLGLOCK17_CLIP_03', 'ILLEGAL GLOCK 17 Drum mag', 1, 0, 1),
('COMPONENT_ILLGLOCK17_CLIP_04', 'ILLEGAL GLOCK 17 100 Round Mag', 1, 0, 1),
('COMPONENT_ILLGLOCK17_CLIP_05', 'ILLEGAL GLOCK 17 Clear Round Mag', 1, 0, 1),


('COMPONENT_LBTANARP_CLIP_02', 'LB TAN ARP Extended Clip', 1, 0, 1),
('COMPONENT_LBTANARP_CLIP_03', 'LB TAN ARP Drum mag', 1, 0, 1),
('COMPONENT_LBTANARP_CLIP_04', 'LB TAN ARP Clear Round Mag', 1, 0, 1),

('COMPONENT_MGGLOCK_CLIP_02', 'MG GLOCK Extended Clip', 1, 0, 1),
('COMPONENT_MGGLOCK_CLIP_03', 'MG GLOCK Drum mag', 1, 0, 1),
('COMPONENT_MGGLOCK_CLIP_04', 'MG GLOCK 100 Round Mag', 1, 0, 1),
('COMPONENT_MGGLOCK_CLIP_05', 'MG GLOCK Clear Round Mag', 1, 0, 1),

('COMPONENT_MIDASGLOCK_CLIP_02', 'MIDAS GLOCK Extended Clip', 1, 0, 1),
('COMPONENT_MIDASGLOCK_CLIP_03', 'MIDAS GLOCK Drum mag', 1, 0, 1),
('COMPONENT_MIDASGLOCK_CLIP_04', 'MIDAS GLOCK 100 Round Mag', 1, 0, 1),
('COMPONENT_MIDASGLOCK_CLIP_05', 'MIDAS GLOCK Clear Round Mag', 1, 0, 1),

('COMPONENT_RAM7_CLIP_02', 'RAM7 Extended Clip', 1, 0, 1),

('COMPONENT_REDARP_CLIP_02', 'RED ARP Extended Clip', 1, 0, 1),
('COMPONENT_REDARP_CLIP_03', 'RED ARP Drum mag', 1, 0, 1),
('COMPONENT_REDARP_CLIP_04', 'RED ARP Clear Round Mag', 1, 0, 1),

('COMPONENT_REDM4A1_CLIP_02', 'RED M4A1 Extended Clip', 1, 0, 1),
('COMPONENT_AT_AR_REDM4A1_SUPP', 'RED M4A1 Suppressor', 1, 0, 1),

('COMPONENT_TANARP_CLIP_02', 'TAN ARP Extended Clip', 1, 0, 1),
('COMPONENT_TANARP_CLIP_03', 'TAN ARP Drum mag', 1, 0, 1),
('COMPONENT_TANARP_CLIP_04', 'TAN ARP Clear Round Mag', 1, 0, 1),

('COMPONENT_TGLOCK19_CLIP_02', 'TAN G19 Extended Clip', 1, 0, 1),
('COMPONENT_TGLOCK19_CLIP_03', 'TAN G19 Drum mag', 1, 0, 1),
('COMPONENT_TGLOCK19_CLIP_04', 'TAN G19 100 Round Mag', 1, 0, 1),
('COMPONENT_TGLOCK19_CLIP_05', 'TAN G19 Clear Round Mag', 1, 0, 1),

('COMPONENT_TEC9S_CLIP_02', 'TEC 9 W STRAP Extended Clip', 1, 0, 1),

('COMPONENT_WOARP_CLIP_02', 'WHITE OUT ARP Extended Clip', 1, 0, 1),
('COMPONENT_WOARP_CLIP_03', 'WHITE OUT ARP Drum mag', 1, 0, 1),
('COMPONENT_WOARP_CLIP_04', 'WHITE OUT ARP Clear Round Mag', 1, 0, 1);