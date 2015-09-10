DROP TRIGGER IF EXISTS `playgrounds_update`;

CREATE TRIGGER `playgrounds_update` AFTER UPDATE ON `article_lang` FOR EACH ROW IF ('5' = (
   select id_page from page_article as pa
   where pa.id_article = new.id_article
 )) THEN 
	BEGIN
    UPDATE data_version as d
    SET d.version = (d.version + 0.01)
    WHERE d.table_name = 'playgrounds';
  END;
END IF

DROP TRIGGER IF EXISTS `clubs_update`;

CREATE TRIGGER `clubs_update` AFTER UPDATE ON `article_lang` FOR EACH ROW IF ('11' = (
   select id_page from page_article as pa
   where pa.id_article = new.id_article
 )) THEN 
	BEGIN
    UPDATE data_version as d
    SET d.version = (d.version + 0.01)
    WHERE d.table_name = 'clubs';
  END;
END IF