import 'dart:convert';

import 'all_services_offered.dart';
import 'created_at.dart';
import 'profile_request.dart';
import 'services_offered.dart';
import 'updated_at.dart';
import 'user_detail.dart';

class Datum {
	int? id;
	int? userId;
	dynamic attachments;
	String? businessName;
	String? businessDetails;
	String? dunsNumber;
	String? yearsOfExperience;
	String? businessType;
	int? isFeatured;
	int? isVerified;
	CreatedAt? createdAt;
	UpdatedAt? updatedAt;
	dynamic deletedAt;
	String? formattedCreatedAt;
	UserDetail? userDetail;
	int? initiatedJobs;
	int? finishedJobs;
	int? urgentJobsCompleted;
	int? urgentJobsCreated;
	String? totalRevenue;
	int? avgRating;
	dynamic reviewedBy;
	int? totalFeedbackCount;
	ServicesOffered? servicesOffered;
	List<AllServicesOffered>? allServicesOffered;
	ProfileRequest? profileRequest;

	Datum({
		this.id, 
		this.userId, 
		this.attachments, 
		this.businessName, 
		this.businessDetails, 
		this.dunsNumber, 
		this.yearsOfExperience, 
		this.businessType, 
		this.isFeatured, 
		this.isVerified, 
		this.createdAt, 
		this.updatedAt, 
		this.deletedAt, 
		this.formattedCreatedAt, 
		this.userDetail, 
		this.initiatedJobs, 
		this.finishedJobs, 
		this.urgentJobsCompleted, 
		this.urgentJobsCreated, 
		this.totalRevenue, 
		this.avgRating, 
		this.reviewedBy, 
		this.totalFeedbackCount, 
		this.servicesOffered, 
		this.allServicesOffered, 
		this.profileRequest, 
	});

	factory Datum.fromMap(Map<String, dynamic> data) => Datum(
				id: data['id'] as int?,
				userId: data['user_id'] as int?,
				attachments: data['attachments'] as dynamic?,
				businessName: data['business_name'] as String?,
				businessDetails: data['business_details'] as String?,
				dunsNumber: data['duns_number'] as String?,
				yearsOfExperience: data['years_of_experience'] as String?,
				businessType: data['business_type'] as String?,
				isFeatured: data['is_featured'] as int?,
				isVerified: data['is_verified'] as int?,
				createdAt: data['created_at'] == null
						? null
						: CreatedAt.fromMap(data['created_at'] as Map<String, dynamic>),
				updatedAt: data['updated_at'] == null
						? null
						: UpdatedAt.fromMap(data['updated_at'] as Map<String, dynamic>),
				deletedAt: data['deleted_at'] as dynamic?,
				formattedCreatedAt: data['formatted_created_at'] as String?,
				userDetail: data['user_detail'] == null
						? null
						: UserDetail.fromMap(data['user_detail'] as Map<String, dynamic>),
				initiatedJobs: data['initiated_jobs'] as int?,
				finishedJobs: data['finished_jobs'] as int?,
				urgentJobsCompleted: data['urgent_jobs_completed'] as int?,
				urgentJobsCreated: data['urgent_jobs_created'] as int?,
				totalRevenue: data['total_revenue'] as String?,
				avgRating: data['avg_rating'] as int?,
				reviewedBy: data['reviewedBy'] as dynamic?,
				totalFeedbackCount: data['total_feedback_count'] as int?,
				servicesOffered: data['services_offered'] == null
						? null
						: ServicesOffered.fromMap(data['services_offered'] as Map<String, dynamic>),
				allServicesOffered: (data['all_services_offered'] as List<dynamic>?)
						?.map((e) => AllServicesOffered.fromMap(e as Map<String, dynamic>))
						.toList(),
				profileRequest: data['profile_request'] == null
						? null
						: ProfileRequest.fromMap(data['profile_request'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'id': id,
				'user_id': userId,
				'attachments': attachments,
				'business_name': businessName,
				'business_details': businessDetails,
				'duns_number': dunsNumber,
				'years_of_experience': yearsOfExperience,
				'business_type': businessType,
				'is_featured': isFeatured,
				'is_verified': isVerified,
				'created_at': createdAt?.toMap(),
				'updated_at': updatedAt?.toMap(),
				'deleted_at': deletedAt,
				'formatted_created_at': formattedCreatedAt,
				'user_detail': userDetail?.toMap(),
				'initiated_jobs': initiatedJobs,
				'finished_jobs': finishedJobs,
				'urgent_jobs_completed': urgentJobsCompleted,
				'urgent_jobs_created': urgentJobsCreated,
				'total_revenue': totalRevenue,
				'avg_rating': avgRating,
				'reviewedBy': reviewedBy,
				'total_feedback_count': totalFeedbackCount,
				'services_offered': servicesOffered?.toMap(),
				'all_services_offered': allServicesOffered?.map((e) => e.toMap()).toList(),
				'profile_request': profileRequest?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Datum].
	factory Datum.fromJson(String data) {
		return Datum.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Datum] to a JSON string.
	String toJson() => json.encode(toMap());
}
