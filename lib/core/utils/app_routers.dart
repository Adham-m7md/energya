import 'package:Energya/presentation/production/screen/Follow_up_page.dart';
import 'package:Energya/presentation/production/screen/insert%20screens/assemplay_insert_page.dart';
import 'package:Energya/presentation/production/screen/insert%20screens/folllow%20up/dispatch_insert_page.dart';
import 'package:Energya/presentation/production/screen/insert%20screens/folllow%20up/glavonization_insert_page.dart';
import 'package:Energya/presentation/production/screen/insert%20screens/folllow%20up/painting_insert_page.dart';
import 'package:Energya/presentation/production/screen/insert%20screens/prepraction_insert_page.dart';
import 'package:Energya/presentation/production/screen/insert%20screens/visual_insert_page.dart';
import 'package:Energya/presentation/production/screen/insert%20screens/welding_insrt_page.dart';
import 'package:Energya/presentation/production/screen/production_grid_view_page.dart';
import 'package:go_router/go_router.dart';
import 'package:Energya/presentation/home/view/home_view.dart';

import 'package:Energya/presentation/sign%20in/sign_in.dart';
import 'package:Energya/presentation/splash/splash_view.dart';

import '../../presentation/register/Sign_up-view.dart';

abstract class AppRouters {
  static String kSplashViewpage = '/';

  static String kHomeView = '/homeView';

  static String kSignInPage = '/SignInView';

  static String kregisterPage = '/signUpView';

  static String kProductionGridViewPage = '/ProductionGridViewPage';

  static String kFollowUpPage = '/FollowUpPage';

  static String kPrepractionInsertPage = '/PrepractionInsertPage';

  static String kAssemplayInsertPage = '/AssemplayInsertPage';

  static String kWeldingInsertPage = '/WeldingInsertPage';

  static String kvisualInsertPage = '/visualInsertPage';

  static String kGlavonizationInsertPage = '/GlavonizationInsertPage';

  static String kDispatchInsertPage = '/DispatchInsertPage';

  static String kPaintingInsertPage = '/PaintingInsertPage';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSignInPage,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kregisterPage,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kProductionGridViewPage,
        builder: (context, state) => const ProductionGridViewPage(),
      ),
      GoRoute(
        path: kFollowUpPage,
        builder: (context, state) => const FollowUpPage(),
      ),
      GoRoute(
        path: kPrepractionInsertPage,
        builder: (context, state) => const PrepractionInsertPage(),
      ),
      GoRoute(
        path: kAssemplayInsertPage,
        builder: (context, state) => const AssemplayInsertPage(),
      ),
      GoRoute(
        path: kWeldingInsertPage,
        builder: (context, state) => const WeldingInsrtPage(),
      ),
      GoRoute(
        path: kvisualInsertPage,
        builder: (context, state) => const VisualInsertPage(),
      ),
      GoRoute(
        path: kGlavonizationInsertPage,
        builder: (context, state) => const GlavonizationInsertPage(),
      ),
      GoRoute(
        path: kDispatchInsertPage,
        builder: (context, state) => const DispatchInsertPage(),
      ),
      GoRoute(
        path: kPaintingInsertPage,
        builder: (context, state) => const PaintingInsertPage(),
      ),
    ],
  );
}
