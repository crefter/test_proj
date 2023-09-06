import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ScaffoldWithAppbar extends StatelessWidget {
  const ScaffoldWithAppbar({
    Key? key,
    required this.body,
    required this.appBarText,
    this.color,
    this.hasAppBarIcon,
  }) : super(key: key);

  final Widget body;
  final String appBarText;
  final Color? color;
  final bool? hasAppBarIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarText,
        ),
        centerTitle: true,
        leading: hasAppBarIcon ?? false ? IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 32,
          ),
          onPressed: () async {
            await context.popRoute();
          },
        ) : null,
      ),
      body: ColoredBox(
        color: color == null ? const Color(0xFFF6F6F9) : color!,
        child: body,
      ),
    );
  }
}
