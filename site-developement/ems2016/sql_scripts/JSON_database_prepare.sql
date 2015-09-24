create or replace view  `news_list` as (
  select article.id_article as "id", title, id_media as "thumbnail", article.created as 

  "date" from page_article as pa
  join page on pa.id_page = page.id_page
  join article_lang on pa.id_article = article_lang.id_article 
  join article on pa.id_article = article.id_article
  left join media on media.id_media = 
  (SELECT id_media from article_media
   where id_article = pa.id_article
   order by ordering asc
   LIMIT 1) 
  where page.name = 'news' and pa.online = 1
  order by date desc
);

create or replace view  `articles_list` as (
  select article.id_article as "id", title, id_media as "thumbnail", article.created as 

  "date" from page_article as pa
  join page on pa.id_page = page.id_page
  join article_lang on pa.id_article = article_lang.id_article 
  join article on pa.id_article = article.id_article
  left join media on media.id_media = 
  (SELECT id_media from article_media
   where id_article = pa.id_article
   order by ordering asc
   LIMIT 1) 
  where page.name = 'articles' and pa.online = 1
  order by date desc
);

create or replace view `playgrounds_list` as (
  select 
  a.id_article as 'id', 
  article_lang.title, 
  group_concat(DISTINCT if(id_extend_field = 27, ex.content, NULL)) as 'street', 
  group_concat(DISTINCT if(id_extend_field = 28, ex.content, NULL)) as 'number', 
  group_concat(DISTINCT if(id_extend_field = 7, ex.content, NULL)) as 'city', 
  group_concat(DISTINCT c.id_category) as 'categories',
  id_media as 'thumbnail'
  from article as a
  join article_lang on article_lang.id_article = a.id_article
  join element on a.id_article = element.id_parent
  left join article_category c on a.id_article = c.id_article
  left join extend_fields as ex on ex.id_parent = element.id_element
  left join media on media.id_media = (
    select id_media 
    from article_media
    where id_article = a.id_article
    order by ordering asc
    limit 1)
  where a.id_article in (
    select id_article from page_article pa
    join page on page.id_page = pa.id_page
    where page.name = 'playgrounds' and pa.online = 1
  )
  group by id,title,thumbnail
);

create or replace view `clubs_list` as (
  select article.id_article as "id", title from page_article as pa
  join page on pa.id_page = page.id_page
  join article_lang on pa.id_article = article_lang.id_article 
  join article on pa.id_article = article.id_article 
  where page.name = 'clubs' and pa.online = 1
);

create or replace view `events_list` as (
  select 
  a.id_article as 'id', 
  article_lang.title, 
  group_concat(DISTINCT if(id_extend_field = 25, ex.content, NULL)) as 'active', 
  group_concat(DISTINCT if(id_extend_field = 18, ex.content, NULL)) as 'date',
  group_concat(DISTINCT c.id_category) as 'categories',
  id_media as 'thumbnail'
  from article as a
  join article_lang on article_lang.id_article = a.id_article
  join element on a.id_article = element.id_parent
  left join article_category c on a.id_article = c.id_article
  left join extend_fields as ex on ex.id_parent = element.id_element
  left join media on media.id_media = (
    select id_media 
    from article_media
    where id_article = a.id_article
    order by ordering asc
    limit 1)
  where a.id_article in (
    select id_article from page_article pa
    join page on page.id_page = pa.id_page
    where page.name = 'events' and pa.online = 1
  )
  group by id,title,thumbnail
  ORDER BY date DESC
);

create or replace view `event_calendar` as (
  select 
  article_lang.title, 
  group_concat(DISTINCT if(id_extend_field = 25, ex.content, NULL)) as 'active', 
  group_concat(DISTINCT if(id_extend_field = 18, ex.content, NULL)) as 'date',
  article_lang.url
  from article as a
  join article_lang on article_lang.id_article = a.id_article
  join element on a.id_article = element.id_parent
  left join extend_fields as ex on ex.id_parent = element.id_element
  where a.id_article in (
    select id_article from page_article pa
    join page on page.id_page = pa.id_page
    where page.name = 'events' and pa.online = 1
  )
  group by title
  ORDER BY date DESC
);


create or replace view `articles` as (
  select a.id_article as "id", title, article_lang.content as "content", id_media as 
  "thumbnail", a.created as 
  "date" from article as a
  join article_lang on a.id_article = article_lang.id_article 
  left join media on media.id_media = 
  (SELECT id_media from article_media
   where id_article = a.id_article
   order by ordering asc
   LIMIT 1) 
  where a.id_article in (
    select id_article from page_article pa
    join page on page.id_page = pa.id_page
    where page.name = 'articles' and pa.online = 1
  )
);

