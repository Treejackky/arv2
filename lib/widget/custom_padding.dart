import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  final Widget child;

  const PaddingWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double padding = MediaQuery.of(context).size.shortestSide * 0.1;

    return Padding(
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }
}
