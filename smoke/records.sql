INSERT INTO brends
    (name)
VALUES
    ('Darkside'),
    ('Brusko'),
    ('Alfakher'),
    ('Sherbet'),
    ('Tansh'),
    ('Husky'),
    ('TOYZ'),
    ('Musthave'),
    ('Spectrum'),
    ('Shoria'),
    ('Hooligan');

INSERT INTO tabaco
    (name, brend_id, streght)
VALUES
    ('KaleGraipfruit', (SELECT id FROM brends WHERE name='Darkside'), 5),
    ('Supernova', (SELECT id FROM brends WHERE name='Darkside'), 5),
    ('Honey', (SELECT id FROM brends WHERE name='Darkside'), 5),
    ('Coldlichy', (SELECT id FROM brends WHERE name='Brusko'), 2),
    ('Blueberry', (SELECT id FROM brends WHERE name='Brusko'), 2),
    ('Rastberry', (SELECT id FROM brends WHERE name='Brusko'), 2),
    ('Doubleapple', (SELECT id FROM brends WHERE name='Alfakher'), 3),
    ('Energetic', (SELECT id FROM brends WHERE name='Alfakher'), 3),
    ('Pinapple', (SELECT id FROM brends WHERE name='Alfakher'), 3),
    ('Cherry', (SELECT id FROM brends WHERE name='Sherbet'), 1),
    ('Graipe', (SELECT id FROM brends WHERE name='Sherbet'), 1),
    ('Orange', (SELECT id FROM brends WHERE name='Sherbet'), 1),
    ('Rum', (SELECT id FROM brends WHERE name='Tansh'), 10),
    ('Watermelon', (SELECT id FROM brends WHERE name='Tansh'), 10),
    ('Strawberry', (SELECT id FROM brends WHERE name='Tansh'), 10),
    ('Pinapple Rings', (SELECT id FROM brends WHERE name='Musthave'),4),
    ('Red Bomb', (SELECT id FROM brends WHERE name='Musthave'),4),
    ('Buble Gum', (SELECT id FROM brends WHERE name='Musthave'),4),
    ('Karibean Rum', (SELECT id FROM brends WHERE name='Spectrum'),6),
    ('Brazilian Tea', (SELECT id FROM brends WHERE name='Spectrum'),6),
    ('Citrus Mix', (SELECT id FROM brends WHERE name='Spectrum'),6),
    ('Helthy', (SELECT id FROM brends WHERE name='Hooligan'),7),
    ('Basilic', (SELECT id FROM brends WHERE name='Hooligan'),7),
    ('Maracuia', (SELECT id FROM brends WHERE name='Hooligan'),7);

INSERT INTO goos
    (name, brend_id, streght)