create or replace view `news` as (
  select a.id_article as "id", title, article_lang.content as "content", 
  id_media as "thumbnail", a.created as 
  "date" from article as a
  join article_lang on a.id_article = article_lang.id_article 
  left join media on media.id_media = 
  (SELECT id_media from article_media
   where id_article = a.id_article 
   order by ordering asc
   LIMIT 1) 
  where a.id_article in (
    select id_article from page_article pa
    join page on page.id_page = pa.id_page
    where page.name = 'news' and pa.online = 1
  )
);

create or replace view `categories` as (
  select category.id_category as "id", name, title from category
  join category_lang on category.id_category = category_lang.id_category
);

create or replace view `events` as (
  select 
  a.id_article as 'id', 
  article_lang.title, 
  group_concat(DISTINCT if(id_extend_field = 25, ex.content, NULL)) as 'active',
  group_concat(DISTINCT if(id_extend_field = 24, ex.content, NULL)) as 'organizer', 
  group_concat(DISTINCT if(id_extend_field = 14, ex.content, NULL)) as 'address', 
  group_concat(DISTINCT if(id_extend_field = 17, ex.content, NULL)) as 'webpage',
  group_concat(DISTINCT if(id_extend_field = 18, ex.content, NULL)) as 'date_starts',
  group_concat(DISTINCT if(id_extend_field = 20, ex.content, NULL)) as 'date_ends',
  group_concat(DISTINCT c.id_category) as 'categories',
  id_media as 'thumbnail',
  article_lang.content as 'content'
  from article as a
  join article_lang on article_lang.id_article = a.id_article
  join element on a.id_article = element.id_parent
  left join article_category c on a.id_article = c.id_article
  left join extend_fields as ex on ex.id_parent = element.id_element
  left join media on media.id_media = (
    select id_media 
    from article_media
    where id_article = a.id_article
    order by ordering asc
    limit 1)
  where a.id_article in (
    select id_article from page_article pa
    join page on page.id_page = pa.id_page
    where page.name = 'events' and pa.online = 1
  )
  group by title,thumbnail
);

create or replace view `clubs` as (
  select 
  a.id_article as 'id', 
  article_lang.title, 
  group_concat(DISTINCT if(id_extend_field = 30, ex.content, NULL)) as 'address', 
  group_concat(DISTINCT if(id_extend_field = 22, ex.content, NULL)) as 'webpage',
  group_concat(DISTINCT if(id_extend_field = 29, ex.content, NULL)) as 'email',
  id_media as 'thumbnail',
  article_lang.content as 'content'
  from article as a
  join article_lang on article_lang.id_article = a.id_article
  join element on a.id_article = element.id_parent
  left join extend_fields as ex on ex.id_parent = element.id_element
  left join media on media.id_media = (
    select id_media 
    from article_media
    where id_article = a.id_article
    order by ordering asc
    limit 1)
  where a.id_article in (
    select id_article from page_article pa
    join page on page.id_page = pa.id_page
    where page.name = 'clubs' and pa.online = 1
  )
  group by id,title,thumbnail
);

create or replace view `playgrounds` as (
  select 
  a.id_article as 'id', 
  article_lang.title, 
  group_concat(DISTINCT if(id_extend_field = 27, ex.content, NULL)) as 'street', 
  group_concat(DISTINCT if(id_extend_field = 28, ex.content, NULL)) as 'number', 
  group_concat(DISTINCT if(id_extend_field = 7, ex.content, NULL)) as 'city', 
  group_concat(DISTINCT if(id_extend_field = 8, ex.content, NULL)) as 'phone',
  group_concat(DISTINCT if(id_extend_field = 9, ex.content, NULL)) as 'email',
  group_concat(DISTINCT if(id_extend_field = 10, ex.content, NULL)) as 'webpage',
  group_concat(DISTINCT c.id_category) as 'categories',
  id_media as 'thumbnail',
  article_lang.content as 'content'
  from article as a
  join article_lang on article_lang.id_article = a.id_article
  join element on a.id_article = element.id_parent
  left join article_category c on a.id_article = c.id_article
  left join extend_fields as ex on ex.id_parent = element.id_element
  left join media on media.id_media = (
    select id_media 
    from article_media
    where id_article = a.id_article
    order by ordering asc
    limit 1)
  where a.id_article in (
    select id_article from page_article pa
    join page on page.id_page = pa.id_page
    where page.name = 'playgrounds' and pa.online = 1
  )
  group by id, title, thumbnail, content
);

DROP TABLE IF EXISTS `data_version`;

CREATE TABLE `data_version` (
  `id` int(11) NOT NULL,
  `table_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `version` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `data_version` (`id`, `table_name`, `version`) VALUES
(0, 'category', 0.01),
(1, 'playgrounds', 0.01),
(2, 'clubs', 0.01);

create or replace view `versions` as (
  SELECT * FROM `data_version`
);

DROP TRIGGER IF EXISTS `categories_update`;

CREATE TRIGGER `categories_update` AFTER UPDATE ON `category`
 FOR EACH ROW update data_version
set data_version.version = (data_version.version + 0.01)
where data_version.table_name = 'category';