import 'package:bloc/bloc.dart';
import 'package:bookly_application/features/home/data/repos/home_repos.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepos) : super(SimilarBookInitial());

  final HomeRepos homeRepos;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBookLoading());
    var result = await homeRepos.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBookFailure(failure.errorMessage));
      },
      (books) {
        emit(SimilarBookSuccess(books));
      },
    );
  }
}
