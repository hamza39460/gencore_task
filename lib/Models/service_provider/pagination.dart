import 'dart:convert';

class Pagination {
  int? total;
  int? current;
  int? first;
  int? last;
  int? from;
  int? to;
  int? previous;
  int? next;
  List<dynamic>? pages;

  Pagination({
    this.total,
    this.current,
    this.first,
    this.last,
    this.from,
    this.to,
    this.previous,
    this.next,
    this.pages,
  });

  factory Pagination.fromMap(Map<String, dynamic> data) => Pagination(
        total: data['total'] as int?,
        current: data['current'] as int?,
        first: data['first'] as int?,
        last: data['last'] as int?,
        from: data['from'] as int?,
        to: data['to'] as int?,
        previous: data['previous'] as int?,
        next: data['next'] as int?,
        pages: data['pages'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'total': total,
        'current': current,
        'first': first,
        'last': last,
        'from': from,
        'to': to,
        'previous': previous,
        'next': next,
        'pages': pages,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Pagination].
  factory Pagination.fromJson(String data) {
    return Pagination.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Pagination] to a JSON string.
  String toJson() => json.encode(toMap());
}
