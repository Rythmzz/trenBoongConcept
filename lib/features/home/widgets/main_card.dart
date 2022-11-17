import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/bloc/main_card/main_card_bloc.dart';
import '../../../domain/bloc/main_card/main_card_state.dart';

class MainCard extends StatefulWidget {
  final String urlImage;
  const MainCard({super.key, required this.urlImage});

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
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
     
    return Container(child: _buildFlipAnimation(widget.urlImage));
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

  Widget _buildFlipAnimation(String url) {
    return GestureDetector(
      onTap: _switchCard,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 800),
        transitionBuilder: __transitionBuilder,
        layoutBuilder: (widget, list) => Stack(children: [widget!, ...list]),
        child: _showFrontSide! ? _buildRear() : _buildFront(url),
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

  Widget _buildFront(String url) {
    return __buildLayout(
        key: ValueKey(true),
        backgroundColor: Colors.blue,
        faceName: "Front",
        child: Container(
            height: 450,
            width: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(url),
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
