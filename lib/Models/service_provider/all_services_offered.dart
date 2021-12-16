import 'dart:convert';

class AllServicesOffered {
	int? id;
	int? userId;
	dynamic reason;
	int? approvedBy;
	String? approvedAt;
	int? status;
	String? createdAt;
	String? updatedAt;
	dynamic deletedAt;
	int? serviceProviderProfileRequestId;
	int? serviceId;
	String? title;
	String? description;
	int? isDisplayBanner;
	int? isDisplayServiceNav;
	int? isDisplayFooterNav;
	int? isFeatured;
	String? urlSuffix;
	int? parentId;
	String? images;
	String? icon;

	AllServicesOffered({
		this.id, 
		this.userId, 
		this.reason, 
		this.approvedBy, 
		this.approvedAt, 
		this.status, 
		this.createdAt, 
		this.updatedAt, 
		this.deletedAt, 
		this.serviceProviderProfileRequestId, 
		this.serviceId, 
		this.title, 
		this.description, 
		this.isDisplayBanner, 
		this.isDisplayServiceNav, 
		this.isDisplayFooterNav, 
		this.isFeatured, 
		this.urlSuffix, 
		this.parentId, 
		this.images, 
		this.icon, 
	});

	factory AllServicesOffered.fromMap(Map<String, dynamic> data) {
		return AllServicesOffered(
			id: data['id'] as int?,
			userId: data['user_id'] as int?,
			reason: data['reason'] as dynamic?,
			approvedBy: data['approved_by'] as int?,
			approvedAt: data['approved_at'] as String?,
			status: data['status'] as int?,
			createdAt: data['created_at'] as String?,
			updatedAt: data['updated_at'] as String?,
			deletedAt: data['deleted_at'] as dynamic?,
			serviceProviderProfileRequestId: data['service_provider_profile_request_id'] as int?,
			serviceId: data['service_id'] as int?,
			title: data['title'] as String?,
			description: data['description'] as String?,
			isDisplayBanner: data['is_display_banner'] as int?,
			isDisplayServiceNav: data['is_display_service_nav'] as int?,
			isDisplayFooterNav: data['is_display_footer_nav'] as int?,
			isFeatured: data['is_featured'] as int?,
			urlSuffix: data['url_suffix'] as String?,
			parentId: data['parent_id'] as int?,
			images: data['images'] as String?,
			icon: data['icon'] as String?,
		);
	}



	Map<String, dynamic> toMap() => {
				'id': id,
				'user_id': userId,
				'reason': reason,
				'approved_by': approvedBy,
				'approved_at': approvedAt,
				'status': status,
				'created_at': createdAt,
				'updated_at': updatedAt,
				'deleted_at': deletedAt,
				'service_provider_profile_request_id': serviceProviderProfileRequestId,
				'service_id': serviceId,
				'title': title,
				'description': description,
				'is_display_banner': isDisplayBanner,
				'is_display_service_nav': isDisplayServiceNav,
				'is_display_footer_nav': isDisplayFooterNav,
				'is_featured': isFeatured,
				'url_suffix': urlSuffix,
				'parent_id': parentId,
				'images': images,
				'icon': icon,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AllServicesOffered].
	factory AllServicesOffered.fromJson(String data) {
		return AllServicesOffered.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [AllServicesOffered] to a JSON string.
	String toJson() => json.encode(toMap());
}
