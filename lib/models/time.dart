class Time {
  bool assinante;
  bool cadastroCompleto;
  bool simplificado;
  bool lgpdRemovido;
  bool lgpdQuarentena;
  int clubeId;
  int esquemaId;
  int tipoAdorno;
  int tipoCamisa;
  int tipoEscudo;
  int tipoEstampaCamisa;
  int tipoEstampaEscudo;
  int patrocinador1Id;
  int patrocinador2Id;
  int timeId;
  String corBordaEscudo;
  String corCamisa;
  String corFundoEscudo;
  String fotoPerfil;
  String globoId;
  String nome;
  String nomeCartola;
  String slug;
  String urlCamisaPng;
  String urlCamisaSvg;
  String urlEscudoPng;
  String urlEscudoSvg;
  int facebookId;
  int rodadaTimeId;
  String corPrimariaEstampaCamisa;
  String corPrimariaEstampaEscudo;
  String corSecundariaEstampaCamisa;
  String corSecundariaEstampaEscudo;
  Null sorteioProNum;
  int temporadaInicial;

  Time(
      {this.assinante,
      this.cadastroCompleto,
      this.simplificado,
      this.lgpdRemovido,
      this.lgpdQuarentena,
      this.clubeId,
      this.esquemaId,
      this.tipoAdorno,
      this.tipoCamisa,
      this.tipoEscudo,
      this.tipoEstampaCamisa,
      this.tipoEstampaEscudo,
      this.patrocinador1Id,
      this.patrocinador2Id,
      this.timeId,
      this.corBordaEscudo,
      this.corCamisa,
      this.corFundoEscudo,
      this.fotoPerfil,
      this.globoId,
      this.nome,
      this.nomeCartola,
      this.slug,
      this.urlCamisaPng,
      this.urlCamisaSvg,
      this.urlEscudoPng,
      this.urlEscudoSvg,
      this.facebookId,
      this.rodadaTimeId,
      this.corPrimariaEstampaCamisa,
      this.corPrimariaEstampaEscudo,
      this.corSecundariaEstampaCamisa,
      this.corSecundariaEstampaEscudo,
      this.sorteioProNum,
      this.temporadaInicial});

  Time.fromJson(Map<String, dynamic> json) {
    assinante = json['assinante'];
    cadastroCompleto = json['cadastro_completo'];
    simplificado = json['simplificado'];
    lgpdRemovido = json['lgpd_removido'];
    lgpdQuarentena = json['lgpd_quarentena'];
    clubeId = json['clube_id'];
    esquemaId = json['esquema_id'];
    tipoAdorno = json['tipo_adorno'];
    tipoCamisa = json['tipo_camisa'];
    tipoEscudo = json['tipo_escudo'];
    tipoEstampaCamisa = json['tipo_estampa_camisa'];
    tipoEstampaEscudo = json['tipo_estampa_escudo'];
    patrocinador1Id = json['patrocinador1_id'];
    patrocinador2Id = json['patrocinador2_id'];
    timeId = json['time_id'];
    corBordaEscudo = json['cor_borda_escudo'];
    corCamisa = json['cor_camisa'];
    corFundoEscudo = json['cor_fundo_escudo'];
    fotoPerfil = json['foto_perfil'];
    globoId = json['globo_id'];
    nome = json['nome'];
    nomeCartola = json['nome_cartola'];
    slug = json['slug'];
    urlCamisaPng = json['url_camisa_png'];
    urlCamisaSvg = json['url_camisa_svg'];
    urlEscudoPng = json['url_escudo_png'];
    urlEscudoSvg = json['url_escudo_svg'];
    facebookId = json['facebook_id'];
    rodadaTimeId = json['rodada_time_id'];
    corPrimariaEstampaCamisa = json['cor_primaria_estampa_camisa'];
    corPrimariaEstampaEscudo = json['cor_primaria_estampa_escudo'];
    corSecundariaEstampaCamisa = json['cor_secundaria_estampa_camisa'];
    corSecundariaEstampaEscudo = json['cor_secundaria_estampa_escudo'];
    sorteioProNum = json['sorteio_pro_num'];
    temporadaInicial = json['temporada_inicial'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['assinante'] = this.assinante;
    data['cadastro_completo'] = this.cadastroCompleto;
    data['simplificado'] = this.simplificado;
    data['lgpd_removido'] = this.lgpdRemovido;
    data['lgpd_quarentena'] = this.lgpdQuarentena;
    data['clube_id'] = this.clubeId;
    data['esquema_id'] = this.esquemaId;
    data['tipo_adorno'] = this.tipoAdorno;
    data['tipo_camisa'] = this.tipoCamisa;
    data['tipo_escudo'] = this.tipoEscudo;
    data['tipo_estampa_camisa'] = this.tipoEstampaCamisa;
    data['tipo_estampa_escudo'] = this.tipoEstampaEscudo;
    data['patrocinador1_id'] = this.patrocinador1Id;
    data['patrocinador2_id'] = this.patrocinador2Id;
    data['time_id'] = this.timeId;
    data['cor_borda_escudo'] = this.corBordaEscudo;
    data['cor_camisa'] = this.corCamisa;
    data['cor_fundo_escudo'] = this.corFundoEscudo;
    data['foto_perfil'] = this.fotoPerfil;
    data['globo_id'] = this.globoId;
    data['nome'] = this.nome;
    data['nome_cartola'] = this.nomeCartola;
    data['slug'] = this.slug;
    data['url_camisa_png'] = this.urlCamisaPng;
    data['url_camisa_svg'] = this.urlCamisaSvg;
    data['url_escudo_png'] = this.urlEscudoPng;
    data['url_escudo_svg'] = this.urlEscudoSvg;
    data['facebook_id'] = this.facebookId;
    data['rodada_time_id'] = this.rodadaTimeId;
    data['cor_primaria_estampa_camisa'] = this.corPrimariaEstampaCamisa;
    data['cor_primaria_estampa_escudo'] = this.corPrimariaEstampaEscudo;
    data['cor_secundaria_estampa_camisa'] = this.corSecundariaEstampaCamisa;
    data['cor_secundaria_estampa_escudo'] = this.corSecundariaEstampaEscudo;
    data['sorteio_pro_num'] = this.sorteioProNum;
    data['temporada_inicial'] = this.temporadaInicial;
    return data;
  }
}
