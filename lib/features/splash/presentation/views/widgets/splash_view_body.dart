import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('تخطي',
            
                textAlign: TextAlign.start,
                 style: TextStyle(color: Colors.black , 
                 ),)
          ],
        ),
      ),
    );
  }
}
