import 'package:flutter/material.dart';
import 'package:hawaa_app/core/utils/styles.dart';
import 'package:go_router/go_router.dart';

class SplashViewBodyModel {
  final String photo;
  final String largeText;
  final String smallText;

  SplashViewBodyModel({
    required this.photo,
    required this.largeText,
    required this.smallText,
  });
}

class SplashViewBody extends StatefulWidget {
  final double progress;
  final SplashViewBodyModel model;
  final String nextRoute;

  const SplashViewBody({
    super.key,
    required this.progress,
    required this.model,
    required this.nextRoute,
  });

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: widget.progress).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant SplashViewBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.progress != widget.progress) {
      _animation = Tween<double>(
              begin: oldWidget.progress, end: widget.progress)
          .animate(
              CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 42,
              height: 23,
              margin: const EdgeInsets.only(top: 61, left: 18),
              child: Text(
                'تخطي',
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Container(
              width: 361,
              height: 201,
              margin: const EdgeInsets.only(left: 16, top: 193),
              child: Image.asset(
                widget.model.photo,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 76),
            Center(
              child: Column(
                children: [
                  Text(
                    widget.model.largeText,
                    style: Styles.textStyle24,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    widget.model.smallText,
                    style: Styles.textStyle14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  GestureDetector(
                    onTap: () => GoRouter.of(context).go(widget.nextRoute),
                    child: AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 86,
                              height: 86,
                              child: CircularProgressIndicator(
                                value: _animation.value,
                                strokeWidth: 6,
                                backgroundColor: Colors.grey[300],
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    Colors.white),
                              ),
                            ),
                            ClipOval(
                              child: Container(
                                width: 86,
                                height: 86,
                                color: Colors.blue[200],
                                child: Center(
                                  child: widget.progress < 1.0
                                      ? Icon(Icons.arrow_forward,
                                          size: 40, color: Colors.white)
                                      : Text(
                                          'ابدأ',
                                          style: Styles.textStyle20
                                              .copyWith(color: Colors.white),
                                        ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
