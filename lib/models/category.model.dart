class Category {
  Category({
    this.id,
    this.type,
    this.code,
    this.name,
    this.parentIds,
    this.parents,
  });

  String id;
  String type;
  String code;
  String name;
  List<String> parentIds;
  List<Category> parents;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"] == null ? null : json["id"],
        type: json["type"] == null ? null : json["type"],
        code: json["code"] == null ? null : json["code"],
        name: json["name"] == null ? null : json["name"],
        parentIds: json["parentIds"] == null
            ? null
            : List<String>.from(json["parentIds"].map((x) => x)),
        parents: json["parents"] == null
            ? null
            : List<Category>.from(
                json["parents"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "code": code,
        "name": name,
        "parentIds": List<dynamic>.from(parentIds.map((x) => x)),
        "parents": List<dynamic>.from(parents.map((x) => x.toJson())),
      };
}
