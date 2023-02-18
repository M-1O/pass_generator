import 'package:get_it/get_it.dart';

class ServiceLocator {
  static final ServiceLocator _instance = ServiceLocator._internal();

  factory ServiceLocator() {
    return _instance;
  }

  ServiceLocator._internal();

  final GetIt _locator = GetIt.instance;

  void setup() {
    // GetIt.I.registerSingleton<AppModel>(AppModel());
  }
}
