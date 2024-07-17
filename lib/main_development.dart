import 'package:flutter/material.dart';
import 'package:flutter_adv_app/core/di/dependency_injection.dart';
import 'package:flutter_adv_app/core/routing/app_router.dart';
import 'package:flutter_adv_app/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  // To fix hidden texts bug in screenutil package in android release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
