import 'dart:convert';

import 'approved_by_user.dart';
import 'created_at.dart';
import 'updated_at.dart';

class ProfileRequest {
	int? id;
	int? userId;
	dynamic reason;
	int? approvedBy;
	String? approvedAt;
	String? status;
	CreatedAt? createdAt;
	UpdatedAt? updatedAt;
	dynamic deletedAt;
	String? formattedApprovedAt;
	String? formattedCreatedAt;
	String? formattedUpdatedAt;
	ApprovedByUser? approvedByUser;

	ProfileRequest({
		this.id, 
		this.userId, 
		this.reason, 
		this.approvedBy, 
		this.approvedAt, 
		this.status, 
		this.createdAt, 
		this.updatedAt, 
		this.deletedAt, 
		this.formattedApprovedAt, 
		this.formattedCreatedAt, 
		this.formattedUpdatedAt, 
		this.approvedByUser, 
	});

	factory ProfileRequest.fromMap(Map<String, dynamic> data) {
		return ProfileRequest(
			id: data['id'] as int?,
			userId: data['user_id'] as int?,
			reason: data['reason'] as dynamic?,
			approvedBy: data['approved_by'] as int?,
			approvedAt: data['approved_at'] as String?,
			status: data['status'] as String?,
			createdAt: data['created_at'] == null
						? null
						: CreatedAt.fromMap(data['created_at'] as Map<String, dynamic>),
			updatedAt: data['updated_at'] == null
						? null
						: UpdatedAt.fromMap(data['updated_at'] as Map<String, dynamic>),
			deletedAt: data['deleted_at'] as dynamic?,
			formattedApprovedAt: data['formatted_approved_at'] as String?,
			formattedCreatedAt: data['formatted_created_at'] as String?,
			formattedUpdatedAt: data['formatted_updated_at'] as String?,
			approvedByUser: data['approved_by_user'] == null
						? null
						: ApprovedByUser.fromMap(data['approved_by_user'] as Map<String, dynamic>),
		);
	}



	Map<String, dynamic> toMap() => {
				'id': id,
				'user_id': userId,
				'reason': reason,
				'approved_by': approvedBy,
				'approved_at': approvedAt,
				'status': status,
				'created_at': createdAt?.toMap(),
				'updated_at': updatedAt?.toMap(),
				'deleted_at': deletedAt,
				'formatted_approved_at': formattedApprovedAt,
				'formatted_created_at': formattedCreatedAt,
				'formatted_updated_at': formattedUpdatedAt,
				'approved_by_user': approvedByUser?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ProfileRequest].
	factory ProfileRequest.fromJson(String data) {
		return ProfileRequest.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ProfileRequest] to a JSON string.
	String toJson() => json.encode(toMap());
}
