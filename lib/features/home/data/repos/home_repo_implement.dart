import 'package:bookly_application/core/Api_Service/api_service.dart';
import 'package:bookly_application/core/errors/failures.dart';
import 'package:bookly_application/features/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/book_model.dart';


class HomeRepoImplement extends HomeRepos {
  ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science');
      List<BookModel> bookList = [];
      for (var item in data['items']) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServiceFailure.fromDioException(e),
        );
      }
      return left(
        ServiceFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming',
      );

      List<BookModel> bookList = [];
      for (var item in data['items']) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServiceFailure.fromDioException(
            e,
          ),
        );
      }
      return left(
        ServiceFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:computer science');
      List<BookModel> bookList = [];
      for (var item in data['items']) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServiceFailure.fromDioException(e),
        );
      }
      return left(
        ServiceFailure(
          e.toString(),
        ),
      );
    }
  }
}