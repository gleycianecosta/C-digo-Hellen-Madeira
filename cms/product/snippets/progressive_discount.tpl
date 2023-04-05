<style>
    /*==Desconto progressivo==*/
    section.product-page div.product-progressive-discount {
        padding: 0;
        max-width: 50%;
        border: 1px solid #eee;
    }
    .product-progressive-discount .rules {
        position: relative;
    }
    section.product-page div.product-progressive-discount ul.rules li.body>div, section.product-page div.product-progressive-discount ul.rules li.header>div {
        border: 1px solid #eee;
        padding: 10px;
    }
    section.product-page div.product-progressive-discount div.title {
        text-align: center;
        background: #f9f9f9;
        padding: 10px;
    }
    section.product-page div.product-progressive-discount ul.rules {
        margin: 0;
    }
    section.product-page div.product-progressive-discount ul.rules li.header div {
        font-size: 1rem;
        font-weight: bold;
        color: {{ variables.cms_config_geral.cms_cor_txt_gerais }};
    }
    section.product-page div.product-progressive-discount ul.rules>li {
        position: relative;
        align-items: center;
    }
    .value {
        border-right: none !important;
    }
    .product-progressive-discount .percentage-discount {
        position: absolute;
        right: 3px;
        top: 0;
        border: none;
        font-size: 10px !important;
        color: #fff;
        font-weight: 600;
    }
    .product-progressive-discount .percentage-discount span {
        background: {{ variables.cms_grade_produtos.cms_tag_oferta }};
        height: 28px;
        width: 28px;
        border-radius: 100%;
        display: flex;
        align-items: center;
        position: absolute;
        right: 0;
    }
    @media (max-width: 1250px) {
        section.product-page div.product-progressive-discount {
            max-width: 70%;
        }
    }
    @media (max-width: 1100px) {
        section.product-page div.product-progressive-discount {
            max-width: 1000%;
        }
    }
    /*==FIM==*/
</style>
<div class="product-progressive-discount">
    <div class="title">Desconto progressivo
    </div>
    <ul class="rules">
        <li class="header">
            <div class="quantity">Quantidade
            </div>
            <div class="value">Valor
            </div>
        </li>
        {% for rule in product.price.rules %}
        <li class="body">
            <div class="quantity">{{ (rule.max==0 ? ("acima de %s unidades"|format(rule.min)) : ("%s até %s unidades"|format(rule.min,rule.max)))|raw}}</div>
            <div class="value">{{currency.format(rule.value)}} / un.
            </div>
            <div class="percentage-discount">{{ (rule.discount>0) ? ("<span>-"~rule.discount~"%</span>")|raw : ""}}</div>
        </li>
        {% endfor %}
    </ul>
</div>