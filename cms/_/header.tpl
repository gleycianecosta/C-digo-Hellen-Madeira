<link href="{{ variables.cms_config_geral.cms_fonte_url }}" rel="stylesheet" />
{% include 'assets/style_variables.tpl' %}
{{ include('cart/sidecart.tpl', {type:'body'})}}
<style>
  /*-- Inclusão de css geral --*/
  {% include 'assets/showcase_style.css' %}
  {% include 'assets/utility.css' %}
  {% include 'assets/buttons.css' %}
  {% include 'assets/collection_list.css' %}
  {% include 'assets/form_inputs.css' %}
  /*-- Fim Inclusão de css geral --*/
  /*== HEADER ==*/
  /*-- header top --*/
  .header-contacts-sociais {
    display: flex;
    gap: 10px;
    padding: 5px;
  }
  .header-top {
    background-color: var(--cor-bg-login);
  }
  .header-container-top a, .header-container-top span {
    color: var(--cor-txt-login);
  }
  .header-container-top a:hover {
    color: var(--cor-realce-cb-login);
  }
  .header-body ul.header-contact-list a {
    position: relative;
  }
  /*--fim header top --*/
  /*-- header body --*/
  .header-body {
    background-color: var(--cor-bg-cabecalho);
    top: -70px;
    transition: top ease-in-out 300ms;
  }
  .header-logo, .header-cart, .header-menu {
    align-self: center;
  }
  .header-logo {
    gap: 10px;
  }
  .header-logo img {
    height: {{ variables.cms_cabecalho.cms_altura_img_logo }}px;
  }
  .header-user-area ul {
    gap: 20px;
    position: relative;
    justify-content: end;
  }
  .header-user-area ul li, .header-user-area ul li a, .btn-openMenu {
    color: var(--cor-txt-cabecalho);
  }
  .header-user {
    position: relative;
  }
  .header-customer-area {
    position: absolute;
    background: var(--cor-bg-cabecalho);
    z-index: 8;
    margin: 0;
    border-radius: 0;
    border: none;
    box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.11);
    -moz-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.11);
    -webkit-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.11);
    padding: 15px;
    right: 0px;
    top: 37px;
    visibility: hidden;
    opacity: 0;
    min-width: 150px;
    -webkit-transition: all .5s ease;
    -moz-transition: all .5s ease;
    -ms-transition: all .5s ease;
    -o-transition: all .5s ease;
    transition: all .5s ease;
  }
  .header-icon-user:hover .header-customer-area{
    visibility: visible;
    opacity: 1;
  }
  .header-customer-area a:hover {
    color: var(--cor-realce-cb-realce);
  }
  .header-customer-area a:after {
    background-color: var(--cor-realce-cb-realce);
  }
  .header-customer-area a {
    width: fit-content;
  }
  .header-customer-area .logged-in, .header-customer-area .logged-out {
    display: flex;
    flex-direction: column;
    gap: 10px;
  }
  .header-icon {
    cursor: pointer;
    border: 1px solid;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 100%;
    width: 2.500rem;
    height: 2.500rem;
    padding: 0.625rem;
  }
  .extended {
    order: 2;
    width: 100%;
  }
  /*-- LOGO Central --*/
  .header-navigation-list {
    gap: 15px;
  }
  .header-body:not(.fixed) .header-central-logo .header-navigation-list, .header-body:not(.fixed) .header-central-logo .header-user-area {
    min-width: 350px;
  }
  .header-body:not(.fixed) .header-central-logo .header-user-area ul {
    justify-content: flex-end;
  }
  .header-contact-list {
    line-height: 1.500;
  }
  /*--MENU--*/
  a {
    color: inherit;
  }
  .subsub:hover{
    color: var(--cor-realce-cb-realce);
  }
  #menu>ul>li>a {
    font-size: 100%;
    font-weight: 500;
    padding: 10px 15px;
    text-decoration: none;
    color: var(--cor-txt-menu);
    -webkit-transition: color .2s ease;
    -moz-transition: color .2s ease;
    -ms-transition: color .2s ease;
    -o-transition: color .2s ease;
    transition: color .2s ease;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    position: relative;
    gap: 10px;
  }
  .menu-store-logo{
    display: none;
  }
  .list-categories{
    display: flex;
    justify-content: center;
  }
  .menu-subcategory{
    font-weight: bold;
  }
  .subsub{
    font-size:12px;
    padding: 3px;
  }
  .container1{
    display: flex;
    left: 152px;
    flex-direction: row;
    position: absolute;
    z-index: 2;
    padding-top: 25px;
    background-color: #000;
  }
  .container2{
    display: flex;
    gap: 10px;
    margin: 5px;
  }
  .menu-anim{
    display: none;
  }
  .has-sub:hover .menu-anim{
    display: block;
    color: #fff;
  }
  #menu>ul>li>a::after {
    content: "";
    background: var(--cor-realce-cb-menu);
    width: 0;
    height: 2px;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    display: block;
    position: absolute;
    margin-top: 5px;
    transition: all 350ms ease-out 0s;
    -moz-transition: all 350ms ease-out 0s;
    -o-transition: all 350ms ease-out 0s;
    -webkit-transition: all 350ms ease-out 0s;
  }
  #menu>ul>li>a:hover {
    color: var(--cor-realce-cb-menu);
  }
  #menu li:hover>ul {
    display: grid;
    grid-template-columns: 1fr;
    gap: 10px;
    visibility: visible;
    opacity: 1;
    -khtml-opacity: 1;
    -webkit-opacity: 1;
    -moz-opacity: 1;
    background: var(--cor-bg-fundo-sub, #111);
  }
  #menu ul ul li:hover>a,
  #menu ul ul li a:hover {
    color: var(--cor-realce-cb-menu);
  }
  @media (min-width: 1000px) {
    /*-- logo centralizada --*/
    .header-body:not(.fixed) .header-central-logo .header-logo {
      margin: 0 auto;
      order: 2;
      justify-content: center;
    }
    .header-body:not(.fixed) .header-central-logo .header-menu {
      width: 100%;
      order: 4;
    }
    .header-body:not(.fixed) .header-central-logo .header-search {
      order: 1;
    }
    .header-body:not(.fixed) .header-central-logo .header-search, .header-body:not(.fixed) .header-central-logo .header-user-area {
      min-width: unset;
      max-width: 20%;
    }
    .header-body:not(.fixed) .header-central-logo .header-user-area {
      order: 3;
    }
  }
  @media (max-width: 1000px){
    .header-body .header-central-logo {
      gap: 0 15px;
      display: flex;
      justify-content: space-between;
    }
    .header-logo img {
      height: auto;
      width: 100%;
    }
    .header-body:not(.fixed) .header-central-logo .header-navigation-list, .header-body:not(.fixed) .header-central-logo .header-user-area {
      min-width: unset;
    }
    .header-body:not(.fixed) .header-central-logo .flex[width='4'] {
      flex-basis: auto;
      max-width: unset;
    }
    .header-central-logo .header-logo {
      margin: 0;
    }
  }
  /*-- FIm LOGO Central --*/
  /* Burgue header */
  .header-body.fixed .bars-cab-scroll {
    cursor: pointer;
  }
  .bars-cab-scroll span {
    position: relative;
    width: 20px;
    height: 2px;
    background: var(--cor-txt-cabecalho);
    display: block;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    -o-transition: all .1s ease-in-out;
    transition: all .1s ease-in-out;
  }
  .bars-cab-scroll span:nth-child(2) {
    top: 10px;
  }
  .bars-cab-scroll span:last-child {
    top: 2px;
  }
  .one-bars {
    opacity: 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
    top: 6px;
  }
  .two-bars {
    top: 4.3px!important;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
  }
  .three-bars {
    -webkit-transform: rotate(-45deg);
    -ms-transform: rotate(-45deg);
    transform: rotate(-45deg);
  }
  /* End burgue header */
  /*-- CSS search --*/
  .header-body .header-search input#keywords {
    border: none;
    background: 0 0;
    padding: 5px 0 5px 15px;
    font-size: 1em;
    color: var(--cor-txt-busca);
  }
  .header-body .header-search button {
    border: none;
    cursor: pointer;
    background: 0 0;
    padding: 0 15px;
  }
  .header-body .header-search form#frmbusca {
    background: var(--cor-bg-busca);
    height: 2.5rem;
    border-radius: 20px;
    border: 1px solid #f1f1f1;
    width: 373px;
  }
  /*-- buca suggestions --*/
  .autocomplete-suggestions {
    box-shadow: 0px 2px 7px 0px rgb(0 0 0 / 11%);
    -moz-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.11);
    -webkit-box-shadow: 0px 2px 7px 0px rgb(0 0 0 / 11%);
    border: 1px solid #f9f9f9;
  }
  .autocomplete-suggestion {
    display: flex;
    justify-content: flex-start;
    border-bottom: 1px solid var(--color-txt-20);
    background-color: var(--cor-bg-blcs-gp);
  }
  .autocomplete-suggestion-img {
    position: relative;
    min-width: 100px;
    margin: auto;
    display: flex !important;
  }
  .autocomplete-col-s12 > div + div {
    margin-top: 10px;
  }
  .autocomplete-suggestion-body .autocomplete-title {
    color: var(--cor-txt-nome-prto);
    font-size: 100%;
    font-weight: 500;
  }
  .autocomplete-suggestion-body .autocomplete-desc {
    color: var(--cor-txt-nome-prto);
    font-size: 60%;
    letter-spacing: 0.2px;
    opacity: 0.8;
  }
  .autocomplete-suggestion-body .autocomplete-price {
    color: var(--cor-txt-prc-prto);
    font-size: 100%;
    font-weight: 500;
  }
  .suggestions-footer a {
    color: var(--cor-txt-bt-confirm);
    background-color: var(--cor-bg-bt-confirm);
  }
  .suggestions-footer a:hover {
    color: var(--cor-txt-bt-confirm) !important;
    background-color: var(--cor-realce-bt-confirm);
  }
  /*-- fim CSS search --*/
  @media (max-width: 1200px) {
    .header-body:not(.fixed) .header-menu {
      order: 3;
      width: 100%;
    }
  }
  /*--fim header body --*/
  @media (max-width: 1000px) {
    .header-navigation-list {
      display: none;
    }
    .header-menu {
      order: 3;
      width: 100%;
    }
    .header-body .header-container-body .header-content .header-logo, .header-user-area {
      max-width: 180px !important;
    }
    .header-icon {
      width: 1.875rem;
      height: 1.875rem;
      font-size: 0.8750em;
    }
    .header-top {
      font-size: 0.875rem;
    }
    .header-body .header-search form#frmbusca {
      height: auto;
    }
  }
  @media (max-width: 768px) {
    .header-navigation-list {
      display: none;
    }
    .header-top .header-contacts-sociais {
      display: none;
    }
    .header-top .header-customer-login {
      width: 100%;
      text-align: center;
    }
    .header-logo a {
      display: flex;
      justify-content: flex-start;
    }
    .header-logo img {
      max-width: 100px;
      height: auto;
      margin-left: 1px;
    }
    .header-user-area ul {
      font-size: 100%;
      justify-content: flex-end;
      gap: 15px;
    }
    .header-search-open form {
      width: 80%;
      top: 0;
    }
    .header-close-search {
      top: 5px;
      right: 5px;
      width: 20px;
      height: 20px;
      font-size: 60%;
    }
    .header-btn-cart .sidenav-title {
      top: -8px;
      left: -10px;
    }
    .header-search {
      -ms-flex-preferred-size: 100% !important;
      flex-basis: 100% !important;
      max-width: 100% !important;
      order: 4;
      width: 100%;
      margin-top: 15px;
    }
    .header-content {
      justify-content: space-between;
    }
    .header-icon {
      width: 1.5625rem;
      height: 1.5625rem;
      font-size: 0.75em;
    }
    .header-container-body {
      padding: 0.625rem;
    }
  }
  /*== FIM HEADER CSS ==*/
  /*== HEADER FIXED ==*/
  .header-body.fixed {
    position: fixed;
    top: 0;
    background-color: var(--cor-bg-cabecalho);
    height: 70px;
    z-index: 9;
    width: 100%;
    -webkit-box-shadow: 0px 0px 3px 3px rgb(0 0 0 / 3%);
    box-shadow: 0px 0px 3px 3px rgb(0 0 0 / 3%);
  }
  .header-body.fixed .header-container-body {
    height: 100%;
  }
  .header-body.fixed .header-search form#frmbusca {
    height: auto;
  }
  .header-body.fixed.extended {
    height: 120px;
  }
  .header-body.fixed .header-logo img{
    max-height: 36px;
  }
  .header-body.fixed .header-navigation-list{
    display: none;
  }
  .header-body.fixed .header-user-area ul {
    font-size: 1em;
  }
  @media (max-width: 640px) {
    .header-container-top{
      padding: 0px;
    }
    #menu>ul>li>a {
      padding: 0px 2px;
    }
    .container1{
      left: 0px;
    }
    .list-categories{
      font-size: 10px}
  }
  @media (max-width: 600px) {
    .header-body.fixed {
      height: auto;
    }
  }
  /*== FIM HEADER FIXED ==*/  
