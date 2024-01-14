import 'package:flutter/material.dart';

import 'best_seller_listview_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context,index){
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10.0),
            child: BestSellerListViewItem(),
          );
        });
  }
}