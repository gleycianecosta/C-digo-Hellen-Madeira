{% if variables.cms_cabecalho.cms_bg_parceiro is not empty %}
<style>
    .partner-header {
        background: {{ variables.cms_cabecalho.cms_bg_parceiro }};
        color: {{ variables.cms_cabecalho.cms_cor_parceiro }};
    }
    .partner-header .container {
        padding: 10px 15px;
    }
    .seller-avatar img {
        object-fit: cover;
        border-radius: 100%;
        width: 90px;
        height: 90px;
    }
    .partner-header a {
        color: {{ variables.cms_cabecalho.cms_cor_parceiro }};
    }
    .partner-dice {
        line-height: 1.350;
        font-size: 0.875rem;
    }
    @media (max-width: 600px) {
        .seller-avatar img {
            width: 70px;
            height: 70px;
        }
    }
</style>
<section class="partner-header">
    <div class="container custom-container flex" align-items="center">
        <div class="header-partner-dice flex" align-items="center" gap="20">
            <div class="seller-avatar-location">
                <div class="seller-avatar flex">
                    <img src="{{partner.image}}" alt="logo parceiro" class="circle responsive-img" width="90" height="90">
                </div>
            </div>
            <nav>
                <ul class="partner-dice">
                    <li class="seller-location">Vocé está na loja 
                        <b>{{ partner.label|raw }}</b>
                    </li>
                    <li class="seller.name">Olá, meu nome é 
                        <b>{{ partner.name|raw }}</b>
                    </li>
                    <li class="seller.phone">
                        <span>({{ partner.phone.prefix }}) {{ partner.phone.number }}</span>
                    </li>
                    <li class="seller.email">
                        <a href="mailto:{{ partner.email }}" title="Envie um e-mail!"> {{ partner.email|raw }}
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</section>
{% endif %}