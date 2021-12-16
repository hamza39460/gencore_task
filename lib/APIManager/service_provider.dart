import 'package:dio/dio.dart';

import 'package:gencore_task/APIManager/api_manager.dart';

extension ServiceProviderAPI on APIManager {
  fetchServiceProvider() async {
    String _url = "https://teletraan.co/api/service-provider-profile";
    Map<String, dynamic> _params = {
      "pagination": true,
      "user_detail": true,
      "is_approved": "approved",
      "filter_by_top_providers": true,
      "filter_by_service": "drain-repair",
      "zip": 10501,
      "from_explore": true
    };
    try {
      Response response = await getHttp(_url, _params);
      //Map<String, dynamic> _data = response.data as Map<String, dynamic>;
      return response.data;
    } on DioError {
      rethrow;
    }
  }
}
