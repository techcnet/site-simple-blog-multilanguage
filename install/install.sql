# --- WireDatabaseBackup {"time":"2021-03-29 10:01:29","user":"","dbName":"pwtst2","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext DEFAULT NULL,
  `data1013` mediumtext DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('27', '<h3>The page you were looking for is not found.</h3>\n\n<p>Please use our search engine or navigation above to find the page.</p>', '<h3>Die Seite, die Sie suchen, wurde nicht gefunden.</h3>\n\n<p>Bitte verwenden Sie die Suchmaschine oder die Navigation oben, um die Seite zu finden.</p>', '<h3>Sivu etsit ei löytynyt.</h3>\n\n<p>Ole hyvä ja käytä hakukonetta tai navigointi ennen löytää sivun.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1', '<p>This site profile for ProcessWire offers a simple, multilingual and responsive blog which doesn\'t require any third-party modules. It works exclusively based on some template files.</p>', '<p>Dieses Site-Profil für ProcessWire bietet ein einfaches, mehrsprachiges und responsives Blog, für das keine Module von Drittanbietern erforderlich sind. Es funktioniert ausschließlich basierend auf einigen Vorlagendateien.</p>', '<p>Tämä ProcessWire sivustoprofiili tarjoaa yksinkertaisen, monikielisen ja responsive blog, joka ei vaadi kolmannen osapuolen moduuleja. Se toimii yksinomaan joidenkin mallitiedostojen perusteella.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1031', '', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1032', '<p>There are no settings for this blog. Everything is ready after installation. You just have to fill it with content and maybe add some new pages.</p>', '<p>Es gibt keine Einstellungen für diesen Blog. Nach der Installation ist alles fertig. Sie müssen es nur mit Inhalten füllen und möglicherweise einige neue Seiten hinzufügen.</p>', '<p>Tälle blogille ei ole asetuksia. Kaikki on valmis asennuksen jälkeen. Sinun tarvitsee vain täyttää se sisällöllä ja ehkä lisätä uusia sivuja.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1033', '<p>The whole blog consists mainly from the following pages:</p>\n\n<ol><li><strong>Home page</strong> (Template: simple-blog-home)<br />\n	This page shows the latest 5 posts below the content.</li>\n	<li><strong>Posts page</strong> (Template: simple-blog-posts)<br />\n	This page lists all published posts. Hidden posts are not listed. Posts are sorted by published date. The latest posts are shown first in the list. All posts are paginated to 10 posts per page.</li>\n	<li><strong>Post page</strong> (Template: simple-blog-post)<br />\n	This page shows the content and a comment list with comment form provided by the FieldtypeComments which is shipped with ProcessWire.</li>\n	<li><strong>Categories page</strong> (Template: simple-blog-categories)<br />\n	This page lists all categories which have posts.</li>\n	<li><strong>Category page</strong> (Template: simple-blog-category)<br />\n	This page lists all posts in this category. Hidden posts are not listed.</li>\n	<li><strong>Archive page</strong> (Template: simple-blog-archive)<br />\n	This page lists all published posts in a tree structure sorted by published date. Hidden posts are not listed.</li>\n	<li><strong>Search page</strong> (Template: simple-search)<br />\n	This page offers a search form.</li>\n	<li><strong>Contact page</strong> (Template: simple-contact-form)<br />\n	This page offers a contact form.</li>\n</ol><p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1033/structure.jpg\" width=\"500\" /></p>', '<p>Der gesamte Blog besteht hauptsächlich aus einigen Vorlagenseiten:</p>\n\n<ol><li><strong>Home-Seite</strong> (Vorlage: simple-blog-home)<br />\n	Diese Seite zeigt die letzten 5 Beiträge unter dem Inhalt.</li>\n	<li><strong>Beiträge-Seite</strong> (Vorlage: simple-blog-posts)<br />\n	Diese Seite listet alle veröffentlichten Beiträge auf. Versteckte Beiträge werden nicht aufgelistet. Die Beiträge sind nach Veröffentlichungsdatum sortiert. Die neuesten Beiträge werden zuerst in der Liste angezeigt. Alle Beiträge sind auf 10 Beiträge pro Seite paginiert.</li>\n	<li><strong>Beitrag-Seite</strong> (Vorlage: simple-blog-post)<br />\n	Diese Seite zeigt den Inhalt und eine Kommentarliste mit einem Kommentarformular, das von FieldtypeComments bereitgestellt wird und mit ProcessWire geliefert wird.</li>\n	<li><strong>Kategorien-Seite</strong> (Vorlage: simple-blog-categories)<br />\n	Diese Seite listet alle Kategorien auf, die Beiträge haben.</li>\n	<li><strong>Kategorie-Seite</strong> (Vorlage: simple-blog-category)<br />\n	Diese Seite listet alle Beiträge in dieser Kategorie auf. Versteckte Beiträge werden nicht aufgelistet.</li>\n	<li><strong>Archivseite</strong> (Vorlage: simple-blog-archive)<br />\n	Diese Seite listet alle veröffentlichten Beiträge in einer Baumstruktur auf, sortiert nach Veröffentlichungsdatum. Versteckte Beiträge werden nicht aufgelistet.</li>\n	<li><strong>Suchseite</strong> (Vorlage: simple-search)<br />\n	Diese Seite bietet ein Suchformular.</li>\n	<li><strong>Kontaktseite</strong> (Vorlage: simple-contact-form)<br />\n	Diese Seite bietet ein Kontaktformular.</li>\n</ol><p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1033/structure.jpg\" width=\"500\" /></p>', '<p>Koko blogi koostuu pääosin muutamasta mallisivusta:</p>\n\n<ol><li><strong>Kotisivu</strong> (Sapluuna: simple-blog-home)<br />\n	Tämä sivu näyttää viimeisimmät 5 viestiä sisällön alapuolella.</li>\n	<li><strong>Viestit-sivu</strong> (Sapluuna: simple-blog-posts)<br />\n	Tällä sivulla on luettelo kaikista julkaistuista viesteistä. Piilotettuja viestejä ei ole luettelossa. Viestit on lajiteltu julkaisupäivän mukaan. Viimeisimmät viestit näkyvät luettelon ensimmäisinä. Kaikki viestit sivutetaan 10 viestiin sivua kohden.</li>\n	<li><strong>Lähetä sivu</strong> (Sapluuna: simple-blog-post)<br />\n	Tämä sivu näyttää sisällön ja kommenttiluettelon sekä kommenttilomakkeen, jonka tarjoaa FieldtypeComments, joka toimitetaan ProcessWiren mukana.</li>\n	<li><strong>Luokat-sivu</strong> (Sapluuna: simple-blog-categories)<br />\n	Tällä sivulla on luettelo kaikista luokista, joilla on viestejä.</li>\n	<li><strong>Luokkasivu </strong>(Sapluuna: simple-blog-category)<br />\n	Tällä sivulla luetellaan kaikki tämän luokan viestit. Piilotettuja viestejä ei ole luettelossa.</li>\n	<li><strong>Arkistosivu</strong> (Sapluuna: simple-blog-archive)<br />\n	Tällä sivulla on luettelo kaikista puurakenteessa julkaistuista viesteistä lajiteltu julkaisupäivän mukaan. Piilotettuja viestejä ei ole luettelossa.</li>\n	<li><strong>Hakusivu</strong> (Sapluuna: simple-search)<br />\n	Tämä sivu tarjoaa hakulomakkeen.</li>\n	<li><strong>Yhteydenottosivu</strong> (Sapluuna: simple-contact-form)<br />\n	Tämä sivu tarjoaa yhteydenottolomakkeen.</li>\n</ol><p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1033/structure.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1024', '<p>This page lists all published posts.</p>', '<p>Auf dieser Seite sind alle veröffentlichten Beiträge aufgelistet.</p>', '<p>Tällä sivulla on luettelo kaikista julkaistuista viesteistä.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1025', '<p>This site profile is intended for use with a fresh installation of ProcessWire.</p>\n\n<ol><li><a href=\"https://processwire.com/download/core/\" target=\"_blank\" rel=\"noreferrer noopener\">Download ProcessWire</a>, extract all files and folders and upload it into your web server folder.</li>\n	<li>Download the site profile, extract the \"site-simple-blog-multilanguage\" folder and upload it into the same folder.</li>\n	<li>Start the installation.</li>\n	<li>When prompted for Site Installation Profile select \"Simple Multilingual Blog Profile for ProcessWire 3x\" and continue with installation.</li>\n</ol><p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1025/installation.jpg\" width=\"500\" /></p>', '<p>Dieses Site-Profil ist für die Verwendung mit einer Neuinstallation von ProcessWire vorgesehen.</p>\n\n<ol><li><a href=\"https://processwire.com/download/core/\" target=\"_blank\" rel=\"noreferrer noopener\">Laden Sie ProcessWire herunter</a>, extrahieren Sie alle Dateien und Ordner und laden Sie diese in den Webserverordner hoch.</li>\n	<li>Laden Sie das Site-Profil herunter, extrahieren Sie den Ordner \"site-simple-blog-multilanguage\" und laden Sie ihn in denselben Ordner hoch.</li>\n	<li>Starten Sie die Installation.</li>\n	<li>Wenn Sie zur Eingabe des Site-Installationsprofils aufgefordert werden, wählen Sie \"Simple Multilingual Blog Profile for ProcessWire 3x\" und fahren Sie mit der Installation fort.</li>\n</ol><p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1025/installation.jpg\" width=\"500\" /></p>', '<p>Tämä sivustoprofiili on tarkoitettu käytettäväksi uuden ProcessWire-asennuksen kanssa.</p>\n\n<ol><li><a href=\"https://processwire.com/download/core/\" target=\"_blank\" rel=\"noreferrer noopener\">Lataa ProcessWire</a>, pura kaikki tiedostot ja kansiot ja lähetä se Web-palvelimen kansioon.</li>\n	<li>Lataa sivuston profiili, pura \"site-simple-blog-multilanguage\"-kansio ja lähetä se samaan kansioon.</li>\n	<li>Aloita asennus.</li>\n	<li>Kun sinua kehotetaan antamaan sivuston asennusprofiili, valitse \"Simple Multilingual Blog Profile for ProcessWire 3x\" ja jatka asennusta.</li>\n</ol><p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1025/installation.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1026', '', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1027', '<p>This page lists all published posts in a tree structure sorted by published date.</p>', '<p>Auf dieser Seite sind alle veröffentlichten Beiträge in einer Baumstruktur aufgelistet und sortiert nach Veröffentlichungsdatum.</p>', '<p>Tällä sivulla on luettelo kaikista puurakenteessa julkaistuista viesteistä lajiteltu julkaisupäivän mukaan.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1028', '', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1029', '<p>Don\'t forget to specify the receiver email address on the contact page in the backend.</p>', '<p>Vergessen Sie nicht, die E-Mail-Adresse des Empfängers auf der Kontaktseite im Backend anzugeben.</p>', '<p>Älä unohda määrittää vastaanottajan sähköpostiosoitetta backendin yhteystietosivulla.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1030', '', '', '');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1023', '<p>This page lists all categories which have posts.</p>', '<p>Auf dieser Seite sind alle Kategorien aufgelistet, welche veröffentlichte Beiträge haben.</p>', '<p>Tällä sivulla on luettelo kaikista luokista, joilla on viestejä.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1034', '<p>Open the page structure, select \"Posts\" and click \"New\".</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1034/add-new-post-1.jpg\" width=\"500\" /></p>\n\n<p>Make sure that \"simple-blog-post\" is selected as Template.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1034/add-new-post-2.jpg\" width=\"500\" /></p>', '<p>Öffnen Sie die Seitenstruktur, wählen Sie \"Beiträge\" und klicken Sie auf \"Neu\".</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1034/add-new-post-1.jpg\" width=\"500\" /></p>\n\n<p>Stellen Sie sicher, dass \"simple-blog-post\" als Vorlage ausgewählt ist.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1034/add-new-post-2.jpg\" width=\"500\" /></p>', '<p>Avaa sivurakenne, valitse \"Viestit\" ja napsauta \"Uusi\".</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1034/add-new-post-1.jpg\" width=\"500\" /></p>\n\n<p>Varmista, että malliksi on valittu \"simple-blog-post\".</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1034/add-new-post-2.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1035', '<p>The post list shows a featured graphic in front of every post. This graphic is taken from the first available image in the image field of the respective post. Note that you can change the order of images in the image field by dragging it to another position. The image should have the dimension of 96x96px.</p>', '<p>Die Beitragsliste zeigt eine Präsentationsgrafik vor jedem Beitrag. Diese Grafik stammt aus dem ersten verfügbaren Bild im Bildfeld des jeweiligen Beitrags. Beachten Sie, dass Sie die Reihenfolge der Bilder im Bildfeld ändern können, indem Sie es an eine andere Position ziehen. Das Bild sollte die Größe 96x96px haben.</p>', '<p>Jokaisen viestin edessä näkyy postituslista. Tämä kuva on otettu vastaavan viestin kuvakentän ensimmäisestä käytettävissä olevasta kuvasta. Huomaa, että voit muuttaa kuvakentän kuvien järjestystä vetämällä sen toiseen paikkaan. Kuvan tulee olla kooltaan 96x96 kuvapistettä.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1036', '<p>Before you can select categories you have to create it. Open the page structure, select \"Categories\" and click \"New\".</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1036/create-category-1.357x0-is.jpg\" width=\"357\" /></p>\n\n<p>Make sure that \"simple-blog-category\" is selected as Template. The page title specifies the category name.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1036/create-category-2.jpg\" width=\"500\" /></p>\n\n<p>Open your post and click on \"Add\" in the Categories field and select a category.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1036/select-category.jpg\" width=\"500\" /></p>', '<p>Bevor Sie Kategorien auswählen können, müssen Sie diese erstellen. Öffnen Sie die Seitenstruktur, wählen Sie \"Kategorien\" und klicken Sie auf \"Neu\".</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1036/create-category-1.357x0-is.jpg\" width=\"357\" /></p>\n\n<p>Stellen Sie sicher, dass \"simple-blog-category\" als Vorlage ausgewählt ist. Der Seitentitel gibt den Kategorienamen an.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1036/create-category-2.jpg\" width=\"500\" /></p>\n\n<p>Öffnen Sie Ihren Beitrag und klicken Sie im Feld Kategorien auf \"Hinzufügen\" und wählen Sie eine Kategorie aus.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1036/select-category.jpg\" width=\"500\" /></p>', '<p>Ennen kuin voit valita luokat, sinun on luotava se. Avaa sivurakenne, valitse \"Luokat\" ja napsauta \"Uusi\".</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1036/create-category-1.357x0-is.jpg\" width=\"357\" /></p>\n\n<p>Varmista, että malliksi on valittu \"simple-blog-category\". Sivun otsikko määrittää luokan nimen.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1036/create-category-2.jpg\" width=\"500\" /></p>\n\n<p>Avaa viesti ja napsauta \"Lisää\" Luokat-kentässä ja valitse luokka.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1036/select-category.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1037', '<p>Each page can have a sidebar regardless of the page type. Just open the page, click in the sidebar field and fill it with content. The sidebar is displayed on right from the body content if the browser window is 700px or wider. If smaller than 700px the sidebar will be displayed below the body content.</p>', '<p>Jede Seite kann, unabhängig vom Seitentyp, eine Seitenleiste haben. Öffnen Sie einfach die Seite, klicken Sie in das Seitenleistenfeld und füllen Sie es mit Inhalt. Die Seitenleiste wird rechts vom Hauptteil angezeigt, wenn das Browserfenster 700 Pixel oder mehr groß ist. Bei einer Größe von weniger als 700 Pixel wird die Seitenleiste unterhalb des Hauptteils angezeigt.</p>', '<p>Jokaisella sivulla voi olla sivupalkki sivutyypistä riippumatta. Avaa vain sivu, napsauta sivupalkkikenttää ja täytä se sisällöllä. Sivupalkki näkyy oikealla rungon sisällöstä, jos selainikkuna on vähintään 700 kuvapistettä. Jos pienempi kuin 700 kuvapistettä, sivupalkki näkyy rungon sisällön alapuolella.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1038', '<p>Post lists are sorted by published date and paginated to 10 posts per page.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1038/pagination.jpg\" width=\"500\" /></p>', '<p>Beitragslisten werden nach Veröffentlichungsdatum sortiert und auf 10 Beiträge pro Seite paginiert.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1038/pagination.jpg\" width=\"500\" /></p>', '<p>Viestiluettelot on lajiteltu julkaisupäivän mukaan ja sivutettu 10 viestiin sivua kohden.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1038/pagination.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1039', '<p>Before you can use the contact form you have to specify the receiver email address. Open the page structure, select \"Contact\" and click \"Edit\". Enter the email address in the \"E-Mail Address\" field. You can also specify your \"Recaptcha-Site-Key\" and \"Recaptcha-Secret-Key\" to protect the form with Recaptcha.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1039/contact-form.jpg\" width=\"500\" /></p>', '<p>Bevor Sie das Kontaktformular verwenden können, müssen Sie die E-Mail-Adresse des Empfängers angeben. Öffnen Sie die Seitenstruktur, wählen Sie \"Kontaktformular\" und klicken Sie auf \"Bearbeiten\". Geben Sie die E-Mail-Adresse in das Feld \"E-Mail-Adresse\" ein. Sie können auch Ihren \"Recaptcha-Site-Key\" und \"Recaptcha-Secret-Key\" angeben, um das Formular mit Recaptcha zu schützen.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1039/contact-form.jpg\" width=\"500\" /></p>', '<p>Ennen kuin voit käyttää yhteydenottolomaketta, sinun on määritettävä vastaanottajan sähköpostiosoite. Avaa sivurakenne, valitse \"Yhteydenottolomake\" ja napsauta \"Muokkaa\". Kirjoita sähköpostiosoite Sähköpostiosoite-kenttään. Voit myös määrittää \"Recaptcha-Site-Key\" ja \"Recaptcha-Secret-Key\" suojaamaan lomakkeen Recaptchalla.</p>\n\n<p><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1039/contact-form.jpg\" width=\"500\" /></p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1040', '<p>The theme can easily customized to your requirement. The header background is located in <a	href=\"/site/templates/images/headerbg.png\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/images/headerbg.png</a>. This graphic is tiled over the background. The logo is located in <a	href=\"/site/templates/images/header.png\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/images/header.png</a>. The main style is located in <a	href=\"/site/templates/styles/main.css\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/styles/main.css</a>.</p>', '<p>Das Thema kann einfach an Ihre Anforderungen angepasst werden. The header background is located in <a	href=\"/site/templates/images/headerbg.png\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/images/headerbg.png</a>. This graphic is tiled over the background. The logo is located in <a	href=\"/site/templates/images/header.png\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/images/header.png</a>. The main style is located in <a	href=\"/site/templates/styles/main.css\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/styles/main.css</a>.</p>', '<p>Teema voidaan helposti räätälöidä tarpeidesi mukaan. The header background is located in <a	href=\"/site/templates/images/headerbg.png\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/images/headerbg.png</a>. This graphic is tiled over the background. The logo is located in <a	href=\"/site/templates/images/header.png\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/images/header.png</a>. The main style is located in <a	href=\"/site/templates/styles/main.css\" target=\"_blank\" rel=\"noreferrer noopener\">/site/templates/styles/main.css</a>.</p>');
INSERT INTO `field_body` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1041', '<p>This site profile for ProcessWire is provided by: <a href=\"https://tech-c.net/\" target=\"_blank\" rel=\"noreferrer noopener\">https://tech-c.net/</a></p>\n\n<p><a href=\"https://www.paypal.me/techcnet/\" rel=\"nofollow noreferrer noopener\" target=\"_blank\"><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1041/donate-paypal.png\" width=\"150\" /></a></p>', '<p>Dieses Site-Profil für ProcessWire wird bereitgestellt von: <a href=\"https://tech-c.net/\" target=\"_blank\" rel=\"noreferrer noopener\">https://tech-c.net/</a></p>\n\n<p><a href=\"https://www.paypal.me/techcnet/\" rel=\"nofollow noreferrer noopener\" target=\"_blank\"><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1041/donate-paypal.png\" width=\"150\" /></a></p>', '<p>Tämän ProcessWire-sivuston profiilin tarjoaa: <a href=\"https://tech-c.net/\" target=\"_blank\" rel=\"noreferrer noopener\">https://tech-c.net/</a></p>\n\n<p><a href=\"https://www.paypal.me/techcnet/\" rel=\"nofollow noreferrer noopener\" target=\"_blank\"><img alt=\"\" class=\"align_center\"	src=\"/site/assets/files/1041/donate-paypal.png\" width=\"150\" /></a></p>');

DROP TABLE IF EXISTS `field_categories`;
CREATE TABLE `field_categories` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1025', '1026', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1032', '1026', '2');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1034', '1026', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1036', '1026', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1039', '1026', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1025', '1030', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1032', '1030', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1033', '1030', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1037', '1030', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1038', '1030', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1041', '1030', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1032', '1031', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1034', '1031', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1035', '1031', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1037', '1031', '0');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1038', '1031', '1');
INSERT INTO `field_categories` (`pages_id`, `data`, `sort`) VALUES('1040', '1031', '0');

