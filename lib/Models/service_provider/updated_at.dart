import 'dart:convert';

class UpdatedAt {
	String? date;
	int? timezoneType;
	String? timezone;

	UpdatedAt({this.date, this.timezoneType, this.timezone});

	factory UpdatedAt.fromMap(Map<String, dynamic> data) => UpdatedAt(
				date: data['date'] as String?,
				timezoneType: data['timezone_type'] as int?,
				timezone: data['timezone'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'date': date,
				'timezone_type': timezoneType,
				'timezone': timezone,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UpdatedAt].
	factory UpdatedAt.fromJson(String data) {
		return UpdatedAt.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [UpdatedAt] to a JSON string.
	String toJson() => json.encode(toMap());
}
