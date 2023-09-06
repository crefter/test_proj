import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/button_theme_ext.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';

class MoreAboutTheRoomWidget extends StatelessWidget {
  const MoreAboutTheRoomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.512,
      height: MediaQuery.of(context).size.height * 0.0357,
      child: ElevatedButton(
        style: Theme.of(context).buttonTheme.moreButton,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Подробнее о номере',
              style: Theme.of(context).textTheme.moreAboutTheRoom,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: Color(0xFF0D72FF),
            ),
          ],
        ),
      ),
    );
  }
}