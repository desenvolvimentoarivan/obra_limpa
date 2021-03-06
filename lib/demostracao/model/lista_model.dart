class DemoLista {
  DemoLista({
    this.cliente,
    this.produto,
    this.telefone,
    this.tipo,
    this.total,
    this.status,
    this.endereco,
  });

  String cliente;
  String produto;
  String telefone;
  String tipo;
  String total;
  String status;
  String endereco;

  factory DemoLista.fromJson(Map<String, dynamic> json) => DemoLista(
        cliente: json["cliente"] == null ? null : json["cliente"],
        produto: json["produto"] == null ? null : json["produto"],
        telefone: json["telefone"] == null ? null : json["telefone"],
        tipo: json["tipo"] == null ? null : json["tipo"],
        total: json["total"] == null ? null : json["total"],
        status: json["status"] == null ? null : json["status"],
        endereco: json["endereco"] == null ? null : json["endereco"],
      );

  Map<String, dynamic> toJson() => {
        "cliente": cliente == null ? null : cliente,
        "produto": produto == null ? null : produto,
        "telefone": telefone == null ? null : telefone,
        "tipo": tipo == null ? null : tipo,
        "total": total == null ? null : total,
        "status": status == null ? null : status,
        "endereco": endereco == null ? null : endereco,
      };
}
