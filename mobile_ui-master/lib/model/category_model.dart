import 'dart:convert';

class CategoryModel {
  final int id;
  final String name;
  final String description;
  final int status;
  CategoryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.status,
  });

  CategoryModel copyWith({
    int? id,
    String? createdAt,
    String? updatedAt,
    String? name,
    String? description,
    int? status,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'status': status,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      status: map['status']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CategoryModel(id: $id,  name: $name, description: $description, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryModel &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.status == status;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ description.hashCode ^ status.hashCode;
  }

  @override
  List<Object?> get props => [id, name, description, status];
}
