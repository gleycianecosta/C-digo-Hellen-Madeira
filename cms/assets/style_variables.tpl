<style type="text/css">
  /**==Declaracao variaveis CSS==**/
  :root {
    /**==Variaveis botoes==**/    
    /*--background botoes--*/
    --cor-bg-bt-alerta: {{variables.cms_botoes.cms_cor_bg_alerta}};
    --cor-bg-bt-cancel: {{ variables.cms_botoes.cms_cor_bg_cancel }};
    --cor-bg-bt-confirm: {{variables.cms_botoes.cms_cor_bg_confirm}};
    --cor-bg-bt-destaque: {{variables.cms_botoes.cms_cor_bg_destaque}};
    --cor-bg-bt-inativo: {{variables.cms_botoes.cms_cor_bg_inativo}};
    --cor-bg-bt-info: {{variables.cms_botoes.cms_cor_bg_info}};
    /*--Cor textos botoes--*/
    --cor-txt-bt-alerta: {{variables.cms_botoes.cms_cor_txt_alerta}};
    --cor-txt-bt-cancel: {{variables.cms_botoes.cms_cor_txt_cancel}};
    --cor-txt-bt-confirm: {{variables.cms_botoes.cms_cor_txt_confirm}};
    --cor-txt-bt-destaque: {{variables.cms_botoes.cms_cor_txt_destaque}};
    --cor-txt-bt-inativo: {{variables.cms_botoes.cms_cor_txt_inativo}};
    --cor-txt-bt-info: {{variables.cms_botoes.cms_cor_txt_info}};
    /*--Realce botões--*/
    --cor-realce-bt-alerta: {{variables.cms_botoes.cms_realce_alerta}};
    --cor-realce-bt-cancel: {{ variables.cms_botoes.cms_realce_cancel }};
    --cor-realce-bt-confirm: {{ variables.cms_botoes.cms_realce_confirm }};
    --cor-realce-bt-destaque: {{variables.cms_botoes.cms_realce_destaque}};
    --cor-realce-bt-info: {{variables.cms_botoes.cms_realce_info}};
    /**==Fim Variaveis botoes==**/
    /*==variaveis cabecalho==*/
    /*--Cor background cabecalho--*/
    --cor-bg-busca: {{variables.cms_cabecalho.cms_bg_busca}};
    --cor-bg-cabecalho: {{variables.cms_cabecalho.cms_bg_cabecalho}};
    --cor-bg-login: {{variables.cms_cabecalho.cms_bg_login}};
    --cor-bg-menu: {{variables.cms_cabecalho.cms_bg_menu}};
    --cor-bg-parceiro: {{variables.cms_cabecalho.cms_bg_parceiro}};
    --cor-bg-reduzido: {{variables.cms_cabecalho.cms_bg_reduzido}};
    --cor-bg-fundo-sub: {{ variables.cms_cabecalho.cms_bg_submenu }};
    --color-bg-cb-20: {{variables.cms_cabecalho.cms_bg_cabecalho}}33;
    --color-bg-cb-40: {{variables.cms_cabecalho.cms_bg_cabecalho}}66;
    --color-bg-cb-60: {{variables.cms_cabecalho.cms_bg_cabecalho}}99;
    --color-bg-cb-80: {{variables.cms_cabecalho.cms_bg_cabecalho}}CC;
    /*--Cor textos cabecalho--*/
    --cor-txt-busca: {{variables.cms_cabecalho.cms_cor_busca}};
    --cor-txt-cabecalho: {{variables.cms_cabecalho.cms_cor_cabecalho}};
    --cor-txt-login: {{variables.cms_cabecalho.cms_cor_login}};
    --cor-txt-menu: {{variables.cms_cabecalho.cms_cor_menu}};
    --cor-txt-parceiro: {{variables.cms_cabecalho.cms_cor_parceiro}};
    --cor-txt-reduzido: {{variables.cms_cabecalho.cms_cor_reduzido}};
    /*--Realce textos cabecalho--*/
    --cor-realce-cb-realce: {{variables.cms_cabecalho.cms_cor_realce}};
    --cor-realce-cb-login: {{variables.cms_cabecalho.cms_cor_realce_login}};
    --cor-realce-cb-menu: {{variables.cms_cabecalho.cms_cor_realce_menu}};
    /*==Fim variaveis cabecalho==*/
    /*==Variaveis de gerais==*/
    --txt-ff: {{ variables.cms_config_geral.cms_fonte_familia }};
    --cor-bg-corpo: {{variables.cms_config_geral.cms_cor_corpo}};
    --cor-txt-gerais: {{variables.cms_config_geral.cms_cor_txt_gerais}};
    --d-none-var-vitrine: {{variables.cms_config_geral.cms_variaveis_boxes}};
    --d-none-quant-contador: {{variables.cms_config_geral.cms_quant_contador}};
    /*==Fim variaveis de gerais==*/
    /*==Variaveis grade produtos==*/
    --cor-bg-blcs-gp: {{variables.cms_grade_produtos.cms_cor_blocos}};
    --cor-bg-fd-gp: {{variables.cms_grade_produtos.cms_cor_fundo}};
    --cor-txt-nome-prto: {{ variables.cms_grade_produtos.cms_nome_produto }};
    --cor-txt-prc-prto: {{ variables.cms_grade_produtos.cms_preco_produto }};
    --cor-bg-tag-desc: {{variables.cms_grade_produtos.cms_tag_desconto}};
    --cor-bg-tag-exclus: {{variables.cms_grade_produtos.cms_tag_exclusivo}};
    --cor-bg-tag-lanc: {{variables.cms_grade_produtos.cms_tag_lancamento}};
    --cor-bg-tag-ofer: {{variables.cms_grade_produtos.cms_tag_oferta}};
    /*==Fim variaveis grade produtos==*/
    /*==Variaveis Footer==*/
    --cor-bg-rodape: {{variables.cms_rodape.cms_bg_rodape}};
    --cor-bg-creditos: {{variables.cms_rodape.cms_bg_creditos}};
    --cor-bg-news: {{variables.cms_rodape.cms_bg_newsletter}};
    --cor-bg-btn-nwes: {{variables.cms_rodape.cms_bg_btn_news}};
    --cor-txt-rodape: {{variables.cms_rodape.cms_cor_textos}};
    --cor-txt-rodape-hover: {{variables.cms_rodape.cms_cor_texto_hover}};
    --cor-txt-nwes: {{variables.cms_rodape.cms_cor_texto_news}};
    --cor-txt-creditos: {{ variables.cms_rodape.cms_cor_texto_credit }};
    /*==Fim Variaveis Footer==*/
    /*==Variaveis gerais==*/
    /*Trasparencia color nome do produto*/
    --color-txt-20: {{ variables.cms_grade_produtos.cms_nome_produto }}33;
    --color-txt-40: {{ variables.cms_grade_produtos.cms_nome_produto }}66;
    --color-txt-60: {{ variables.cms_grade_produtos.cms_nome_produto }}99;
    --color-txt-80: {{ variables.cms_grade_produtos.cms_nome_produto }}CC;
    /*Trasparencia BG cards*/
    --color-bg-20: {{variables.cms_grade_produtos.cms_cor_blocos}}33;
    --color-bg-40: {{variables.cms_grade_produtos.cms_cor_blocos}}66;
    --color-bg-60: {{variables.cms_grade_produtos.cms_cor_blocos}}99;
    --color-bg-80: {{variables.cms_grade_produtos.cms_cor_blocos}}CC;
    /*==Fim Variaveis gerais==*/
  }
  /**==Fim declaracao variaveis CSS==**/
</style>
