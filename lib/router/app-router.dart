import 'package:auto_route/auto_route.dart';
import 'package:flutter_auto_route/views/dashboard.dart';
import 'package:flutter_auto_route/views/home.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/', page: HomeRoute.page),
    AutoRoute(path: '/dashboard', page: DashboardRoute.page),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}

class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  //  static const PageInfo<void> page = PageInfo<void>(name);
  // static const PageInfo<StoryRouteArgs> page = PageInfo<S>(name);
  static PageInfo page = PageInfo(
    name,
    builder: (data) => HomePage(title: 'Home'),
  );
}

class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  //  static const PageInfo<void> page = PageInfo<void>(name);
  // static const PageInfo<StoryRouteArgs> page = PageInfo<S>(name);
  static PageInfo page = PageInfo(
    name,
    builder: (data) => DashboardPage(title: 'Dashboard'),
  );
}
