import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:arab_therapy_task/src/core/di/service_locator.dart';
import 'package:arab_therapy_task/src/core/observer/app_bloc_observer.dart';
import 'package:arab_therapy_task/src/features/app_root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpServiceLocatorConfiguration();
  Bloc.observer = AppBlocObserver();
  runApp(const AppRoot());
}
