import 'package:flutter/material.dart';
import 'package:grassport/src/core/theme/theme.dart';

class Popover extends StatelessWidget {
  const Popover({
    this.child,
    super.key,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: green,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHandle(context),
          child ?? Container(),
        ],
      ),
    );
  }

  Widget _buildHandle(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.25,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        child: Container(
          height: 5.0,
          decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.all(
              Radius.circular(2.5),
            ),
          ),
        ),
      ),
    );
  }
}
