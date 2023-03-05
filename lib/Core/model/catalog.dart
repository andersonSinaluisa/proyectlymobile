

class Catalog{


    DateTime created_at;
    String name;
    String code;
    String description;
    int type_id;
    int id = 0;

    Catalog({
        required this.created_at,
        required this.name,
        required this.code,
        required this.description,
        required this.type_id,
    });

    factory Catalog.fromJson(Map<String, dynamic> json) => Catalog(
        created_at: DateTime.parse(json["created_at"]),
        name: json["name"],
        code: json["code"],
        description: json["description"],
        type_id: json["type_id"],
    ).id = json["id"];
}