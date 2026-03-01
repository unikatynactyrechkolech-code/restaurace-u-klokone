-- =====================================================
-- KOMPLETNÍ IMPORT MENU - RESTAURACE U KLOKONĚ
-- =====================================================
-- INSTRUKCE:
-- 1. Jdi na https://supabase.com → tvůj projekt
-- 2. Klikni "SQL Editor" v levém menu
-- 3. Klikni "New Query"
-- 4. Zkopíruj CELÝ tento soubor (Ctrl+A, Ctrl+C)
-- 5. Vlož do editoru (Ctrl+V)
-- 6. Klikni zelené tlačítko "Run"
-- =====================================================

-- KROK 1: Přidáme sloupec 'section' pokud neexistuje
ALTER TABLE menu_items ADD COLUMN IF NOT EXISTS section TEXT;

-- KROK 2: Smažeme staré položky (aby se neduplikovaly)
DELETE FROM menu_items WHERE client_id = 'restaurace-u-klokone';

-- =====================================================
-- NÁPOJE - PIVEČKO ČEPOVANÉ
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Staropramen 10º (0,3l)', NULL, 29, 'Nápoje', 'Pivečko čepované', 'restaurace-u-klokone'),
('Staropramen 10º (0,5l)', NULL, 46, 'Nápoje', 'Pivečko čepované', 'restaurace-u-klokone'),
('Staropramen 11º z tanku (0,3l)', NULL, 32, 'Nápoje', 'Pivečko čepované', 'restaurace-u-klokone'),
('Staropramen 11º z tanku (0,5l)', NULL, 52, 'Nápoje', 'Pivečko čepované', 'restaurace-u-klokone'),
('Staropramen Extra chmelená 12º (0,3l)', NULL, 37, 'Nápoje', 'Pivečko čepované', 'restaurace-u-klokone'),
('Staropramen Extra chmelená 12º (0,5l)', NULL, 60, 'Nápoje', 'Pivečko čepované', 'restaurace-u-klokone'),
('Cool grep nealkoholický (0,3l)', NULL, 34, 'Nápoje', 'Pivečko čepované', 'restaurace-u-klokone'),
('Cool grep nealkoholický (0,5l)', NULL, 55, 'Nápoje', 'Pivečko čepované', 'restaurace-u-klokone');

-- =====================================================
-- NÁPOJE - PIVEČKO V LAHVI
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Staropramen nealkoholický světlý (0,5l)', NULL, 55, 'Nápoje', 'Pivečko v lahvi', 'restaurace-u-klokone'),
('Staropramen cool grep (0,5l)', NULL, 55, 'Nápoje', 'Pivečko v lahvi', 'restaurace-u-klokone'),
('Strongbow cider Gold Apple (0,3l)', NULL, 60, 'Nápoje', 'Pivečko v lahvi', 'restaurace-u-klokone');

-- =====================================================
-- NÁPOJE - VÍNO
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Bílé rozlévané Chardonnay (0,1l)', NULL, 32, 'Nápoje', 'Víno', 'restaurace-u-klokone'),
('Červené rozlévané Merlot (0,1l)', NULL, 32, 'Nápoje', 'Víno', 'restaurace-u-klokone'),
('Prosecco rozlévané (0,1l)', NULL, 46, 'Nápoje', 'Víno', 'restaurace-u-klokone'),
('Lahvová vína 0,75 dle aktuální nabídky', NULL, 320, 'Nápoje', 'Víno', 'restaurace-u-klokone'),
('Bohemia demi sec', NULL, 320, 'Nápoje', 'Víno', 'restaurace-u-klokone');

-- =====================================================
-- NÁPOJE - DESTILÁTY
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Zelená Bartida 0,04l', NULL, 52, 'Nápoje', 'Destiláty', 'restaurace-u-klokone'),
('Stará myslivecká 0,04l', NULL, 52, 'Nápoje', 'Destiláty', 'restaurace-u-klokone'),
('Metaxa***** 0,04l', NULL, 70, 'Nápoje', 'Destiláty', 'restaurace-u-klokone'),
('Tequila Silver 0,04l', NULL, 70, 'Nápoje', 'Destiláty', 'restaurace-u-klokone'),
('Gordons dry gin 0,04l', NULL, 70, 'Nápoje', 'Destiláty', 'restaurace-u-klokone'),
('Jägermeister 0,04l', NULL, 70, 'Nápoje', 'Destiláty', 'restaurace-u-klokone'),
('Fernet Stock 0,04l', NULL, 52, 'Nápoje', 'Destiláty', 'restaurace-u-klokone'),
('Vodka Finlandia 0,04l', NULL, 60, 'Nápoje', 'Destiláty', 'restaurace-u-klokone'),
('Becherovka 0,04l', NULL, 60, 'Nápoje', 'Destiláty', 'restaurace-u-klokone');

