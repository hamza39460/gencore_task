import 'dart:convert';

import 'datum.dart';
import 'pagination.dart';

class ServiceProvider {
	List<Datum>? data;
	Pagination? pagination;
	String? message;

	ServiceProvider({this.data, this.pagination, this.message});

	factory ServiceProvider.fromMap(Map<String, dynamic> data) {
		return ServiceProvider(
			data: (data['data'] as List<dynamic>?)
						?.map((e) => Datum.fromMap(e as Map<String, dynamic>))
						.toList(),
			pagination: data['pagination'] == null
						? null
						: Pagination.fromMap(data['pagination'] as Map<String, dynamic>),
			message: data['message'] as String?,
		);
	}



	Map<String, dynamic> toMap() => {
				'data': data?.map((e) => e.toMap()).toList(),
				'pagination': pagination?.toMap(),
				'message': message,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ServiceProvider].
	factory ServiceProvider.fromJson(String data) {
		return ServiceProvider.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ServiceProvider] to a JSON string.
	String toJson() => json.encode(toMap());
}
