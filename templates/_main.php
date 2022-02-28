<?php namespace ProcessWire;
  echo '<!DOCTYPE html>';
  echo '<html lang="'.$lang.'">';
    echo '<head>';
      echo '<meta name="viewport" content="width=device-width, initial-scale=1.0" />';
      echo '<meta http-equiv="content-type" content="text/html; charset=UTF-8" />';
      echo '<meta http-equiv="content-language" content="'.$lang.'">';
      echo '<title>'.$title.'</title>';
      echo '<meta name="description" content="'.$summary.'" />';
      foreach ($languages as $language) {
        if ($page->viewable($language) == true) {
          echo '<link rel="alternate" hreflang="'.$pages->get('/')->getLanguageValue($language, 'name').'" href="'.$page->localHttpUrl($language).'">';
        }
      }
      echo '<link rel="icon" type="image/x-icon" href="/favicon.ico" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/main.css?v=2" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/navigation.css?v=2" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/footer.css?v=2" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/language.css?v=2" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/contact_form.css?v=2" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/form.css?v=2" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/search.css?v=2" />';
      echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/simple_blog.css?v=2" />';
    echo '</head>';
    echo '<body>';
      echo '<div id="wrapper">';
        echo '<div id="header">';
          echo '<div id="logoblk">';
            echo '<div id="logo">';
              echo '<img alt="" src="'.$templates.'images/logo.png" />';
              echo '<div id="lang">';
                echo '<ul>';
                  echo '<li><a href="javascript:void(0)"><div class="flags" id="flag_'.$lang.'"></div></a>';
                    echo '<ul>';
                      foreach($languages as $language) {
                        if (($page->viewable($language) == true) && ($lang != $pages->get('/')->getLanguageValue($language, 'name'))) {
                          echo '<li><a href="'.$page->localUrl($language).'"><div class="flags" id="flag_'.$pages->get('/')->getLanguageValue($language, 'name').'"></div>'.$language->title.'</a></li>';
                        }
                      }
                    echo '</ul>';
                  echo '</li>';
                echo '</ul>';
              echo '</div>';
            echo '</div>';
          echo '</div>';

          echo '<div id="navblk">';
            echo '<div id="nav">';
              echo '<label for="drop" id="toggle"><img alt="" src="'.$templates.'images/menu.png" /></label>';
              echo '<input type="checkbox" id="drop" />';
              echo '<ul id="menu">';
                foreach ($homepage->and($homepage->children) as $item) {
                  if ($item->getLanguageValue($user->language, 'menutext')) {
                    echo '<li><a href="'.$item->localUrl($user->language).'">';
                    foreach ($item->images as $image) {
                      if ($image->basename == 'menu-image.png') {
                        echo '<img alt="" src="'.$image->url.'" />';
                        break;
                      }
                    }
                    echo $item->getLanguageValue($user->language, 'menutext').'</a></li>';
                  }
                }
              echo '</ul>';
            echo '</div>';
          echo '</div>';

        echo '</div>';
        echo '<div id="main">';
          echo '<div id="content">';
            echo '<div class="box">';
              if ($headline) {
                echo '<h1>'.$headline.'</h1>';
              }
              echo $content;
            echo '</div>';
            if ($comments) {
              echo '<div class="box">';
              echo $comments->render();
              echo $comments->renderForm();
              echo '</div>';
            }
          echo '</div>';
          if ($sidebar) {
            echo '<div id="sidebar">';
              echo '<div class="box">';
                echo $sidebar;
              echo '</div>';
            echo '</div>';
          }
        echo '</div>';
        echo '<div id="push"></div>';
      echo '</div>';

      echo '<div id="footer">';
        echo '<div id="footer-table">';
          echo '<div id="footer-row">';
            echo '<div id="footer-cell1">';
              echo '<span>'.__('Quick Links').'</span><hr />';
              echo '<ul style="footer-links">';
                foreach ($homepage->and($homepage->children) as $item) {
                  if ($item->getLanguageValue($user->language, 'menutext')) {
                    echo '<li><a href="'.$item->localUrl($user->language).'">'.$item->getLanguageValue($user->language, 'menutext').'</a></li>';
                  }
                }
              echo '</ul>';
            echo '</div>';
            echo '<div id="footer-cell2">';
              echo '<span>'.__('Search').'</span><hr />';
              echo '<form action="'.$pages->get('1028')->localUrl($user->language).'" id="footer-search" method="GET">';
                echo '<div>';
                  echo '<input name="q" type="text" value="" />';
                echo '</div>';
                echo '<div>';
                  echo '<input type="submit" value="&nbsp;" />';
                echo '</div>';
              echo '</form>';
            echo '</div>';
            echo '<div id="footer-cell3">';
              echo '<span>'.__('Cookies').'</span><hr />';
              echo '<p>'.__('This website uses cookies. By using this website, you agree to the Cookies Policy.').'&nbsp;<a href="'.$pages->get('1043')->localUrl($user->language).'">'.__('Read more...').'</a></p>';
            echo '</div>';
          echo '</div>';
        echo '</div>';
      echo '</div>';

    echo '</body>';
  echo '</html>';