-- =====================================================
-- NÁPOJE - WHISKY & RUMY
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Johnnie Walker Red Label 0,04l', NULL, 75, 'Nápoje', 'Whisky & Rumy', 'restaurace-u-klokone'),
('Jack Daniels 0,04l', NULL, 85, 'Nápoje', 'Whisky & Rumy', 'restaurace-u-klokone'),
('Captain Morgan Spiced gold 0,04l', NULL, 65, 'Nápoje', 'Whisky & Rumy', 'restaurace-u-klokone'),
('Gold of Mauritius 0,04l', NULL, 150, 'Nápoje', 'Whisky & Rumy', 'restaurace-u-klokone'),
('Diplomatico Reserva Exclusiva 12yo 0,04l', NULL, 130, 'Nápoje', 'Whisky & Rumy', 'restaurace-u-klokone'),
('Don Papa 0,04l', NULL, 120, 'Nápoje', 'Whisky & Rumy', 'restaurace-u-klokone');

-- =====================================================
-- NÁPOJE - NEALKOHOLICKÉ & TEPLÉ NÁPOJE
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Schweppes tonic 0,25l', NULL, 45, 'Nápoje', 'Nealkoholické & Teplé nápoje', 'restaurace-u-klokone'),
('Red Bull 0,25l', NULL, 70, 'Nápoje', 'Nealkoholické & Teplé nápoje', 'restaurace-u-klokone'),
('Granini džusy 0,2l', NULL, 45, 'Nápoje', 'Nealkoholické & Teplé nápoje', 'restaurace-u-klokone'),
('Espresso', NULL, 55, 'Nápoje', 'Nealkoholické & Teplé nápoje', 'restaurace-u-klokone'),
('Cappuccino', NULL, 70, 'Nápoje', 'Nealkoholické & Teplé nápoje', 'restaurace-u-klokone'),
('Caffé latte', NULL, 70, 'Nápoje', 'Nealkoholické & Teplé nápoje', 'restaurace-u-klokone'),
('Svařené víno červené či bílé', NULL, 70, 'Nápoje', 'Nealkoholické & Teplé nápoje', 'restaurace-u-klokone');

-- =====================================================
-- PŘEDKRMY - K PIVKU I VÍNKU
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Domácí nakládaný hermelín', 'Smetanový sýr naložený s česnekem, cibulí a pikantním kořením', 119, 'Předkrmy', 'K pivku i vínku', 'restaurace-u-klokone'),
('80g Hovězí carpaccio z pravé svíčkové', 'S bazalkovým pestem, uzenou mořskou solí, čerstvou rukolou a sýrem Grana Padano', 199, 'Předkrmy', 'K pivku i vínku', 'restaurace-u-klokone'),
('8Ks Smažené čedarové nuggety', 'S Jalapeños papričkami, zakysanou smetanou a rukolovým salátkem', 159, 'Předkrmy', 'K pivku i vínku', 'restaurace-u-klokone'),
('100g Namíchaný tatarský hovězí bifteček', 'S topinkami a česnekem', 199, 'Předkrmy', 'K pivku i vínku', 'restaurace-u-klokone'),
('200g Namíchaný tatarský hovězí bifteček', 'S topinkami a česnekem', 299, 'Předkrmy', 'K pivku i vínku', 'restaurace-u-klokone'),
('Domácí bramborové chipsy', 'S BBQ omáčkou, dozlatova usmažené z čerstvých brambor', 89, 'Předkrmy', 'K pivku i vínku', 'restaurace-u-klokone'),
('Opečená klobása', 'Podávaná s hořčicí a čerstvým křenem', 169, 'Předkrmy', 'K pivku i vínku', 'restaurace-u-klokone');

