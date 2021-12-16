import 'dart:convert';

class ServicesOffered {
	int? drainRepair;

	ServicesOffered({this.drainRepair});

	factory ServicesOffered.fromMap(Map<String, dynamic> data) {
		return ServicesOffered(
			drainRepair: data['Drain Repair'] as int?,
		);
	}



	Map<String, dynamic> toMap() => {
				'Drain Repair': drainRepair,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ServicesOffered].
	factory ServicesOffered.fromJson(String data) {
		return ServicesOffered.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ServicesOffered] to a JSON string.
	String toJson() => json.encode(toMap());
}
