import 'dart:async';
import 'dart:developer';

import 'package:gencore_task/APIManager/api_manager.dart';
import 'package:gencore_task/APIManager/service_provider.dart';
import 'package:gencore_task/Models/service_provider/datum.dart';
import 'package:gencore_task/Models/service_provider/service_provider.dart';

enum ServiceProviderState {
  noData,
  fetching,
  fetched,
}

class ServiceProviderController {
  final StreamController<ServiceProviderState> streamController =
      StreamController();

  ServiceProvider? _data;

  List<Datum>? get serviceProvidersList => _data?.data;
  fetchServiceProvider() async {
    _data = null;
    streamController.add(ServiceProviderState.fetching);
    try {
      var response = await APIManager().fetchServiceProvider();
      _data = ServiceProvider.fromMap(response);
      if (_data == null) {
        return streamController.add(ServiceProviderState.noData);
      }
      if (_data!.data == null) {
        return streamController.add(ServiceProviderState.noData);
      }
      if (_data!.data!.isEmpty) {
        return streamController.add(ServiceProviderState.noData);
      }
      return streamController.add(ServiceProviderState.fetched);
    } catch (e) {
      log("Error Fetching Service Provider $e");
      streamController.addError(e);
    }
  }
}