-- =====================================================
-- SPECIALITY - KLOKOŇOVY SPECIALITY
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('1300g Pečené vepřové koleno', 'Marinované v pivní marinádě, podávané se sladko-kyselou čalamádo, hořčicí a čerstvým křenem', 389, 'Speciality', 'Klokoňovy speciality', 'restaurace-u-klokone'),
('500g Pečená vepřová žebra', 'V pikantní marinádě s křenem, hořčicí a barbecue omáčkou', 279, 'Speciality', 'Klokoňovy speciality', 'restaurace-u-klokone'),
('500g Marinovaná kuřecí křidélka', 'S kukuřičným klasem dozlatova upečená, podávaná s česnekovým dipem', 239, 'Speciality', 'Klokoňovy speciality', 'restaurace-u-klokone'),
('220g Grilované kuřecí prsíčko Supreme', 'V čerstvých bylinkách, připravené metodou sous-vide', 219, 'Speciality', 'Klokoňovy speciality', 'restaurace-u-klokone'),
('200g Hovězí burger s anglickou slaninou', 'S čerstvým salátem, sýrem čedar, americkým dresingem a bramborovými hranolky', 269, 'Speciality', 'Klokoňovy speciality', 'restaurace-u-klokone'),
('200g Hovězí burger Jalapeños', 'S karamelizovanou cibulkou, rajčetem, jalapeños papričkami, salátem, anglickou slaninou, čedarem a hranolky', 269, 'Speciality', 'Klokoňovy speciality', 'restaurace-u-klokone'),
('170g Caesar burger', 'V domácí sezamové bulce s grilovaným kuřecím prsíčkem, římským salátem, anglickou slaninou, rajčetem, parmezánem a caesar dipem', 269, 'Speciality', 'Klokoňovy speciality', 'restaurace-u-klokone'),
('200g Smažený vepřový či kuřecí řízek', 'S citronem, dozlatova usmažené kuřecí prsíčko nebo vepřové karé', 209, 'Speciality', 'Klokoňovy speciality', 'restaurace-u-klokone'),
('200g Křupavé belgické hranolky', 'S konfitovaným trhaným masem v barbeque marinádě, čedarem a česnekovým dipem', 259, 'Speciality', 'Klokoňovy speciality', 'restaurace-u-klokone');

-- =====================================================
-- STEAKY - STEAKY OD KLOKONĚ
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('300g Vepřový T-bone steak', 'Z vyzrálé kotletky s panenkou. Během doby zrání ztratí určité množství vody a tím získá intenzivnější chuť', 289, 'Steaky', 'Steaky od Klokoně', 'restaurace-u-klokone'),
('230g Hovězí steak z argentinského býčka', 'Propečený dle vašeho přání dle denní nabídky', 309, 'Steaky', 'Steaky od Klokoně', 'restaurace-u-klokone');

-- =====================================================
-- STEAKY - OMÁČKY KE STEAKŮM
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Omáčka z lesních hub', NULL, 30, 'Steaky', 'Omáčky ke steakům', 'restaurace-u-klokone'),
('Omáčka se zeleným pepřem', NULL, 30, 'Steaky', 'Omáčky ke steakům', 'restaurace-u-klokone'),
('Omáčka Jack Daniels', NULL, 30, 'Steaky', 'Omáčky ke steakům', 'restaurace-u-klokone');

-- =====================================================
-- ČESKÁ KLASIKA - KLOKOŇOVA ČESKÁ KLASIKA
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('200g Hovězí líčka', 'Pomalu dušená na kořenové zelenině, červeném víně a bylinkách se šťouchaným bramborem s cibulkou', 269, 'Česká klasika', 'Klokoňova česká klasika', 'restaurace-u-klokone'),
('Dozlatova pečená kachnička z české farmy', 'Na kmíně s červeným zelím, houskovým a bramborovým knedlíkem', 289, 'Česká klasika', 'Klokoňova česká klasika', 'restaurace-u-klokone');

-- =====================================================
-- ČESKÁ KLASIKA - KDYŽ TO MUSÍ BÝT :-)
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('150g Smažený sýr gouda', 'S domácí tatarskou omáčkou', 159, 'Česká klasika', 'Když to musí být :-)', 'restaurace-u-klokone'),
('120g Smažený hermelín', 'S domácí tatarskou omáčkou', 159, 'Česká klasika', 'Když to musí být :-)', 'restaurace-u-klokone');

