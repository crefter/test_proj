import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.isRounded,
    required this.child,
    required this.hasBorder,
  }) : super(key: key);

  final Widget child;
  final bool isRounded;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: hasBorder
              ? const BorderSide(
                  width: 0.50,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0xFFE8E9EC),
                )
              : BorderSide.none,
          borderRadius: isRounded
              ? const BorderRadius.only(
                  bottomLeft: const Radius.circular(12),
                  bottomRight: const Radius.circular(12),
                  topLeft: const Radius.circular(12),
                  topRight: const Radius.circular(12),
                )
              : BorderRadius.zero,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
        ),
        child: child,
      ),
    );
  }
}
