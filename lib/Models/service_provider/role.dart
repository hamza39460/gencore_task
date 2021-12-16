import 'dart:convert';

import 'created_at.dart';
import 'updated_at.dart';

class Role {
  int? id;
  String? title;
  List<dynamic>? scope;
  int? canRegister;
  CreatedAt? createdAt;
  UpdatedAt? updatedAt;
  dynamic deletedAt;

  Role({
    this.id,
    this.title,
    this.scope,
    this.canRegister,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory Role.fromMap(Map<String, dynamic> data) => Role(
        id: data['id'] as int?,
        title: data['title'] as String?,
        scope: data['scope'] as List<dynamic>?,
        canRegister: data['can_register'] as int?,
        createdAt: data['created_at'] == null
            ? null
            : CreatedAt.fromMap(data['created_at'] as Map<String, dynamic>),
        updatedAt: data['updated_at'] == null
            ? null
            : UpdatedAt.fromMap(data['updated_at'] as Map<String, dynamic>),
        deletedAt: data['deleted_at'] as dynamic?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'scope': scope,
        'can_register': canRegister,
        'created_at': createdAt?.toMap(),
        'updated_at': updatedAt?.toMap(),
        'deleted_at': deletedAt,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Role].
  factory Role.fromJson(String data) {
    return Role.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Role] to a JSON string.
  String toJson() => json.encode(toMap());
}
