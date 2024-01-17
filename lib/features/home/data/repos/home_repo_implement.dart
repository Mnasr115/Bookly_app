import 'package:bookly_application/core/errors/failures.dart';
import 'package:bookly_application/features/home/data/models/BookModel.dart';
import 'package:bookly_application/features/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement extends HomeRepos {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}