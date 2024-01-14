import 'package:bookly_application/core/utils/styles.dart';
import 'package:bookly_application/features/constant.dart';
import 'package:bookly_application/features/search/presenation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../home/representation/views/widgets/book_list_view_item.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}




