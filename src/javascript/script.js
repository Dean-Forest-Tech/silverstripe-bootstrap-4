(function ($) {
  const searchField = $('#SearchForm_SearchForm_Search');
  const defaultValue = searchField.val();
  const searchBarButton = $('span.search-dropdown-icon');
  const searchBar = $('div.search-bar');
  const menuButton = $('span.nav-open-button');
  const menu = $('.header .primary ul');
  let mobile = false;
  let changed = false;

  function menuWidthCheck() {
    const header_w = $('header .inner').width();
    const elements_w = menu.width() + $('.brand').width();
    const mobileOld = mobile;

    if ((header_w < elements_w) || ($(window).width() <= 768)) {
      $('body').addClass('tablet-nav');
    } else {
      $('body').removeClass('tablet-nav');
    }

    if ($('#media-query-trigger').css('visibility') === 'hidden') {
      mobile = false;
    } else {
      mobile = true;
    }

    if (mobileOld !== mobile) {
      changed = true;
    } else {
      changed = false;
    }
  }

  /**
   * Removes text from search form on focus and replaces
   * it on unfocus - if text is entered then it does not
   * get replaced with default on unfocus
   */
  $('#SearchForm_SearchForm_action_results').val('L');

  searchField.focus(() => {
    $(this).addClass('active');
    if (searchField.val() === defaultValue) {
      searchField.val('');
    }
  });
  searchField.blur(() => {
    if (searchField.val() === '') {
      searchField.val(defaultValue);
    }
  });

  $('body').append('<div id="media-query-trigger"></div>');

  menuWidthCheck();

  $(window).resize(() => {
    menuWidthCheck();

    if (!mobile) {
      menu.show();
      searchBar.show();
    } else if (changed) {
      menu.hide();
      searchBar.hide();
    }
  });

  /* toggle navigation and search in mobile view */
  searchBarButton.click(() => {
    menu.slideUp();
    searchBar.slideToggle(200);
  });
  menuButton.click(() => {
    searchBar.slideUp();
    menu.slideToggle(200);
  });
}(jQuery));
