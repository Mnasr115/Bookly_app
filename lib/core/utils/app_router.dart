import 'package:bookly_application/features/search/presenation/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/representation/views/book_details_view.dart';
import '../../features/home/representation/views/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  // GoRouter configuration
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kBookSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kBookSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
