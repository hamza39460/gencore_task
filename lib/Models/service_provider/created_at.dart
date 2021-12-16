import 'dart:convert';

class CreatedAt {
	String? date;
	int? timezoneType;
	String? timezone;

	CreatedAt({this.date, this.timezoneType, this.timezone});

	factory CreatedAt.fromMap(Map<String, dynamic> data) => CreatedAt(
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
  /// Parses the string and returns the resulting Json object as [CreatedAt].
	factory CreatedAt.fromJson(String data) {
		return CreatedAt.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [CreatedAt] to a JSON string.
	String toJson() => json.encode(toMap());
}
