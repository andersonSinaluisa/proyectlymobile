

class Project {
    String name;
    int resolution_id;
    DateTime updated_at;
    String description;
    int source_id;
    int status_id;
    int category_id;
    int priority_id;
    DateTime created_at;
    int id = 0;

    Project({
        required this.name,
        required this.resolution_id,
        required this.updated_at,
        required this.description,
        required this.source_id,
        required this.status_id,
        required this.category_id,
        required this.priority_id,
        required this.created_at,
    });

    factory Project.fromJson(Map<String, dynamic> json) => Project(
        name: json["name"],
        resolution_id: json["resolution_id"],
        updated_at: DateTime.parse(json["updated_at"]),
        description: json["description"],
        source_id: json["source_id"],
        status_id: json["status_id"],
        category_id: json["category_id"],
        priority_id: json["priority_id"],
        created_at: DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "resolution_id": resolution_id,
        "updated_at": updated_at.toIso8601String(),
        "description": description,
        "source_id": source_id,
        "status_id": status_id,
        "category_id": category_id,
        "priority_id": priority_id,
        "created_at": created_at.toIso8601String(),
    };
}