DROP TABLE IF EXISTS `field_comments`;
CREATE TABLE `field_comments` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `cite` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL,
  `created_users_id` int(10) unsigned NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `website` varchar(250) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL DEFAULT 0,
  `code` varchar(128) DEFAULT NULL,
  `subcode` varchar(40) DEFAULT NULL,
  `upvotes` int(10) unsigned NOT NULL DEFAULT 0,
  `downvotes` int(10) unsigned NOT NULL DEFAULT 0,
  `stars` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_id_sort` (`pages_id`,`sort`),
  KEY `status` (`status`,`email`),
  KEY `pages_id` (`pages_id`,`status`,`created`),
  KEY `created` (`created`,`status`),
  KEY `code` (`code`),
  KEY `subcode` (`subcode`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_comments_votes`;
CREATE TABLE `field_comments_votes` (
  `comment_id` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_id`,`ip`,`vote`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_datetime`;
CREATE TABLE `field_datetime` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1025', '2021-03-30 12:19:18');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1032', '2021-03-29 08:23:27');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1033', '2021-03-20 08:26:57');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1034', '2021-03-11 08:43:12');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1035', '2021-02-23 08:48:13');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1036', '2021-02-09 08:53:21');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1037', '2021-01-28 09:01:24');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1038', '2021-01-08 09:06:53');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1039', '2020-12-17 09:10:07');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1040', '2020-11-17 09:14:04');
INSERT INTO `field_datetime` (`pages_id`, `data`) VALUES('1041', '2020-10-13 09:21:48');

DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1012` text DEFAULT NULL,
  `data1013` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  KEY `data_exact1012` (`data1012`(255)),
  KEY `data_exact1013` (`data1013`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1', 'Simple Multilingual Blog Profile for ProcessWire', 'Einfaches mehrsprachiges Blog-Profil für ProcessWire', 'Yksinkertainen monikielinen blogiprofiili ProcessWire');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1023', 'Categories', 'Kategorien', 'Luokat');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1024', 'Posts', 'Beiträge', 'Viestit');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1025', 'Installation', 'Installation', 'Asennus');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1026', 'Category 1', 'Kategorie 1', 'Kategoria 1');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1027', 'Archive', 'Archiv', 'Arkistoi');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1028', 'Search', 'Suche', 'Hae');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1029', 'Contact', 'Kontakt', 'Ottaa yhteyttä');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1030', 'Category 2', 'Kategorie 2', 'Kategoria 2');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('27', '404 Page', '404 Seite', '404 Sivu');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1031', 'Category 3', 'Kategorie 3', 'Kategoria 3');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1032', 'Settings', 'Einstellungen', 'Asetukset');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1033', 'Structure', 'Struktur', 'Rakenne');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1034', 'Add a new post', 'Neuen Beitrag hinzufügen', 'Lisää uusi viesti');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1035', 'Set the featured graphic', 'Präsentationsgrafik festlegen', 'Aseta esillä oleva kuva');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1036', 'Create and select categories', 'Kategorien erstellen und auswählen', 'Luo ja valitse luokkia');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1037', 'Sidebars', 'Seitenleisten', 'Sivupalkit');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1038', 'Pagination', 'Paginierung', 'Sivutus');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1039', 'Contact form', 'Kontaktformular', 'Yhteydenottolomake');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1040', 'Theme', 'Thema', 'Teema');
INSERT INTO `field_headline` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1041', 'About this site profile...', 'Über dieses Site-Profil...', 'Tietoja tästä profiilista...');

DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `filedata` mediumtext DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1033', 'structure.jpg', '1', '[\"\"]', '2021-03-29 08:28:50', '2021-03-29 08:28:50', '66362', '41', '41', '', '500', '368', '1.36');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1033', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 08:28:50', '2021-03-29 08:28:50', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1032', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 08:25:25', '2021-03-29 08:25:25', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1025', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 08:15:46', '2021-03-29 08:15:46', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1025', 'installation.jpg', '1', '[\"\"]', '2021-03-29 09:58:36', '2021-03-29 09:58:36', '78309', '41', '41', '', '500', '375', '1.33');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1034', 'add-new-post-1.jpg', '1', '[\"\"]', '2021-03-29 08:46:20', '2021-03-29 08:46:20', '50259', '41', '41', '', '500', '315', '1.59');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1034', 'add-new-post-2.jpg', '2', '[\"\"]', '2021-03-29 08:46:20', '2021-03-29 08:46:20', '47819', '41', '41', '', '500', '302', '1.66');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1034', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 08:46:20', '2021-03-29 08:46:20', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1035', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 08:51:06', '2021-03-29 08:51:06', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1036', 'select-category.jpg', '3', '[\"\"]', '2021-03-29 08:56:25', '2021-03-29 08:56:25', '34888', '41', '41', '', '500', '237', '2.11');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1036', 'create-category-2.jpg', '2', '[\"\"]', '2021-03-29 08:56:25', '2021-03-29 08:56:25', '53032', '41', '41', '', '500', '304', '1.64');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1036', 'create-category-1.jpg', '1', '[\"\"]', '2021-03-29 08:56:25', '2021-03-29 08:56:25', '59508', '41', '41', '', '369', '378', '0.98');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1036', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 08:56:25', '2021-03-29 08:56:25', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1037', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 09:05:44', '2021-03-29 09:05:44', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1038', 'pagination.jpg', '1', '[\"\"]', '2021-03-29 09:09:06', '2021-03-29 09:09:06', '132097', '41', '41', '', '500', '336', '1.49');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1038', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 09:09:06', '2021-03-29 09:09:06', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1039', 'contact-form.jpg', '1', '[\"\"]', '2021-03-29 09:13:04', '2021-03-29 09:13:04', '76227', '41', '41', '', '500', '446', '1.12');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1039', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 09:13:04', '2021-03-29 09:13:04', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1040', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 09:15:17', '2021-03-29 09:15:17', '3055', '41', '41', '', '96', '96', '1.00');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1041', 'donate-paypal.png', '1', '[\"\"]', '2021-03-29 09:24:40', '2021-03-29 09:24:40', '19272', '41', '41', '', '150', '70', '2.14');
INSERT INTO `field_images` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`, `width`, `height`, `ratio`) VALUES('1041', 'featured-graphic.png', '0', '[\"\"]', '2021-03-29 09:24:40', '2021-03-29 09:24:40', '3055', '41', '41', '', '96', '96', '1.00');

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1010', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1010', '0');