</style>
{% if (section.id != "pages_content" or "lp" not in section.slug or variables.cms_cabecalho.cms_exibir_lp) %}
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://front-libs.iset.io/libs/quicksearch/auto-complete.min.css" rel="stylesheet"/>
{% endif %}
<!--api whats-->
{% set tel_ddd = variables.cms_redes_sociais.cms_telefone_whats|slice(0, 2) %}
{% set tel_prefixo = variables.cms_redes_sociais.cms_telefone_whats|slice(2, 5) %}
{% set tel_sufixo = variables.cms_redes_sociais.cms_telefone_whats|slice(7, 4) %}
{% set tel_formatado = '(' ~ tel_ddd ~ ') ' ~ tel_prefixo ~ '-' ~ tel_sufixo %}
<!-- FIM --> 
<!--LP sem cabecalho-->
{% if section.id == "pages_content" and "lp" in section.slug %}
<div class="float-sidecart-button sidecart-button">
  {{ include('cart/sidecart.tpl', {type:'button'})}}
</div>
<style>
  section.pages_content .container {
    padding: 0;
    max-width: none;
    margin: 0;
  }
  a {
    cursor: pointer;
    text-decoration: none;
  }
  .cart-lp-lateral ul {
    padding: 0;
    list-style: none;
  }
  ul#breadcrumb {
    display: none !important;
  }
  header.page-header {
    display: none;
  }
  section .pages_content .container {
    max-width: none;
    margin: 0;
    display: block;
    padding: 0;
  }
  .pages_content .page-center-content .page-content {
    margin: 0 !important;
  }
  .float-sidecart-button {
    position: fixed;
    top: 50px;
    right: 10px;
    z-index: 7;
    border-radius: 100%;
    opacity: 0.5;
    display: flex;
    align-items: center;
    justify-content: center;
    background: var(--cor-bg-cabecalho, #fff);
    color: var(--cor-txt-gerais, #000);
    width: 48px;
    height: 48px;
    webkit-box-shadow: 0px 3px 10px -6px #000000, 0px 0px 5px 5px rgb(0 0 0 / 0%);
    box-shadow: 0px 3px 10px -6px #000000, 0px 0px 5px 5px rgb(0 0 0 / 0%);
  }
  .float-sidecart-button:hover {
    opacity: 1;
  }
  .float-sidecart-button .sidecart-items-counter{
    top: 0px;
    right: 0px;
  }
</style>
{% endif %} 
<!--FIM-->
{% if (section.id != "pages_content" or "lp" not in section.slug or variables.cms_cabecalho.cms_exibir_lp) %}
<header>
  {{ include('cart/sidecart.tpl', {type:'offer'})}}
  {% if variables.cms_cabecalho.cms_bg_login is not empty %}
  <div class="header-spacer" style="height: 0px;">
  </div>
  <div class="header-top">
    <div class="custom-container header-container header-container-top flex" align-items="center" justify-content="space-between">
      <div class="header-contacts-sociais">
        {% if variables.cms_redes_sociais.cms_instagram is not empty %}
        <div>
          <a href="{{ variables.cms_redes_sociais.cms_instagram }}" target="_blank">
            <i class="fab fa-instagram">
            </i>
          </a>
        </div>
        {% endif %}
        {% if variables.cms_redes_sociais.cms_twitter is not empty %}
        <div>
          <a href="{{ variables.cms_redes_sociais.cms_twitter }}" target="_blank">
            <i class="fab fa-twitter">
            </i>
          </a>
        </div>
        {% endif %}
        {% if variables.cms_redes_sociais.cms_youtube is not empty %}
        <div>
          <a href="{{ variables.cms_redes_sociais.cms_youtube }}" target="_blank">
            <i class="fab fa-youtube">
            </i>
          </a>
        </div>
        {% endif %}
        {% if variables.cms_redes_sociais.cms_tiktok is not empty %}
        <div>
          <a href="{{ variables.cms_redes_sociais.cms_tiktok }}" target="_blank">
            <i class="fa-brands fa-tiktok">
            </i>
          </a>
        </div>
        {% endif %}
        {% if variables.cms_redes_sociais.cms_facebook is not empty %}
        <div>
          <a href="{{ variables.cms_redes_sociais.cms_facebook }}" target="_blank">
            <i class="fab fa-facebook">
            </i>
          </a>
        </div>
        <div class="informacoes" style="
                                        display: flex;
                                        width: 1120px;
                                        justify-content: flex-end;">
          <div class="child.info" style="padding-right: 10px;">
            <a href="#" target="_blank">
              <i>
                <svg width="20" height="16"  viewBox="0 0 117 116" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M5 107.689V16.8788C5 10.3183 10.3183 5 16.8788 5H100.03C106.591 5 111.909 10.3183 111.909 16.8788V76.2727C111.909 82.8334 106.591 88.1515 100.03 88.1515H34.4668C30.8582 88.1515 27.4453 89.792 25.191 92.6096L11.3464 109.915C9.24197 112.546 5 111.058 5 107.689Z" stroke="black" stroke-width="8.90909"/>
                </svg>
              </i> FALE CONOSCO
            </a>
          </div>
          <div class="child.info" style="padding-right: 10px;">
            <a href="https://rastreamento.correios.com.br/app/index.php" target="_blank">
              <i>
                <svg width="20" height="16" viewBox="0 0 118 143" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M112.909 57.9273C112.909 86.6061 59.4545 135.818 59.4545 135.818C59.4545 135.818 6 86.6061 6 57.9273C6 29.2486 29.9324 6 59.4545 6C88.9768 6 112.909 29.2486 112.909 57.9273Z" stroke="black" stroke-width="10.0227"/>
                  <path d="M59.4546 64.4182C63.1449 64.4182 66.1364 61.5122 66.1364 57.9273C66.1364 54.3425 63.1449 51.4364 59.4546 51.4364C55.7642 51.4364 52.7727 54.3425 52.7727 57.9273C52.7727 61.5122 55.7642 64.4182 59.4546 64.4182Z" fill="black" stroke="black" stroke-width="10.0227" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
              </i> RASTREAR PEDIDO
            </a>
          </div>
          <div class="child.info" style="padding-right: 10px;">
            <a href="#" target="_blank">
              <i > 
                <svg width="20" height="16" viewBox="0 0 116 116" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M90.9538 73.5698L68.7223 77.8777C53.7057 70.3406 44.4297 61.6827 39.0314 48.1868L43.1878 25.8911L35.3309 5H15.0821C8.99521 5 4.20196 10.0301 5.11104 16.0487C7.38056 31.074 14.0722 58.3168 33.633 77.8777C54.1748 98.4195 83.7605 107.333 100.044 110.876C106.332 112.245 111.909 107.339 111.909 100.904V81.5551L90.9538 73.5698Z" stroke="black" stroke-width="8.09753" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
              </i> (27) 9962-56965
            </a>
          </div>
          <div class="child.info" style="padding-right: 10px;">
            {% endif %}
            {% if variables.cms_redes_sociais.cms_telefone_whats is not empty %}
            <div>
              <a href="https://api.whatsapp.com/send?phone=55{{ variables.cms_redes_sociais.cms_telefone_whats }}" target="_blank">
                <i class="fab fa-whatsapp">
                </i> WHATSAPP {{tel_formatado}}</a>
            </div>
            {% endif %}
          </div>
        </div>
      </div>
    </div>
    {% endif %}
    {% if variables.cms_cabecalho.cms_bg_cabecalho is not empty %}
    <div class="header-body">
      <div class="custom-container header-container header-container-body flex" align-items="center" justify-content="space-between">
        <div class="header-content w-100 flex {{ (variables.cms_cabecalho.cms_logo_center) ? 'header-central-logo' : '' }}" align-items="center" wrap="true" justify-content="space-between">
          <div class="header-logo flex" width="" align-items="center">
            <div class="button-automatic-menu" style="display: none;">
              <a class="menu btn-openMenu">
                <i class="fa-regular fa-bars">
                </i>
              </a>
            </div>
            <a href="/index.php">
              <img alt="logo-loja" src="{{images.logo}}" title="loja" width="auto" /> 
            </a>
          </div>
          <div class="header-menu">
            <div class="automatic-menu container-menu">
              <div class="close-header-fixMenu">
              </div>
              <div class="store-menu">
                <div class="header-customer-menu">
                  <div class="menu-store-logo">
                    <a href="/index.php">
                      <img alt="logo-loja" src="{{images.logo}}" title="loja" /> 
                    </a>
                  </div>
                </div>
                <div id="menu">
                  <ul class="list-categories">
                    {% set categoryLimit = variables.cms_cabecalho.cms_category_limit %}
                    {% set categoryLimit = categoryLimit < categories|length ? categoryLimit : categories|length + 1 %}
                    {% set categoryCount = 0 %}
                    {% set categoryIndex = 0 %}
                    {% for category in categories %} 
                    {% set categoryCount = categoryCount + 1 %}
                    {% if (categoryCount < categoryLimit) %}
                    {% set categoryPos = '' %}
                    <!-- load category media -->
                    {% set categoryTag = 'menu_' ~ category.name|convert_encoding('UTF-8', 'ISO-8859-1')|slug('_')|lower %}
                    {% set categoryMedia = showcase.getByTag(categoryTag) %}
                    {% if categoryMedia == false %}
                    {% set categoryMedia = banners.getByTag([categoryTag]) %}
                    {% endif %}
                    <!-- defines dropdown position -->
                    {% if variables.cms_cabecalho.cms_menu_full and (category.subCategories|length > 24) %}
                    {% set categoryPos = 'drop-full' %}
                    {% elseif categoryMedia %}
                    {% set categoryPos = 'drop-center' %}
                    {% elseif categories|length > 4 %}
                    {% set categoryIndex = categoryIndex + 1 %}
                    {% set leftCount = ((categories|length / 3) * 2)|round %}
                    {% if categoryIndex > leftCount %}
                    {% set categoryPos = 'drop-right' %}
                    {% endif %}
                    {% endif %}
                    <li class="has-sub has-sub-main">
                      {% if category.subCategories|length != 0 %}
                      {% endif %}
                      <a href="{{category.url}}">
                        {% if category.img_h %}
                        <img alt="icone_categoria" class="menu-icon" src="{{category.img_h}}" />
                        {% endif %}    
                        {{category.name | raw}}
                      </a>
                      <!-- defines column count -->
                      {% if category.subCategories|length != 0 %}
                      {% if category.subCategories|length > 24 %}
                      {% set columns = 3 %}
                      {% elseif category.subCategories|length >= 12 %}
                      {% set columns = 2 %}
                      {% else %}
                      {% set columns = 1 %}
                      {% endif %}
                      <div class="container1">
                        <ul class="{{categoryPos}} {{ categoryMedia ? 'break-drop' : ''}} {{ (variables.cms_cabecalho.cms_menu_anim) ? 'menu-anim' : '' }}">
                          <div class="menu_item_drop col-{{columns}}">
                            <div class="container2">
                              {% for subcategory in category.subCategories %}           
                              <li class="has-sub menu-subcategory">
                                <a href="{{subcategory.url}}">{{subcategory.name | raw}}</a>
                                {% if subcategory.subCategories|length != 0 %}
                                <ul>
                                  <div class="menu_item_drop">
                                    {% for subsubcategory in subcategory.subCategories %}
                                    <li class="subsub">
                                      <a href="{{subsubcategory.url}}">{{subsubcategory.name | raw}}</a>
                                    </li>
                                    {% endfor %}
                                  </div>
                                </ul>
                                {% endif %}
                              </li>
                              {% endfor %}
                            </div>
                          </div>
                          {% if categoryMedia %}
                          <div class="menu_image_drop" id="{{categoryTag}}">
                            {{categoryMedia}}
                          </div>
                          {% endif %}
                        </ul> 
                      </div>
                      {% endif %}
                    </li>
                    {% endif %}
                    {% endfor %}
                    {% if (categoryCount > categoryLimit) %}
                    <li class="has-sub has-sub-main">
                      <a href>              
                        Outras Categorias
                      </a>
                      <!-- OUTRAS CATEGORIAS-->
                      {% set otherColumns = (categoryCount - categoryLimit + 1) > 10 ? 2 : 1 %}
                      <ul class="drop-right {{ categoryMedia ? 'break-drop' : ''}}">
                        <div class="menu_item_drop col-{{otherColumns}}">
                          {% set nextCategory  = categoryLimit - 1 %}
                          {% set categoryCount = 0 %}
                          {% for category in categories %}
                          {% set categoryCount = categoryCount + 1 %}
                          {% if (categoryCount > nextCategory) %}
                          <li class="has-sub menu-subcategory">
                            <a href="{{category.url}}">{{category.name | raw}}</a>                
                            {% if category.subCategories|length != 0 %}                
                            <ul class="subcategorias">
                              <div class="menu_item_drop">
                                {% for subcategory in category.subCategories %}
                                <li>
                                  <a href="{{subcategory.url}}">{{subcategory.name|raw}}</a>
                                </li>
                                {% endfor %}
                              </div>
                            </ul>
                            {% endif %}
                          </li>
                          {% endif %}
                          {% endfor %}
                        </div>
                      </ul>
                      <!-- FIM OUTRAS CATEGORIAS-->
                    </li>
                    {% endif %}
                    {# Adiciona classe extended no menu caso a quantidade de categorias a ser exibida seja superior a 10 #}          
                    {% if categoryCount > 10 and categoryLimit > 10 %}
                    <script>
                      $('.header-menu').addClass('extended');
                    </script>
                    {% endif %}
                  </ul>
                </div>
              </div>
            </div>
            <div class="grayBottom">
            </div>
          </div>
          {% if variables.cms_cabecalho.cms_bg_busca %}
          <div class="header-search flex" width="">
            <form action="{{goto.search}}" id="frmbusca" class="flex w-100" justify-content="space-between" method="get" name="frmbusca">
              <input id="keywords" name="keywords" placeholder="Buscar..." type="text" autofocus />
              <button type="submit">
                <i class="fal fa-search">
                </i>
              </button>
            </form>
          </div>
          {% endif %}
          <div class="header-user-area flex" width="" justify-content="end">
            <ul class="flex" align-items="center">
              <li class="header-user">
                <span class="header-icon header-icon-user">
                  <i class="fa-solid fa-user">
                  </i>
                  <div class="header-customer-area">
                    <div class="logged-out">
                      <a href="{{goto.login}}" class="undereffect">Login
                      </a>
                      <a href="{{goto.register}}" class="undereffect">Cadastre-se
                      </a>
                      <a href="/minha-conta/listas/desejo/" class="undereffect">Lista de Desejos
                      </a>
                    </div>
                    <div class="logged-in" style="display: none;">
                      <span class="custumer-name">
                      </span>
                      <a href="/minha-conta/listas/desejo/" class="undereffect">Lista de Desejos
                      </a>
                      <a href="{{goto.account}}" class="undereffect">Minha Conta
                      </a>
                      <a href="{{goto.logoff}}" class="undereffect">Sair
                      </a>
                    </div>
                  </div>
                </span>
              </li>
              <li>
                {{ include('cart/sidecart.tpl', {type:'button'})}}
              </li>
            </ul>
          </div>
        </div>
      </div>
      {% if variables.cms_cabecalho.cms_bg_menu is not empty %}
      {% include 'snippets/menu_header.tpl' %}
      {% endif %}
    </div>
    {% endif %}
    </header>
  {% if section.id == "home" %}
  {% if variables.cms_cabecalho.cms_transp_header is not empty %}  
  <style>
    /*-- Banner fixed --*/
    .header-body {
      background-color: transparent;
      position: absolute;
      z-index: 2;
      width: 100%;
      top: auto;
    }
    .header-menu .automatic-menu {
      background: transparent !important;
    }
    @media all and (max-width: 1000px) {
      .header-menu .automatic-menu {
        background: var(--cor-bg-menu) !important;
      }
      .header-body {
        position: initial;
      }
    }
    /*-- Fim banner fixed --*/
  </style>
  {% if banners.getByTag(['billboard']) is empty %}
  <style>
    header .header-body {
      position: initial;
    }
  </style>
  {% endif %}
  {% endif %}
  {% endif %}
  {% endif %}
  <script defer src="https://front-libs.iset.io/libs/quicksearch/auto-complete.min.js">
  </script>
  <script>
    /* VALIDATE CUSTOMER-LOGIN */
    $(document).ready(function () {
      var validCustomer = $.cookie("customer");
      if (validCustomer != null) {
        validCustomer = JSON.parse(validCustomer);
        nameCustomer = html_entity_decode(validCustomer.name);
        nameCustomer = nameCustomer.replace("+", " ");
        $(".logged-out").hide();
        $(".logged-in").show();
        $(".logged-in .custumer-name").text(nameCustomer);
      }
      else {
        $(".logged-out").show();
        $(".logged-in").hide();
      }
      /* AUTOCOMPLETE */
      $("#keywords, #frmbusca-mobi").autoComplete({
        menuClass: "suggestions-fixed",
        buttons: false,
      }
                                                 );
      /*SEARCHBAR ACTIONS*/
      $(".header-search").on("click", function () {
        $(".header-search-open").addClass("action-search");
      }
                            );
      $(".header-close-search").on("click", function () {
        $(".header-search-open").removeClass("action-search");
      }
                                  );
    }
                     );
  </script>
  {% if (variables.cms_cabecalho.cms_floating_header) %}
  <script>
    $(document).ready(function () {
      /* FIXED HEADER HANDLER */
      $('.header-body').attr("data-bottom", $('.header-body').position().top + $('.header-body').height());
      checkHeaderPos();
      $(window).scroll(function () {
        checkHeaderPos();
      }
                      );
      function checkHeaderPos() {
        let headerBottom = Number.parseInt($('.header-body').attr("data-bottom"));
        if ($(this).scrollTop() > headerBottom) {
          const topPos = $("#cart-offer").is(":visible") ? $("#cart-offer").height() : 0;
          $(".header-body").css("top",topPos);
          $(".header-body").addClass("fixed");
          if ($(".header-menu").hasClass("extended"))
            $(".header-body").addClass("extended");
          $(".header-spacer").css('height',(headerBottom-20)+'px');
          $(".bars-cab-scroll").css("display","block");
          $(".header-menu").addClass("menu-hide");
        }
        else {
          $(".header-body").css("top","auto");
          $(".header-body").removeClass("fixed");
          $(".header-spacer").css('height','0px');
          $(".bars-cab-scroll").css("display","none");
          $(".header-menu").removeClass("menu-hide");
        }
        if (window.matchMedia('(max-width: 600px)').matches) {
          $(".header-menu").removeClass("menu-hide");
        }
      }
    }
                     );
    /* MENU-CABECALHO */
    $(document).ready(function () {
      $("#menu .break-drop:has(.menu_image_drop .custom-content .carousel-products-wrapper[data-items=1])").css("grid-template-columns","1fr 25%");
      $(".close-header-fixMenu, .btn-openMenu").on("click", function () {
        $(".automatic-menu").toggleClass("is-active");
        $("body").toggleClass("flow-y");
      }
                                                  );
      $("#menu-template > ul > li").each(function () {
        if (!$(this).find("ul li").length) {
          $(this).find(".submenu-button").css("display", "none");
        }
      }
                                        );
      $(".submenu-button").on("click", function () {
        $(this).next().next().toggleClass("open");
        $(this).toggleClass("submenu-opened");
      }
                             );
    }
                     );
    $(".header-search").on("click", function () {
      $(".header-search-open").addClass("action-search");
    }
                          );
    $(".bars-cab-scroll").on("click", function () {
      $(".header-menu.menu-hide").toggleClass("show-menu");
      $(".bars-cab-scroll span:first-child").toggleClass("one-bars");
      $(".bars-cab-scroll span:nth-child(2)").toggleClass("two-bars");
      $(".bars-cab-scroll span:last-child").toggleClass("three-bars");
    }
                            );
  </script>
  {% endif %}
