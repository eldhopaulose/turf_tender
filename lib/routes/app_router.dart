import 'package:auto_route/auto_route.dart';
import 'package:turf_tender/presentation/Welcome_page/welcome_page.dart';
import 'package:turf_tender/presentation/owner_register_page/owner_register.dart';
import 'package:turf_tender/presentation/user_register_page/user_register.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: WelcomeRoute.page,
        ),
        AutoRoute(
          path: '/userregister',
          page: UserRegisterRoute.page,
        ),
        AutoRoute(
          path: '/ownerregister',
          page: OwnerRegisterRoute.page,
        ),
      ];
}
