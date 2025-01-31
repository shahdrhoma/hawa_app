import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedNextButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String? text; // Optional text inside the button
  final IconData? icon; // Optional icon inside the button
  final double progress; // Progress percentage (0.0 to 1.0)

  const AnimatedNextButton({
    Key? key,
    required this.onPressed,
    this.text,
    this.icon,
    required this.progress,
  }) : super(key: key);

  @override
  _AnimatedNextButtonState createState() => _AnimatedNextButtonState();
}

class _AnimatedNextButtonState extends State<AnimatedNextButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: false);

    _progressAnimation =
        Tween<double>(begin: 0.0, end: widget.progress).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return CircularProgressIndicator(
                  value: _progressAnimation.value,
                  strokeWidth: 6,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  backgroundColor: Colors.blue.withOpacity(0.3),
                );
              },
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: widget.icon != null
                  ? Icon(widget.icon, color: Colors.white, size: 30)
                  : Text(
                      widget.text ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        ],
      ).animate().scaleXY(duration: 500.ms, begin: 0.9, end: 1.0),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedNextButton(
              onPressed: () {},
              icon: Icons.arrow_back,
              progress: 0.3, // 30% progress
            ),
            const SizedBox(height: 20),
            AnimatedNextButton(
              onPressed: () {},
              icon: Icons.arrow_forward,
              progress: 0.6, // 60% progress
            ),
            const SizedBox(height: 20),
            AnimatedNextButton(
              onPressed: () {},
              text: "إبدأ",
              progress: 1.0, // 100% progress
            ),
          ],
        ),
      ),
    );
  }
}
