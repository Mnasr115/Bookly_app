import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookButtonActions extends StatelessWidget {
  const BookButtonActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(child: CustomButton(
            text: '19.9 €',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),),
          Expanded(child: CustomButton(
            text: 'Free Preview',
            fontSize: 16,
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }
}