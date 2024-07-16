import 'package:flutter/material.dart';
import 'package:flutter_adv_app/core/di/dependency_injection.dart';
import 'package:flutter_adv_app/core/routing/app_router.dart';
import 'package:flutter_adv_app/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
