import 'package:application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:application1/presentation/get_started_one_screen/binding/get_started_one_binding.dart';
import 'package:application1/presentation/get_started_one_screen/get_started_one_screen.dart';
import 'package:application1/presentation/get_started_three_screen/binding/get_started_three_binding.dart';
import 'package:application1/presentation/get_started_three_screen/get_started_three_screen.dart';
import 'package:application1/presentation/get_started_two_screen/binding/get_started_two_binding.dart';
import 'package:application1/presentation/get_started_two_screen/get_started_two_screen.dart';
import 'package:application1/presentation/home_screen/binding/home_binding.dart';
import 'package:application1/presentation/home_screen/home_screen.dart';
import 'package:application1/presentation/login_screen/binding/login_binding.dart';
import 'package:application1/presentation/login_screen/login_screen.dart';
import 'package:application1/presentation/private_chat_screen/binding/private_chat_binding.dart';
import 'package:application1/presentation/private_chat_screen/private_chat_screen.dart';
import 'package:application1/presentation/register_screen/binding/register_binding.dart';
import 'package:application1/presentation/register_screen/register_screen.dart';
import 'package:get/get.dart';
class AppRoutes {
  static String getStartedOneScreen = '/get_started_one_screen';

  static String getStartedTwoScreen = '/get_started_two_screen';

  static String getStartedThreeScreen = '/get_started_three_screen';

  static String registerScreen = '/register_screen';

  static String loginScreen = '/login_screen';

  static String authenticationScreen = '/authentication_screen';

  static String homeScreen = '/home_screen';

  static String privateChatScreen = '/private_chat_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: getStartedOneScreen,
      page: () => GetStartedOneScreen(),
      bindings: [
        GetStartedOneBinding(),
      ],
    ),
    GetPage(
      name: getStartedTwoScreen,
      page: () => GetStartedTwoScreen(),
      bindings: [
        GetStartedTwoBinding(),
      ],
    ),
    GetPage(
      name: getStartedThreeScreen,
      page: () => GetStartedThreeScreen(),
      bindings: [
        GetStartedThreeBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),

    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: privateChatScreen,
      page: () => PrivateChatScreen(),
      bindings: [
        PrivateChatBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => GetStartedOneScreen(),
      bindings: [
        GetStartedOneBinding(),
      ],
    )
  ];
}
