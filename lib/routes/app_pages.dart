import 'package:get/get.dart';
import 'package:promiloapp/modules/auth/login_page.dart';
import 'package:promiloapp/modules/description/description_page.dart';
import 'package:promiloapp/modules/meet_up/individual_meetup_page.dart';
import 'package:promiloapp/routes/app_routes.dart';

class Routes {
  static List<GetPage> pages = [
    GetPage(name: AppRoutes.initial, page: LoginPage.new),
    GetPage(
        name: AppRoutes.IndividualMeetupPage, page: IndividualMeetupPage.new),
    GetPage(name: AppRoutes.descriptionPage, page: DescriptionPage.new),
  ];
}