DROP TABLE IF EXISTS `field_language_files`;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `filedata` mediumtext DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--templates-admin--debug-inc.json', '117', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--textformatter--textformatterentities-module.json', '116', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--system--systemupdater--systemupdater-module.json', '115', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', '114', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', '113', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', '112', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processuser--processuser-module.json', '111', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', '110', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processtemplate--processtemplate-module.json', '109', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processprofile--processprofile-module.json', '107', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processrole--processrole-module.json', '108', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpermission--processpermission-module.json', '106', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpageview-module.json', '105', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpagetype--processpagetype-module.json', '104', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpagetrash-module.json', '103', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpagesort-module.json', '102', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpagesearch--processpagesearch-module.json', '101', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpagelister--processpagelister-module.json', '100', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpagelist--processpagelist-module.json', '99', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpageedit--processpageedit-module.json', '96', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', '98', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', '97', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpageclone-module.json', '95', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processpageadd--processpageadd-module.json', '94', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processmodule--processmoduleinstall-php.json', '93', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processlogin--processlogin-module.json', '91', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processmodule--processmodule-module.json', '92', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processlist-module.json', '90', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processhome-module.json', '89', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processforgotpassword-module.json', '88', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processfield--processfield-module.json', '86', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--process--processfield--processfieldexportimport-php.json', '87', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--pagerender-module.json', '85', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--pagepaths-module.json', '84', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--languagesupport--languagetabs-module.json', '80', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--languagesupport--processlanguage-module.json', '81', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--markup--markuppagefields-module.json', '82', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--markup--markuppagernav--markuppagernav-module.json', '83', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--languagesupport--languagesupportpagenames-module.json', '79', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--languagesupport--languageparser-php.json', '76', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--languagesupport--languagesupport-module.json', '77', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--languagesupport--languagesupportfields-module.json', '78', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldurl-module.json', '74', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', '75', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldtinymce--inputfieldtinymce-module.json', '73', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldtextarea-module.json', '72', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldselectmultiple-module.json', '68', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', '69', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldtext-module.json', '71', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', '70', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldselect-module.json', '67', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', '66', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldpassword-module.json', '65', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', '61', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', '62', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', '63', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', '64', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', '60', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', '59', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', '58', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', '57', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldname-module.json', '56', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldmarkup-module.json', '55', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldinteger-module.json', '54', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', '49', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldfloat-module.json', '50', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldform-module.json', '51', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldhidden-module.json', '52', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', '53', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldfieldset-module.json', '48', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldemail-module.json', '47', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', '46', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', '45', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', '44', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldbutton-module.json', '42', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldcheckbox-module.json', '43', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypetextarea-module.json', '39', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypeurl-module.json', '40', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', '41', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypetext-module.json', '38', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypeselector-module.json', '37', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', '36', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', '35', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypepagetable-module.json', '34', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypepage-module.json', '33', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypemodule-module.json', '32', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypefloat-module.json', '31', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypefile-module.json', '30', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypedatetime-module.json', '29', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', '28', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', '27', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', '24', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', '25', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', '26', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', '23', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--wireupload-php.json', '22', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--wiretempdir-php.json', '21', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--sessioncsrf-php.json', '18', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--wirecache-php.json', '19', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--wirehttp-php.json', '20', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--session-php.json', '17', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--pages-php.json', '13', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--password-php.json', '14', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--process-php.json', '15', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--sanitizer-php.json', '16', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--pagefile-php.json', '11', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--pageimage-php.json', '12', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--modules-php.json', '10', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--inputfieldwrapper-php.json', '9', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--inputfield-php.json', '8', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--functions-php.json', '7', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--fieldtypemulti-php.json', '6', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--fieldtype-php.json', '5', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--fieldselectorinfo-php.json', '4', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--fields-php.json', '2', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--admintheme-php.json', '3', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--fieldgroups-php.json', '1', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--core--field-php.json', '0', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'wire--templates-admin--default-php.json', '118', '[\"\"]', '2021-03-27 11:19:19', '2021-03-27 11:19:19', NULL, '0', '0', NULL);

