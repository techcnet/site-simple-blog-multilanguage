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
    echo '<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/main.css" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/navigation.css" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/language.css" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/contact_form.css" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/form.css" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/search.css" />';
    echo '<link rel="stylesheet" type="text/css" href="'.$templates.'styles/simple_blog.css" />';
  echo '</head>';
  echo '<body>';
    echo '<div id="wrapper">';
      echo '<div id="header">';
        echo '<div id="headerlogo">';
          echo '<img id="logo" alt="" src="'.$templates.'images/header.png">';
        echo '</div>';
        echo '<div id="headernav">';
          echo '<div id="nav">';
            echo '<ul>';
              foreach ($homepage->and($homepage->children) as $item) {
                if ($item->id <> '1028') {
                  if ($item->menutext) {
                    echo '<li><a href="'.$item->url.'">'.$item->menutext.'</a></li>';
                  } else {
                    echo '<li><a href="'.$item->url.'">'.$item->title.'</a></li>';
                  }
                } else {
                  echo '<li><a href="javascript:void(0)"><img alt="" src="'.$templates.'images/sbtn.png">&nbsp;</a><ul><li><form action="'.$item->url.'" class="searchform" method="GET"><div><input name="q" type="text" value="" /></div><div><input type="submit" value=" " /></div></form>&nbsp;</li></ul></li>';
                }
              }
            echo '</ul>';
          echo '</div>';
          echo '<div id="mobilenav">';
            echo '<ul>';
              echo '<li>';
                echo '<a href="javascript:void(0)"><img alt="" src="'.$templates.'images/menu.png">&nbsp;</a>';
                echo '<ul>';
                  foreach ($homepage->and($homepage->children) as $item) {
                    if ($item->menutext) {
                      echo '<li><a href="'.$item->url.'">'.$item->menutext.'</a></li>';
                    } else {
                      echo '<li><a href="'.$item->url.'">'.$item->title.'</a></li>';
                    }
                  }
                echo '</ul>';
              echo '</li>';
            echo '</ul>';
          echo '</div>';
          echo '<div id="lang" id="lang">';
            echo '<ul>';
              echo '<li><a href="javascript:void(0)"><img alt="" src="'.$templates.'images/'.$lang.'.png"></a>';
                echo '<ul>';
                  foreach($languages as $language) {
                    if ($page->viewable($language) == true) {
                      echo '<li><a href="'.$page->localHttpUrl($language).'"><img alt="" src="'.$templates.'images/'.$pages->get('/')->getLanguageValue($language, 'name').'.png" />'.$language->title.'</a></li>';
                    }
                  }
                echo '</ul>';
              echo '</li>';
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
  echo '&copy;&nbsp;'.$config->httpHosts[0];
  echo '</div>';
  echo '</body>';
  echo '</html>';