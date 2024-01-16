import 'package:bookly_application/features/home/representation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

import 'book_button_actions.dart';
import 'books_details_section.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Column(
              children: [

                CustomBookDetailsAppBar(),
                BookDetailsSection(),

                BookButtonActions(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),

                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}