DROP TABLE IF EXISTS `field_language_files_site`;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `filedata` mediumtext DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'site--templates--simple-contact-form-php.json', '2', '[\"\"]', '2021-03-29 09:43:13', '2021-03-29 09:43:13', '144', '41', '41', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'site--templates--_func-php.json', '0', '[\"\"]', '2021-03-29 09:43:13', '2021-03-29 09:43:13', '116', '41', '41', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1012', 'site--templates--simple-search-php.json', '1', '[\"\"]', '2021-03-29 09:43:13', '2021-03-29 09:43:13', '132', '41', '41', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1013', 'site--templates--simple-search-php.json', '1', '[\"\"]', '2021-03-29 09:47:25', '2021-03-29 09:47:25', '132', '41', '41', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1013', 'site--templates--_func-php.json', '0', '[\"\"]', '2021-03-29 09:47:25', '2021-03-29 09:47:25', '116', '41', '41', '');
INSERT INTO `field_language_files_site` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filesize`, `created_users_id`, `modified_users_id`, `filedata`) VALUES('1013', 'site--templates--simple-contact-form-php.json', '2', '[\"\"]', '2021-03-29 09:47:25', '2021-03-29 09:47:25', '144', '41', '41', '');

DROP TABLE IF EXISTS `field_menutext`;
CREATE TABLE `field_menutext` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1012` text DEFAULT NULL,
  `data1013` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1012` (`data1012`(250)),
  KEY `data_exact1013` (`data1013`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_menutext` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1023', 'Categories', 'Kategorien', 'Luokat');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1024', 'Posts', 'Beiträge', 'Viestit');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1027', 'Archive', 'Archiv', 'Arkistoi');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1028', 'Search', 'Suche', 'Hae');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1029', 'Contact', 'Kontakt', 'Ottaa yhteyttä');
INSERT INTO `field_menutext` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1', 'Home', 'Start', 'Koti');

DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1009', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1011', '160');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1015', '168');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1017', '170');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1021', '175');

