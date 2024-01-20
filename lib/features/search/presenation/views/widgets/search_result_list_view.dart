import 'package:bookly_application/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return  const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            //child: BookListViewItem(bookModel: '',),
          child: Text('data'),
          );
        });
  }
}
