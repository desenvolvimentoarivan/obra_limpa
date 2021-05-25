import 'foto_model.dart';

class Usuario {
  Usuario({
    this.id,
    this.email,
    this.nome,
    this.username,
    this.ativo,
    this.deletedAt,
    this.foto,
    this.createdAt,
    this.updatedAt,
    this.accessToken,
  });

  int id;
  String email;
  String nome;
  String username;
  bool ativo;
  dynamic deletedAt;
  Foto foto;
  DateTime createdAt;
  DateTime updatedAt;
  String accessToken;

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        id: json["id"] == null ? null : json["id"],
        email: json["email"] == null ? null : json["email"],
        nome: json["nome"] == null ? null : json["nome"],
        username: json["username"] == null ? null : json["username"],
        ativo: json["ativo"] == null ? null : json["ativo"],
        deletedAt: json["deleted_at"],
        foto: json["foto"] == null ? null : Foto.fromJson(json["foto"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        accessToken: json["accessToken"] == null ? null : json["accessToken"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "email": email == null ? null : email,
        "nome": nome == null ? null : nome,
        "username": username == null ? null : username,
        "ativo": ativo == null ? null : ativo,
        "deleted_at": deletedAt,
        "foto": foto == null ? null : foto.toJson(),
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "accessToken": accessToken == null ? null : accessToken,
      };
}
