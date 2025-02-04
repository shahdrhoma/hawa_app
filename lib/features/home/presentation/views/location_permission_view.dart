import 'package:flutter/material.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/locatin_card.dart';

class LocationPermissionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Map
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:const AssetImage(
                    "assets/images/Maps.png"), // Replace with your asset
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ),
              ),
            ),
          ),

          // Centered Card UI
          Center(
            child: LocationCard(
              onLocationPressed: () {
                // Placeholder action
              },
            ),
          ),
        ],
      ),
    );
  }
}
