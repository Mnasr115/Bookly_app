// بحدد من خلالها اللي هيتم عندي ف ال  feature
import 'package:bookly_application/core/errors/failures.dart';
import 'package:bookly_application/features/home/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepos{
  Future<Either<Failure,List<BookModel>>> fetchNewsBooks ();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks ();
}