-- =====================================================
-- ČESKÁ KLASIKA - PŘÍLOHY
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Vařené brambory maštěné máslem', NULL, 45, 'Česká klasika', 'Přílohy', 'restaurace-u-klokone'),
('Pečené brambory s česnekem', NULL, 45, 'Česká klasika', 'Přílohy', 'restaurace-u-klokone'),
('Šťouchané brambory', NULL, 45, 'Česká klasika', 'Přílohy', 'restaurace-u-klokone'),
('Belgické křupavé hranolky', NULL, 60, 'Česká klasika', 'Přílohy', 'restaurace-u-klokone'),
('Bramborové hranolky', NULL, 50, 'Česká klasika', 'Přílohy', 'restaurace-u-klokone'),
('Americké brambory', NULL, 50, 'Česká klasika', 'Přílohy', 'restaurace-u-klokone'),
('Restované fazolky na slanině', NULL, 55, 'Česká klasika', 'Přílohy', 'restaurace-u-klokone'),
('Grilovaná zelenina s hrubozrnnou hořčicí', NULL, 70, 'Česká klasika', 'Přílohy', 'restaurace-u-klokone'),
('5ks Houskový knedlík', NULL, 45, 'Česká klasika', 'Přílohy', 'restaurace-u-klokone'),
('Rozpečená bylinková bageta', NULL, 60, 'Česká klasika', 'Přílohy', 'restaurace-u-klokone');

-- =====================================================
-- ČESKÁ KLASIKA - OMÁČKY
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Tatarská omáčka', NULL, 30, 'Česká klasika', 'Omáčky', 'restaurace-u-klokone'),
('Pikantní omáčka', NULL, 30, 'Česká klasika', 'Omáčky', 'restaurace-u-klokone'),
('Česneková omáčka', NULL, 30, 'Česká klasika', 'Omáčky', 'restaurace-u-klokone'),
('Barbecue omáčka', NULL, 30, 'Česká klasika', 'Omáčky', 'restaurace-u-klokone'),
('Sweet chilli omáčka', NULL, 30, 'Česká klasika', 'Omáčky', 'restaurace-u-klokone'),
('Bylinková omáčka', NULL, 30, 'Česká klasika', 'Omáčky', 'restaurace-u-klokone');

-- =====================================================
-- SALÁTY
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Caesar salát s grilovaným kuřecím prsíčkem', 'Z římského salátu s anglickou slaninou, parmezánem, dresingem a bylinkovými krutony', 229, 'Saláty', 'Saláty', 'restaurace-u-klokone'),
('Caesar salát BEZ kuřecího prsíčka', 'Z římského salátu s anglickou slaninou, dresingem a bylinkovými krutony', 169, 'Saláty', 'Saláty', 'restaurace-u-klokone'),
('Velký zeleninový salát se smaženými kuřecími stripsy', 'S bazalkovým pestem', 209, 'Saláty', 'Saláty', 'restaurace-u-klokone'),
('Velký řecký salát', 'S olivami a pravým ovčím sýrem feta', 199, 'Saláty', 'Saláty', 'restaurace-u-klokone'),
('Velký zeleninový salát s konfitovaným trhaným masem', 'V barbeque marinádě', 199, 'Saláty', 'Saláty', 'restaurace-u-klokone');

-- =====================================================
-- SALÁTY - SLADKÁ TEČKA NA KONEC...
-- =====================================================
INSERT INTO menu_items (name, description, price, category, section, client_id) VALUES
('Dezert dle denní nabídky', NULL, 79, 'Saláty', 'Sladká tečka na konec...', 'restaurace-u-klokone'),
('Čokoládový fondant', 'S omáčkou z lesních plodů', 89, 'Saláty', 'Sladká tečka na konec...', 'restaurace-u-klokone');

-- =====================================================
-- HOTOVO! CELKEM 78 POLOŽEK
-- =====================================================
-- Po spuštění tohoto SQL:
-- 1. Refreshni stránku webu (F5 nebo Ctrl+R)
-- 2. Menu se načte dynamicky ze Supabase
-- =====================================================
