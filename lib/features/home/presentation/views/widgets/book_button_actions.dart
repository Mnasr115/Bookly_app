import 'package:bookly_application/core/functions/launcher_url.dart';
import 'package:bookly_application/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/widgets/custom_button.dart';

class BookButtonActions extends StatelessWidget {
  const BookButtonActions({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: '19.9 €',
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
              child: CustomButton(
            text: getText(bookModel),
            fontSize: 16,
            onPressed: () {
              launchCustomUrl(
                context,
                bookModel.volumeInfo.previewLink,
              );
            },
            textColor: Colors.white,
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
