import 'package:bank_templates/presentation/splash_screen/splash_screen.dart';
import 'package:bank_templates/presentation/splash_screen/binding/splash_binding.dart';
import 'package:bank_templates/presentation/get_started_screen/get_started_screen.dart';
import 'package:bank_templates/presentation/get_started_screen/binding/get_started_binding.dart';
import 'package:bank_templates/presentation/login_screen/login_screen.dart';
import 'package:bank_templates/presentation/login_screen/binding/login_binding.dart';
import 'package:bank_templates/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:bank_templates/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:bank_templates/presentation/otp_screen/otp_screen.dart';
import 'package:bank_templates/presentation/otp_screen/binding/otp_binding.dart';
import 'package:bank_templates/presentation/new_password_screen/new_password_screen.dart';
import 'package:bank_templates/presentation/new_password_screen/binding/new_password_binding.dart';
import 'package:bank_templates/presentation/registers_screen/registers_screen.dart';
import 'package:bank_templates/presentation/registers_screen/binding/registers_binding.dart';
import 'package:bank_templates/presentation/home_screen/home_screen.dart';
import 'package:bank_templates/presentation/home_screen/binding/home_binding.dart';
import 'package:bank_templates/presentation/transactions_tab_container_screen/transactions_tab_container_screen.dart';
import 'package:bank_templates/presentation/transactions_tab_container_screen/binding/transactions_tab_container_binding.dart';
import 'package:bank_templates/presentation/accounts_screen/accounts_screen.dart';
import 'package:bank_templates/presentation/accounts_screen/binding/accounts_binding.dart';
import 'package:bank_templates/presentation/investments_screen/investments_screen.dart';
import 'package:bank_templates/presentation/investments_screen/binding/investments_binding.dart';
import 'package:bank_templates/presentation/credit_cards_screen/credit_cards_screen.dart';
import 'package:bank_templates/presentation/credit_cards_screen/binding/credit_cards_binding.dart';
import 'package:bank_templates/presentation/loans_screen/loans_screen.dart';
import 'package:bank_templates/presentation/loans_screen/binding/loans_binding.dart';
import 'package:bank_templates/presentation/services_screen/services_screen.dart';
import 'package:bank_templates/presentation/services_screen/binding/services_binding.dart';
import 'package:bank_templates/presentation/setting_preference_tab_container_screen/setting_preference_tab_container_screen.dart';
import 'package:bank_templates/presentation/setting_preference_tab_container_screen/binding/setting_preference_tab_container_binding.dart';
import 'package:bank_templates/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:bank_templates/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String getStartedScreen = '/get_started_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpScreen = '/otp_screen';

  static const String newPasswordScreen = '/new_password_screen';

  static const String registersScreen = '/registers_screen';

  static const String homeScreen = '/home_screen';

  static const String transactionsPage = '/transactions_page';

  static const String transactionsTabContainerScreen =
      '/transactions_tab_container_screen';

  static const String accountsScreen = '/accounts_screen';

  static const String investmentsScreen = '/investments_screen';

  static const String creditCardsScreen = '/credit_cards_screen';

  static const String loansScreen = '/loans_screen';

  static const String servicesScreen = '/services_screen';

  static const String settingEditProfilePage = '/setting_edit_profile_page';

  static const String settingPreferencePage = '/setting_preference_page';

  static const String settingPreferenceTabContainerScreen =
      '/setting_preference_tab_container_screen';

  static const String settingSecurityPage = '/setting_security_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: getStartedScreen,
      page: () => GetStartedScreen(),
      bindings: [
        GetStartedBinding(),
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
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: newPasswordScreen,
      page: () => NewPasswordScreen(),
      bindings: [
        NewPasswordBinding(),
      ],
    ),
    GetPage(
      name: registersScreen,
      page: () => RegistersScreen(),
      bindings: [
        RegistersBinding(),
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
      name: transactionsTabContainerScreen,
      page: () => TransactionsTabContainerScreen(),
      bindings: [
        TransactionsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: accountsScreen,
      page: () => AccountsScreen(),
      bindings: [
        AccountsBinding(),
      ],
    ),
    GetPage(
      name: investmentsScreen,
      page: () => InvestmentsScreen(),
      bindings: [
        InvestmentsBinding(),
      ],
    ),
    GetPage(
      name: creditCardsScreen,
      page: () => CreditCardsScreen(),
      bindings: [
        CreditCardsBinding(),
      ],
    ),
    GetPage(
      name: loansScreen,
      page: () => LoansScreen(),
      bindings: [
        LoansBinding(),
      ],
    ),
    GetPage(
      name: servicesScreen,
      page: () => ServicesScreen(),
      bindings: [
        ServicesBinding(),
      ],
    ),
    GetPage(
      name: settingPreferenceTabContainerScreen,
      page: () => SettingPreferenceTabContainerScreen(),
      bindings: [
        SettingPreferenceTabContainerBinding(),
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
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
