import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool? _showFrontSide;
  bool? _flipXAxis;

  @override
  void initState() {
    super.initState();
    _showFrontSide = true;
    _flipXAxis = true;
    WidgetsBinding.instance.addPostFrameCallback((_) => _switchCard());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Color.fromARGB(99, 153, 137, 106).withOpacity(1),
                BlendMode.color),
            image: AssetImage("assets/image/main-background.png"),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Center(child: _buildFlipAnimation()));
  }

  void _changeRotationAxis() {
    setState(() {
      _flipXAxis = !_flipXAxis!;
    });
  }

  void _switchCard() {
    setState(() {
      _showFrontSide = !_showFrontSide!;
    });
  }

  Widget _buildFlipAnimation() {
    return GestureDetector(
      onTap: _switchCard,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 800),
        transitionBuilder: __transitionBuilder,
        layoutBuilder: (widget, list) => Stack(children: [widget!, ...list]),
        child: _showFrontSide! ? _buildRear() : _buildFront(),
        switchInCurve: Curves.easeInBack,
        switchOutCurve: Curves.easeInBack.flipped,
      ),
    );
  }

  Widget __transitionBuilder(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(_showFrontSide) != widget!.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value =
            isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: _flipXAxis!
              ? (Matrix4.rotationY(value)..setEntry(3, 0, tilt))
              : (Matrix4.rotationX(value)..setEntry(3, 1, tilt)),
          child: widget,
          alignment: Alignment.center,
        );
      },
    );
  }

  Widget _buildFront() {
    return __buildLayout(
        key: ValueKey(true),
        backgroundColor: Colors.blue,
        faceName: "Front",
        child: Container(
            height: 450,
            width: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/charecter_card/luffy-1.png"),
                fit: BoxFit.fill,
              ),
            )));
  }

  Widget _buildRear() {
    return __buildLayout(
        key: ValueKey(false),
        backgroundColor: Colors.blue.shade700,
        faceName: "Rear",
        child: Container(
            height: 450,
            width: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/charecter_card/back-side.png"),
                fit: BoxFit.fill,
              ),
            )));
  }

  Widget __buildLayout(
      {Key? key, Widget? child, String? faceName, Color? backgroundColor}) {
    return Container(
      key: key,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(5.0)),
      child: Center(
        child: child,
      ),
    );
  }
}