DROP TABLE IF EXISTS `field_recaptchasecretkey`;
CREATE TABLE `field_recaptchasecretkey` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_recaptchasitekey`;
CREATE TABLE `field_recaptchasitekey` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext DEFAULT NULL,
  `data1013` mediumtext DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1024', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1025', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1026', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1027', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1028', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1029', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1030', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1023', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1031', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1032', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1033', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1034', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1035', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1036', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1037', '<h3>Sidebar</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<h3>Seitenleiste</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<h3>Sivupalkit</h3>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1038', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1039', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1040', '', '', '');
INSERT INTO `field_sidebar` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1041', '', '', '');

DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext DEFAULT NULL,
  `data1013` mediumtext DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1024', 'This page lists all published posts.', 'Auf dieser Seite sind alle veröffentlichten Beiträge aufgelistet.', 'Tällä sivulla on luettelo kaikista julkaistuista viesteistä.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1025', 'This site profile is intended for use with a fresh installation of ProcessWire.', 'Dieses Site-Profil ist für die Verwendung mit einer Neuinstallation von ProcessWire vorgesehen.', 'Tämä sivustoprofiili on tarkoitettu käytettäväksi uuden ProcessWire-asennuksen kanssa.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1026', '', '', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1027', 'This page lists all published posts in a tree structure sorted by published date.', 'Auf dieser Seite sind alle veröffentlichten Beiträge in einer Baumstruktur aufgelistet und sortiert nach Veröffentlichungsdatum.', 'Tällä sivulla on luettelo kaikista puurakenteessa julkaistuista viesteistä lajiteltu julkaisupäivän mukaan.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1028', '', '', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1029', 'Contact form.', 'Kontaktformular.', 'Yhteydenottolomake.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1030', '', '', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1', 'This site profile for ProcessWire offers a simple, multilingual and responsive blog which doesn\'t require any third-party modules.', 'Dieses Site-Profil für ProcessWire bietet ein einfaches, mehrsprachiges und responsives Blog, für das keine Module von Drittanbietern erforderlich sind.', 'Tämä ProcessWire sivustoprofiili tarjoaa yksinkertaisen, monikielisen ja responsive blog, joka ei vaadi kolmannen osapuolen moduuleja.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1023', 'This page lists all categories which have posts.', 'Auf dieser Seite sind alle Kategorien aufgelistet, welche veröffentlichte Beiträge haben.', 'Tällä sivulla on luettelo kaikista luokista, joilla on viestejä.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1031', '', '', '');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1032', 'There are no settings for this blog. Everything is ready after installation. You just have to fill it with content and maybe add some new pages.', 'Es gibt keine Einstellungen für diesen Blog. Nach der Installation ist alles fertig. Sie müssen es nur mit Inhalten füllen und möglicherweise einige neue Seiten hinzufügen.', 'Tälle blogille ei ole asetuksia. Kaikki on valmis asennuksen jälkeen. Sinun tarvitsee vain täyttää se sisällöllä ja ehkä lisätä uusia sivuja.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1033', 'The whole blog consists mainly from a few template pages.', 'Der gesamte Blog besteht hauptsächlich aus einigen Vorlagenseiten.', 'Koko blogi koostuu pääosin muutamasta mallisivusta.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1034', 'Open the page structure, select \"Posts\" and click \"New\".', 'Öffnen Sie die Seitenstruktur, wählen Sie \"Beiträge\" und klicken Sie auf \"Neu\".', 'Avaa sivurakenne, valitse \"Viestit\" ja napsauta \"Uusi\".');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1035', 'The post list shows a featured graphic in front of every post. This graphic is taken from the first available image in the image field of the respective post.', 'Die Beitragsliste zeigt eine vorgestellte Grafik vor jedem Beitrag. Diese Grafik stammt aus dem ersten verfügbaren Bild im Bildfeld des jeweiligen Beitrags.', 'Jokaisen viestin edessä näkyy postituslista. Tämä kuva on otettu vastaavan viestin kuvakentän ensimmäisestä käytettävissä olevasta kuvasta.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1036', 'Before you can select categories you have to create it. Open the page structure, select \"Categories\" and click \"New\".', 'Bevor Sie Kategorien auswählen können, müssen Sie diese erstellen. Öffnen Sie die Seitenstruktur, wählen Sie \"Kategorien\" und klicken Sie auf \"Neu\".', 'Ennen kuin voit valita luokat, sinun on luotava se. Avaa sivurakenne, valitse \"Luokat\" ja napsauta \"Uusi\".');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1037', 'Each page can have a sidebar regardless of the page type. Just open the page, click in the sidebar field and fill it with content.', 'Jede Seite kann, unabhängig vom Seitentyp, eine Seitenleiste haben. Öffnen Sie einfach die Seite, klicken Sie in das Seitenleistenfeld und füllen Sie es mit Inhalt.', 'Jokaisella sivulla voi olla sivupalkki sivutyypistä riippumatta. Avaa vain sivu, napsauta sivupalkkikenttää ja täytä se sisällöllä.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1038', 'Post lists are sorted by published date and paginated to 10 posts per page.', 'Beitragslisten werden nach Veröffentlichungsdatum sortiert und auf 10 Beiträge pro Seite paginiert.', 'Viestiluettelot on lajiteltu julkaisupäivän mukaan ja sivutettu 10 viestiin sivua kohden.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1039', 'Before you can use the contact form you have to specify the receiver email address. Open the page structure, select \"Contact\" and click \"Edit\".', 'Bevor Sie das Kontaktformular verwenden können, müssen Sie die E-Mail-Adresse des Empfängers angeben. Öffnen Sie die Seitenstruktur, wählen Sie \"Kontaktformular\" und klicken Sie auf \"Bearbeiten\".', 'Ennen kuin voit käyttää yhteydenottolomaketta, sinun on määritettävä vastaanottajan sähköpostiosoite. Avaa sivurakenne, valitse \"Yhteydenottolomake\" ja napsauta \"Muokkaa\".');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1040', 'The theme can easily customized to your requirement.', 'Das Thema kann einfach an Ihre Anforderungen angepasst werden.', 'Teema voidaan helposti räätälöidä tarpeidesi mukaan.');
INSERT INTO `field_summary` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1041', 'This site profile for ProcessWire is provided by: https://tech-c.net/', 'Dieses Site-Profil für ProcessWire wird bereitgestellt von: https://tech-c.net/', 'Tämän ProcessWire-sivuston profiilin tarjoaa: https://tech-c.net/');

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1012` text DEFAULT NULL,
  `data1013` text DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  KEY `data_exact1012` (`data1012`(255)),
  KEY `data_exact1013` (`data1013`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('11', 'Templates', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('16', 'Fields', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('22', 'Setup', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('3', 'Pages', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('6', 'Add Page', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('8', 'Tree', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('9', 'Save Sort', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('10', 'Edit', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('21', 'Modules', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('29', 'Users', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('30', 'Roles', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('2', 'Admin', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('7', 'Trash', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('27', '404 Page', '404 Seite', '404 Sivu');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('302', 'Insert Link', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('23', 'Login', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('304', 'Profile', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('301', 'Empty Trash', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('300', 'Search', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('303', 'Insert Image', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('28', 'Access', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('31', 'Permissions', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('32', 'Edit pages', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('34', 'Delete pages', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('35', 'Move pages (change parent)', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('36', 'View pages', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('50', 'Sort child pages', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('51', 'Change templates on pages', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('52', 'Administer users', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('53', 'User can update profile/password', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('54', 'Lock or unlock a page', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1', 'Simple Multilingual Blog Profile for ProcessWire', 'Einfaches mehrsprachiges Blog-Profil für ProcessWire', 'Yksinkertainen monikielinen blogiprofiili ProcessWire');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1024', 'Posts', 'Beiträge', 'Viestit');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1025', 'Installation', 'Installation', 'Asennus');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1026', 'Category 1', 'Kategorie 1', 'Kategoria 1');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1027', 'Archive', 'Archiv', 'Arkistoi');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1028', 'Search', 'Suche', 'Hae');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1006', 'Use Page Lister', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1007', 'Find', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1009', 'Languages', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1010', 'English', 'Englisch', 'Englanti');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1011', 'Language Translator', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1012', 'German', 'Deutsch', 'Saksan');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1013', 'Finnish', 'Finnisch', 'Suomi');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1015', 'Recent', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1016', 'Can see recently edited pages', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1017', 'Logs', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1018', 'Can view system logs', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1019', 'Can manage system logs', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1021', 'Comments', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1022', 'Use the comments manager', '', '');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1023', 'Categories', 'Kategorien', 'Luokat');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1029', 'Contact', 'Kontakt', 'Ottaa yhteyttä');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1030', 'Category 2', 'Kategorie 2', 'Kategoria 2');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1031', 'Category 3', 'Kategorie 3', 'Kategoria 3');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1032', 'Settings', 'Einstellungen', 'Asetukset');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1033', 'Structure', 'Struktur', 'Rakenne');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1034', 'Add a new post', 'Neuen Beitrag hinzufügen', 'Lisää uusi viesti');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1035', 'Set the featured graphic', 'Präsentationsgrafik festlegen', 'Aseta esillä oleva kuva');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1036', 'Create and select categories', 'Kategorien erstellen und auswählen', 'Luo ja valitse luokkia');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1037', 'Sidebars', 'Seitenleisten', 'Sivupalkit');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1038', 'Pagination', 'Paginierung', 'Sivutus');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1039', 'Contact form', 'Kontaktformular', 'Yhteydenottolomake');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1040', 'Theme', 'Thema', 'Teema');
INSERT INTO `field_title` (`pages_id`, `data`, `data1012`, `data1013`) VALUES('1041', 'About this site profile...', 'Über dieses Site-Profil...', 'Tietoja tästä profiilista...');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'language');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('98', 'basic');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('99', 'simple-blog-home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('100', 'simple-blog-post');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('101', 'simple-search');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('102', 'simple-blog-posts');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('103', 'simple-contact-form');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('104', 'simple-blog-archive');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('105', 'simple-blog-categories');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('106', 'simple-blog-category');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `fields_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '98', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '79', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '76', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '109', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '108', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '92', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '100', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '97', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '103', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('98', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('99', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('104', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('105', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '82', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('106', '44', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('102', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '44', '9', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '82', '8', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('103', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '104', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '78', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '79', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '76', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '82', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('101', '44', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '82', '6', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '76', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '106', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '107', '5', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '79', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '78', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '44', '7', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('100', '105', '8', NULL);

DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitleLanguage', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"label1012\":\"Titel\",\"label1013\":\"Nimi\\u00f6\",\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('82', 'FieldtypeTextareaLanguage', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":2,\"label1012\":\"Seitenleiste\",\"label1013\":\"Sivupalkki\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":270,\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"label1012\":\"Bilder\",\"label1013\":\"Kuvat\",\"textformatters\":[\"TextformatterEntities\"]}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('79', 'FieldtypeTextareaLanguage', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"label1012\":\"Zusammenfassung\",\"label1013\":\"Yhteenveto\",\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('76', 'FieldtypeTextareaLanguage', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"label1012\":\"Inhalt\",\"label1013\":\"Sis\\u00e4llys\",\"langBlankInherit\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('78', 'FieldtypeTextLanguage', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the field above if more text is needed for the page than for the navigation. \",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"langBlankInherit\":1,\"label1012\":\"\\u00dcberschrift\",\"label1013\":\"Otsikko\",\"description1012\":\"Verwenden Sie diese statt dem obigen Feld, wenn mehr Text für die Seite als f\\u00fcr die Navigation ben\\u00f6tigt wird.j\",\"description1013\":\"K\\u00e4yt\\u00e4 t\\u00e4t\\u00e4 sijasta kent\\u00e4n yl\\u00e4puolella, jos enemm\\u00e4n teksti\\u00e4 tarvitaan sivun kuin navigointiin.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":14,\"outputFormat\":0,\"defaultValuePage\":0,\"clone_field\":1,\"description\":\"Use this for field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1009,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"description\":\"Use this for field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":14}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('103', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('104', 'FieldtypeTextLanguage', 'menutext', '0', 'Menu text', '');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('105', 'FieldtypeComments', 'comments', '0', 'Comments', '{\"label1012\":\"Kommentare\",\"label1013\":\"Kommentit\",\"schemaVersion\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('106', 'FieldtypePage', 'categories', '0', 'Categories', '{\"label1012\":\"Kategorien\",\"label1013\":\"Luokat\",\"derefAsPage\":0,\"inputfield\":\"InputfieldPageListSelectMultiple\",\"parent_id\":1023,\"labelFieldName\":\"title\",\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('107', 'FieldtypeDatetime', 'datetime', '0', 'Published', '{\"label1012\":\"Ver\\u00f6ffentlicht\",\"label1013\":\"Julkaistu\",\"dateOutputFormat\":\"l, j F Y\",\"collapsed\":0,\"inputType\":\"text\",\"htmlType\":\"date\",\"datepicker\":3,\"timeInputSelect\":0,\"dateInputFormat\":\"l, j F Y\",\"timeInputFormat\":\"H:i:s\",\"size\":25,\"dateSelectFormat\":\"yMd\",\"yearFrom\":1921,\"yearTo\":2041,\"yearLock\":0,\"defaultToday\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('108', 'FieldtypeText', 'recaptchasecretkey', '0', 'Recaptcha-Secret-Key', '{\"label1012\":\"Recaptcha-Secret-Key\",\"label1013\":\"Recaptcha-Secret-Key\",\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('109', 'FieldtypeText', 'recaptchasitekey', '0', 'Recaptcha-Site-Key', '{\"label1012\":\"Recaptcha-Site-Key\",\"label1013\":\"Recaptcha-Site-Key\"}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"language\",\"admin_theme\"]}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":18,\"coreVersion\":\"3.0.165\"}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('152', 'PagePathHistory', '3', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('158', 'LanguageSupport', '35', '{\"languagesPageID\":1009,\"defaultLanguagePageID\":1010,\"otherLanguagePageIDs\":[1012,1013],\"languageTranslatorPageID\":1011}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessLanguage', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'ProcessLanguageTranslator', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'LanguageSupportFields', '3', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'FieldtypeTextLanguage', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'FieldtypePageTitleLanguage', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'FieldtypeTextareaLanguage', '1', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":10,\"pageNumUrlPrefix1010\":\"page\",\"useHomeSegment\":0}', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'LanguageTabs', '11', '', '2021-03-27 11:19:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'ProcessRecentPages', '1', '', '2021-03-27 11:19:36');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'AdminThemeUikit', '10', '', '2021-03-27 11:19:37');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'ProcessLogger', '1', '', '2021-03-27 11:19:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'InputfieldIcon', '0', '', '2021-03-27 11:19:43');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'FieldtypeComments', '1', '', '2021-03-27 12:45:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('174', 'InputfieldCommentsAdmin', '0', '', '2021-03-27 12:45:19');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('175', 'ProcessCommentsManager', '1', '', '2021-03-27 12:46:31');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('176', 'InputfieldToggle', '0', '', '2021-03-27 12:55:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'InputfieldPageAutocomplete', '0', '', '2021-03-29 11:16:42');

DROP TABLE IF EXISTS `page_path_history`;
CREATE TABLE `page_path_history` (
  `path` varchar(250) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `language_id` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT 0,
  `templates_id` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `name1012` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1012` int(10) unsigned NOT NULL DEFAULT 1,
  `name1013` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1013` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name1012_parent_id` (`name1012`,`parent_id`),
  UNIQUE KEY `name1013_parent_id` (`name1013`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1042 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1', '0', '45', 'en', '9', '2021-03-29 10:00:14', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '0', 'de', '1', 'fi', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('2', '1', '2', 'processwire', '1035', '2021-03-27 11:19:37', '40', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '9', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('3', '2', '2', 'page', '21', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('6', '3', '2', 'add', '21', '2021-03-27 11:19:48', '40', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('7', '1', '2', 'trash', '1039', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '10', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('8', '3', '2', 'list', '21', '2021-03-27 11:19:53', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('9', '3', '2', 'sort', '1047', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '3', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('10', '3', '2', 'edit', '1045', '2021-03-27 11:19:52', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '4', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('11', '22', '2', 'template', '21', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('16', '22', '2', 'field', '21', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('21', '2', '2', 'module', '21', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('22', '2', '2', 'setup', '21', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('23', '2', '2', 'login', '1035', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '4', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('27', '1', '44', 'http404', '1035', '2021-03-29 10:09:53', '41', '2021-03-27 11:19:19', '3', '2021-03-27 11:19:19', '8', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('28', '2', '2', 'access', '13', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '3', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('29', '28', '2', 'users', '29', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('30', '28', '2', 'roles', '29', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('31', '28', '2', 'permissions', '29', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('32', '31', '5', 'page-edit', '25', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('34', '31', '5', 'page-delete', '25', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '3', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('35', '31', '5', 'page-move', '25', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '4', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('36', '31', '5', 'page-view', '25', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('37', '30', '4', 'guest', '25', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('38', '30', '4', 'superuser', '25', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('41', '29', '3', 'admin', '1', '2021-03-27 11:19:37', '40', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('40', '29', '3', 'guest', '25', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('50', '31', '5', 'page-sort', '25', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '5', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('51', '31', '5', 'page-template', '25', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '6', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('52', '31', '5', 'user-admin', '25', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '10', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('53', '31', '5', 'profile-edit', '1', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '13', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('54', '31', '5', 'page-lock', '1', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '8', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('300', '3', '2', 'search', '1045', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '6', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('301', '3', '2', 'trash', '1047', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '6', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('302', '3', '2', 'link', '1041', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '7', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('303', '3', '2', 'image', '1041', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', '2021-03-27 11:19:19', '8', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('304', '2', '2', 'profile', '1025', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '5', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1025', '1024', '46', 'installation', '1', '2021-03-29 11:59:19', '41', '2021-03-27 13:04:32', '41', '2021-03-27 13:04:53', '0', NULL, '1', 'asennus', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1026', '1023', '52', 'category-1', '1', '2021-03-27 13:06:10', '41', '2021-03-27 13:05:27', '41', '2021-03-27 13:06:10', '0', 'kategorie-1', '1', 'kategoria-1', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1027', '1', '50', 'archive', '1', '2021-03-29 10:07:38', '41', '2021-03-27 13:07:04', '41', '2021-03-27 13:07:52', '5', 'archiv', '1', 'arkistoi', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1028', '1', '47', 'search', '1', '2021-03-29 05:27:51', '41', '2021-03-27 13:08:45', '41', '2021-03-27 13:09:08', '7', 'suche', '1', 'hae', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1029', '1', '49', 'contact', '1', '2021-03-29 10:08:59', '41', '2021-03-27 13:10:07', '41', '2021-03-27 13:11:17', '6', 'kontakt', '1', 'ottaa-yhteytta', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1006', '31', '5', 'page-lister', '1', '2021-03-27 11:19:19', '40', '2021-03-27 11:19:19', '40', '2021-03-27 11:19:19', '9', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1007', '3', '2', 'lister', '1', '2021-03-27 11:19:19', '40', '2021-03-27 11:19:19', '40', '2021-03-27 11:19:19', '9', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1009', '22', '2', 'languages', '16', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1010', '1009', '43', 'default', '16', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '0', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1011', '22', '2', 'language-translator', '1040', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '3', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1012', '1009', '43', 'de', '1', '2021-03-29 11:43:13', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '1', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1013', '1009', '43', 'fi', '1', '2021-03-29 11:47:25', '41', '2021-03-27 11:19:19', '41', '2021-03-27 11:19:19', '2', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1015', '3', '2', 'recent-pages', '1', '2021-03-27 11:19:36', '40', '2021-03-27 11:19:36', '40', '2021-03-27 11:19:36', '10', NULL, '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1016', '31', '5', 'page-edit-recent', '1', '2021-03-27 11:19:36', '40', '2021-03-27 11:19:36', '40', '2021-03-27 11:19:36', '10', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1017', '22', '2', 'logs', '1', '2021-03-27 11:19:43', '40', '2021-03-27 11:19:43', '40', '2021-03-27 11:19:43', '4', NULL, '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1018', '31', '5', 'logs-view', '1', '2021-03-27 11:19:43', '40', '2021-03-27 11:19:43', '40', '2021-03-27 11:19:43', '11', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1019', '31', '5', 'logs-edit', '1', '2021-03-27 11:19:43', '40', '2021-03-27 11:19:43', '40', '2021-03-27 11:19:43', '12', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1024', '1', '48', 'posts', '1', '2021-03-29 11:19:30', '41', '2021-03-27 13:02:17', '41', '2021-03-27 13:02:48', '3', 'beitrage', '1', 'viestit', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1021', '22', '2', 'comments', '1', '2021-03-27 12:46:31', '41', '2021-03-27 12:46:31', '41', '2021-03-27 12:46:31', '6', NULL, '0', NULL, '0');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1022', '31', '5', 'comments-manager', '1', '2021-03-27 12:46:31', '41', '2021-03-27 12:46:31', '41', '2021-03-27 12:46:31', '13', NULL, '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1023', '1', '51', 'categories', '1', '2021-03-29 10:04:59', '41', '2021-03-27 12:52:57', '41', '2021-03-27 12:53:15', '4', 'kategorien', '1', 'luokat', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1030', '1023', '52', 'category-2', '1', '2021-03-27 13:15:49', '41', '2021-03-27 13:14:46', '41', '2021-03-27 13:15:17', '1', 'kategorie-2', '1', 'kategoria-2', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1031', '1023', '52', 'category-3', '1', '2021-03-29 10:12:06', '41', '2021-03-29 10:11:29', '41', '2021-03-29 10:11:49', '2', 'kategorie-3', '1', 'kategoria-3', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1032', '1024', '46', 'settings', '1', '2021-03-29 10:25:25', '41', '2021-03-29 10:23:26', '41', '2021-03-29 10:25:04', '1', 'einstellungen', '1', 'asetukset', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1033', '1024', '46', 'structure', '1', '2021-03-29 10:41:09', '41', '2021-03-29 10:26:56', '41', '2021-03-29 10:28:50', '2', 'struktur', '1', 'rakenne', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1034', '1024', '46', 'add-a-new-post', '1', '2021-03-29 10:46:20', '41', '2021-03-29 10:43:11', '41', '2021-03-29 10:46:20', '3', 'neuen-beitrag-hinzufugen', '1', 'lisaa-uusi-viesti', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1035', '1024', '46', 'set-the-featured-graphic', '1', '2021-03-29 10:52:32', '41', '2021-03-29 10:48:13', '41', '2021-03-29 10:51:06', '4', 'prasentationsgrafik-festlegen', '1', 'aseta-esilla-oleva-kuva', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1036', '1024', '46', 'create-and-select-categories', '1', '2021-03-29 11:00:03', '41', '2021-03-29 10:53:20', '41', '2021-03-29 10:56:25', '5', 'kategorien-erstellen-und-auswahlen', '1', 'luo-ja-valitse-luokkia', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1037', '1024', '46', 'sidebars', '1', '2021-03-29 11:05:44', '41', '2021-03-29 11:01:24', '41', '2021-03-29 11:05:05', '6', 'seitenleisten', '1', 'sivupalkit', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1038', '1024', '46', 'pagination', '1', '2021-03-29 11:09:06', '41', '2021-03-29 11:06:53', '41', '2021-03-29 11:09:06', '7', 'paginierung', '1', 'sivutus', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1039', '1024', '46', 'contact-form', '1', '2021-03-29 11:13:04', '41', '2021-03-29 11:10:06', '41', '2021-03-29 11:13:04', '8', 'kontaktformular', '1', 'yhteydenottolomake', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1040', '1024', '46', 'theme', '1', '2021-03-29 11:20:25', '41', '2021-03-29 11:14:04', '41', '2021-03-29 11:15:17', '9', 'thema', '1', 'teema', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1012`, `status1012`, `name1013`, `status1013`) VALUES('1041', '1024', '46', 'about-this-site-profile', '1', '2021-03-29 11:25:03', '41', '2021-03-29 11:21:47', '41', '2021-03-29 11:24:40', '10', 'uber-dieses-site-profil', '1', 'tietoja-tasta-profiilista', '1');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1010', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1012', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1016', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1018', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '2', '2021-03-27 11:33:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('27', '45', '2021-03-27 12:57:52');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1025', '45', '2021-03-27 13:04:32');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1024', '45', '2021-03-27 13:02:17');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1027', '45', '2021-03-27 13:07:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1026', '45', '2021-03-27 13:05:27');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1022', '2', '2021-03-27 12:46:31');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1023', '45', '2021-03-27 12:52:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1028', '45', '2021-03-27 13:08:45');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1029', '45', '2021-03-27 13:10:07');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1030', '45', '2021-03-27 13:14:46');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1031', '45', '2021-03-29 10:11:29');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1032', '45', '2021-03-29 10:23:26');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1033', '45', '2021-03-29 10:26:56');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1034', '45', '2021-03-29 10:43:11');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1035', '45', '2021-03-29 10:48:13');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1036', '45', '2021-03-29 10:53:20');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1037', '45', '2021-03-29 11:01:24');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1038', '45', '2021-03-29 11:06:53');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1039', '45', '2021-03-29 11:10:06');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1040', '45', '2021-03-29 11:14:04');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1041', '45', '2021-03-29 11:21:47');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1009', '22');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT 0,
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `cache_time` mediumint(9) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1598002722,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'language', '97', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"nameContentTab\":1,\"modified\":1409651146}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('44', 'basic', '98', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1616840927,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('45', 'simple-blog-home', '99', '0', '0', '{\"useRoles\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1616841204,\"ns\":\"ProcessWire\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('46', 'simple-blog-post', '100', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1616846164,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('47', 'simple-search', '101', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1616845453,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('48', 'simple-blog-posts', '102', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1616845337,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('49', 'simple-contact-form', '103', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1616846488,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('50', 'simple-blog-archive', '104', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1616845153,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('51', 'simple-blog-categories', '105', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1616845193,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('52', 'simple-blog-category', '106', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1616845274,\"ns\":\"ProcessWire\"}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":27,"numCreateTables":34,"numInserts":706,"numSeconds":0}