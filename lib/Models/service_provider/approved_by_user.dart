import 'dart:convert';

import 'created_at.dart';
import 'role.dart';
import 'updated_at.dart';

class ApprovedByUser {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? address;
  String? profileImage;
  dynamic apartment;
  String? zipCode;
  String? phoneNumber;
  String? password;
  int? roleId;
  String? accessLevel;
  int? countryId;
  int? stateId;
  int? cityId;
  String? activationKey;
  String? activatedAt;
  String? rememberToken;
  dynamic socialAccountId;
  String? status;
  dynamic socialAccountType;
  CreatedAt? createdAt;
  UpdatedAt? updatedAt;
  dynamic deletedAt;
  dynamic stripeId;
  dynamic cardBrand;
  dynamic cardLastFour;
  dynamic trialEndsAt;
  int? isProfileCompleted;
  String? profileImage2;
  Role? role;
  String? country;
  String? city;
  String? state;
  String? formattedCreatedAt;

  ApprovedByUser({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.address,
    this.profileImage,
    this.apartment,
    this.zipCode,
    this.phoneNumber,
    this.password,
    this.roleId,
    this.accessLevel,
    this.countryId,
    this.stateId,
    this.cityId,
    this.activationKey,
    this.activatedAt,
    this.rememberToken,
    this.socialAccountId,
    this.status,
    this.socialAccountType,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.stripeId,
    this.cardBrand,
    this.cardLastFour,
    this.trialEndsAt,
    this.isProfileCompleted,
    this.profileImage2,
    this.role,
    this.country,
    this.city,
    this.state,
    this.formattedCreatedAt,
  });

  factory ApprovedByUser.fromMap(Map<String, dynamic> data) {
    return ApprovedByUser(
      id: data['id'] as int?,
      firstName: data['first_name'] as String?,
      lastName: data['last_name'] as String?,
      email: data['email'] as String?,
      address: data['address'] as String?,
      profileImage: data['profile_image'] as String?,
      apartment: data['apartment'] as dynamic?,
      zipCode: data['zip_code'] as String?,
      phoneNumber: data['phone_number'] as String?,
      password: data['password'] as String?,
      roleId: data['role_id'] as int?,
      accessLevel: data['access_level'] as String?,
      countryId: data['country_id'] as int?,
      stateId: data['state_id'] as int?,
      cityId: data['city_id'] as int?,
      activationKey: data['activation_key'] as String?,
      activatedAt: data['activated_at'] as String?,
      rememberToken: data['remember_token'] as String?,
      socialAccountId: data['social_account_id'] as dynamic?,
      status: data['status'] as String?,
      socialAccountType: data['social_account_type'] as dynamic?,
      createdAt: data['created_at'] == null
          ? null
          : CreatedAt.fromMap(data['created_at'] as Map<String, dynamic>),
      updatedAt: data['updated_at'] == null
          ? null
          : UpdatedAt.fromMap(data['updated_at'] as Map<String, dynamic>),
      deletedAt: data['deleted_at'] as dynamic?,
      stripeId: data['stripe_id'] as dynamic?,
      cardBrand: data['card_brand'] as dynamic?,
      cardLastFour: data['card_last_four'] as dynamic?,
      trialEndsAt: data['trial_ends_at'] as dynamic?,
      isProfileCompleted: data['is_profile_completed'] as int?,
      profileImage2: data['profileImage'] as String?,
      role: data['role'] == null
          ? null
          : Role.fromMap(data['role'] as Map<String, dynamic>),
      country: data['country'] as String?,
      city: data['city'] as String?,
      state: data['state'] as String?,
      formattedCreatedAt: data['formatted_created_at'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'address': address,
        'profile_image': profileImage,
        'apartment': apartment,
        'zip_code': zipCode,
        'phone_number': phoneNumber,
        'password': password,
        'role_id': roleId,
        'access_level': accessLevel,
        'country_id': countryId,
        'state_id': stateId,
        'city_id': cityId,
        'activation_key': activationKey,
        'activated_at': activatedAt,
        'remember_token': rememberToken,
        'social_account_id': socialAccountId,
        'status': status,
        'social_account_type': socialAccountType,
        'created_at': createdAt?.toMap(),
        'updated_at': updatedAt?.toMap(),
        'deleted_at': deletedAt,
        'stripe_id': stripeId,
        'card_brand': cardBrand,
        'card_last_four': cardLastFour,
        'trial_ends_at': trialEndsAt,
        'is_profile_completed': isProfileCompleted,
        'profileImage': profileImage,
        'role': role?.toMap(),
        'country': country,
        'city': city,
        'state': state,
        'formatted_created_at': formattedCreatedAt,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ApprovedByUser].
  factory ApprovedByUser.fromJson(String data) {
    return ApprovedByUser.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ApprovedByUser] to a JSON string.
  String toJson() => json.encode(toMap());
}
