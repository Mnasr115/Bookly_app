import 'package:bookly_application/core/utils/service_locator.dart';
import 'package:bookly_application/features/home/data/models/book_model.dart';
import 'package:bookly_application/features/home/data/repos/home_repo_implement.dart';
import 'package:bookly_application/features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly_application/features/search/presenation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBookCubit(
            getIt.get<HomeRepoImplement>(),
          ),
          child:  BookDetailsView(bookModel: state.extra as BookModel,),
        ),
      ),
      GoRoute(
        path: kBookSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
