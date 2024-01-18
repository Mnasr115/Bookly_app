import 'package:bookly_application/core/Api_Service/api_service.dart';
import 'package:bookly_application/core/utils/service_locator.dart';
import 'package:bookly_application/features/home/data/repos/home_repo_implement.dart';
import 'package:bookly_application/features/home/representation/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly_application/features/home/representation/manager/newest_books_cubit/newset_book_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/app_router.dart';
import 'features/constant.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplement>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewsetBookCubit(
            getIt.get<HomeRepoImplement>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
