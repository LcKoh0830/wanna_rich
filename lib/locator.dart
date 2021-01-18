

import 'package:get_it/get_it.dart';

import 'model/home_model.dart';

GetIt locator = GetIt.instance;


void setupLocator() {

  // VIEWMODELS
  locator.registerFactory(() => HomeModel());
}