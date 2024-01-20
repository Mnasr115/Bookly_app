// بحدد من خلالها اللي هيتم عندي ف ال  feature
import 'package:bookly_application/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model.dart';

abstract class HomeRepos {
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
