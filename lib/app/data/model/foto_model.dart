class Foto {
  Foto({
    this.url,
  });

  String url;

  factory Foto.fromJson(Map<String, dynamic> json) => Foto(
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
      };
}
