// ignore_for_file: file_names

import 'package:bookly_application/core/widgets/custom_error.dart';
import 'package:bookly_application/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_application/features/home/presentation/manager/newest_books_cubit/newset_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_list_view_item.dart';

class NewsBooksListView extends StatelessWidget {
  const NewsBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
      builder: (context, state) {
        if (state is NewsetBookSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 10.0),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewsetBookFailure) {
          return CustomErrorMessage(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
