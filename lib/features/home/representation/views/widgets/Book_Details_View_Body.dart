
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),

          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
           Opacity(
             opacity: .7,
             child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,


              ),
                       ),
           ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center,),

        ],
      ),
    );
  }
}