VALUES
    ('Forest Coctaile', (SELECT id FROM brends WHERE name='Brusko'),5),
    ('Melone', (SELECT id FROM brends WHERE name='Brusko'),5),
    ('Peach', (SELECT id FROM brends WHERE name='Brusko'),5),
    ('Mint', (SELECT id FROM brends WHERE name='Husky'),3),
    ('Ice Cream', (SELECT id FROM brends WHERE name='Husky'),3),
    ('Kiwi', (SELECT id FROM brends WHERE name='Husky'),3),
    ('Cucumber', (SELECT id FROM brends WHERE name='TOYZ'),1),
    ('Mango', (SELECT id FROM brends WHERE name='TOYZ'),1),
    ('Cocount', (SELECT id FROM brends WHERE name='TOYZ'),1),
    ('Rising Star', (SELECT id FROM brends WHERE name='Shoria'),1),
    ('Asian Lychee', (SELECT id FROM brends WHERE name='Shoria'),1),
    ('Jungle Mix', (SELECT id FROM brends WHERE name='Shoria'),1);

    INSERT INTO autors 
        (name, contact, phone, email)
    VALUES
        ('sveta', NULL, '89854443207', 'sveta@mail.ru'),
        ('ruslan', 'vk.com', '89789371307', 'ruslan@mai.ru'),
        ('ilya', 'vk.com', '89854443206', 'ilya@mail.ru'),
        ('radik', 'vk.com', NULL, 'radik@mail.ru'),
        ('danis', 'vk.com', NULL, 'danis@mail.ru');

    INSERT INTO mixes
        (name, streght, autor_id)
    VALUES
        ('pizdec', 6, (SELECT id FROM autors WHERE name='ilya')),
        ('light', 5, (SELECT id FROM autors WHERE name='ilya')),
        ('hernya', 6, (SELECT id FROM autors WHERE name='ilya')),
        ('altaiskyi trip', 7, (SELECT id FROM autors WHERE name='sveta')),
        ('imbyr&lemon', 8, (SELECT id FROM autors WHERE name='sveta')),
        ('marcipan', 9, (SELECT id FROM autors WHERE name='sveta')),
        ('low', 1, (SELECT id FROM autors WHERE name='ruslan')),
        ('medium', 5, (SELECT id FROM autors WHERE name='ruslan')),
        ('hard', 8, (SELECT id FROM autors WHERE name='ruslan')),
        ('deth', 10, (SELECT id FROM autors WHERE name='ruslan'));

    INSERT INTO ingridients
        (tabaco_id, goo_id, amount, mix_id)
    VALUES
        ((SELECT id FROM tabaco WHERE name='Karibean Rum'), NULL, 50, (SELECT id FROM mixes WHERE name='pizdec')),
        ((SELECT id FROM tabaco WHERE name='Supernova'), NULL, 50, (SELECT id FROM mixes WHERE name='pizdec')),
        ((SELECT id FROM tabaco WHERE name='Graipe'), NULL, 50, (SELECT id FROM mixes WHERE name='light')),
        ((SELECT id FROM tabaco WHERE name='Pinapple'), NULL, 50, (SELECT id FROM mixes WHERE name='light')),
        ((SELECT id FROM tabaco WHERE name='Supernova'), NULL, 100, (SELECT id FROM mixes WHERE name='light')),
        ((SELECT id FROM tabaco WHERE name='KaleGraipfruit'), NULL, 50, (SELECT id FROM mixes WHERE name='altaiskyi trip')),
        ((SELECT id FROM tabaco WHERE name='Brazilian Tea'), NULL, 50, (SELECT id FROM mixes WHERE name='altaiskyi trip')),
        ((SELECT id FROM tabaco WHERE name='Citrus Mix'), NULL, 50, (SELECT id FROM mixes WHERE name='imbyr&lemon')),
        ((SELECT id FROM tabaco WHERE name='Helthy'), NULL, 50, (SELECT id FROM mixes WHERE name='imbyr&lemon')),
        ((SELECT id FROM tabaco WHERE name='Honey'), NULL, 50, (SELECT id FROM mixes WHERE name='marcipan')),
        ((SELECT id FROM tabaco WHERE name='Cherry'), NULL, 50, (SELECT id FROM mixes WHERE name='marcipan')),
        ((SELECT id FROM tabaco WHERE name='Rum'), NULL, 50, (SELECT id FROM mixes WHERE name='low')),
        ((SELECT id FROM tabaco WHERE name='Honey'), NULL, 50, (SELECT id FROM mixes WHERE name='low')),
        ((SELECT id FROM tabaco WHERE name='Energetic'), NULL, 50, (SELECT id FROM mixes WHERE name='medium')),
        ((SELECT id FROM tabaco WHERE name='Maracuia'), NULL, 50, (SELECT id FROM mixes WHERE name='medium')),
        ((SELECT id FROM tabaco WHERE name='Strawberry'), NULL, 50, (SELECT id FROM mixes WHERE name='hard')),
        ((SELECT id FROM tabaco WHERE name='Watermelon'), NULL, 50, (SELECT id FROM mixes WHERE name='hard')),
        ((SELECT id FROM tabaco WHERE name='Buble Gum'), NULL, 50, (SELECT id FROM mixes WHERE name='deth')),
        ((SELECT id FROM tabaco WHERE name='Red Bomb'), NULL, 50, (SELECT id FROM mixes WHERE name='deth'));

UPDATE ingridients SED
    tabaco_id (SELECT id FROM tabaco WHERE name='Supernova')
WHERE tabaco_id IS NULL;   