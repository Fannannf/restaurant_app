import 'package:go_router/go_router.dart';
import 'package:restauran_app/features/main/data/data_restaurant.dart';
import 'package:restauran_app/features/main/screens/homepage.dart';
import 'package:restauran_app/features/main/screens/profilepage.dart';
import 'package:restauran_app/features/main/screens/rootpage.dart';

import '../features/main/screens/detailpage.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const RootPage(),
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          builder: (context, state) {
            return HomePage();
          },
        ),
        GoRoute(
          path: 'detail',
          builder: (context, state) {
            final restaurant = state.extra as RestaurantElement;
            return DetailPage(restaurantElement: restaurant);
          },
        ),
        GoRoute(
          path: 'profile',
          builder: (context, state) {
            return ProfilePage();
          },
        ),
      ],
    ),
  ],
);
