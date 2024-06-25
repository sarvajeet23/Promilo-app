import 'dart:core';

import 'package:get/get.dart';
import 'package:promiloapp/routes/app_routes.dart';

abstract class RouteManagement {
  static void goToLoginPage() {
    Get.toNamed(AppRoutes.IndividualMeetupPage);
  }

  static void goToDescription() {
    Get.toNamed(AppRoutes.descriptionPage);
  }

  // static void goToHomePage() {
  //   Get.offNamedUntil(AppRoutes.IndividualMeetupPage, (_) => false);
  // }

  // static void goToMoviesPage() {
  //   Get.toNamed(AppRoutes.moviePage);
  // }

  static Future<T?>? goTo<T>(String page, {dynamic arguments}) async {
    final result = await Get.toNamed(page, arguments: arguments);
    return result;
  }
}
