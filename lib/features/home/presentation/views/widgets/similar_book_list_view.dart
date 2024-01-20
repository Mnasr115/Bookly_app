import 'package:bookly_application/core/widgets/custom_error.dart';
import 'package:bookly_application/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_application/features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess){
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomBookImage(
                    imageUrl: 'https://images.app.goo.gl/8XsBPPYsKXESXS638',
                  ),
                );
              },
            ),
          );
        }
        else if(state is SimilarBookFailure){
          return CustomErrorMessage(errorMessage: state.errorMessage);
        }
        else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
