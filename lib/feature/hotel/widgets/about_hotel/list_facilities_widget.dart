import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';

class ListFacilitiesWidget extends StatelessWidget {
  ListFacilitiesWidget({
    super.key,
  });

  final List<String> iconsPathLists = [
    'assets/pict/emoji-happy.png',
    'assets/pict/tick-square.png',
    'assets/pict/close-square.png',
  ];

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: ShapeDecoration(
        color: const Color(0xFFFBFBFC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(15.0),
        itemBuilder: (_, index) {
          return Material(
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Row(
                children: [
                  Image.asset(iconsPathLists[index]),
                  const SizedBox(width: 12),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Удобства",
                      style: Theme.of(context).textTheme.facilities,
                    ),
                    Text(
                      'Самое необходимое',
                      style: Theme.of(context).textTheme.facilitiesDescription,
                    ),
                  ]),
                  const Spacer(),
                  const Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, index) {
          return SizedBox(
            height: 10,
            child: Center(
              child: Container(
                height: 1,
                margin: const EdgeInsetsDirectional.only(
                  start: 36,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0x26828796),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
