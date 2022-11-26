import 'package:booking_app/features/discover/presentation/widgets/favorite_header.dart';
import 'package:booking_app/features/discover/presentation/widgets/favorite_list.dart';
import 'package:booking_app/features/discover/presentation/widgets/favorite_title.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        FavoriteTitle(),
        FavoriteHeader(),
        FavoriteList(),
      ],
    );
  }
}
