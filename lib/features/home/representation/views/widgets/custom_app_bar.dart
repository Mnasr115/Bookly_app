import 'package:bookly_application/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 18,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouters.kBookSearchView);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
          ),
        ),
      ],
    );
  }
}
