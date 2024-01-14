import 'package:bookly_application/features/home/representation/views/widgets/similar_book_list_view.dart';
import 'package:bookly_application/features/home/representation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'book_button_actions.dart';
import 'book_rating.dart';
import 'books_details_section.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_item.dart';
import 'featured_list_view.dart';

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











