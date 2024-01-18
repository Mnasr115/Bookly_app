part of 'newset_book_cubit.dart';

@immutable
abstract class NewsetBookState {}

class NewsetBookInitial extends NewsetBookState {}
class NewsetBookLoading extends NewsetBookState {}
class NewsetBookSuccess extends NewsetBookState {
  List<BookModel> books;
  NewsetBookSuccess(this.books);
}
class NewsetBookFailure extends NewsetBookState {
  final String errorMessage;
  NewsetBookFailure(this.errorMessage);
}
