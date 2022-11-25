import 'package:booking_app/features/discover/presentation/widgets/trips_other_matches.dart';
import 'package:booking_app/features/discover/presentation/widgets/trips_your_roomies.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TripsYourRoomies(),
        const TripsOtherMatches(),
        16.0.height,
      ],
    );
  }
}
