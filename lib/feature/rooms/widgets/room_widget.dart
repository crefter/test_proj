import 'package:flutter/material.dart';
import 'package:test_proj/core/extensions/text_theme_ext.dart';
import 'package:test_proj/core/widgets/card_widget.dart';
import 'package:test_proj/core/widgets/carousel.dart';
import 'package:test_proj/core/widgets/peculiarities_widget.dart';
import 'package:test_proj/feature/rooms/domain/entity/room.dart';
import 'package:test_proj/feature/rooms/widgets/more_about_the_room_widget.dart';
import 'package:test_proj/feature/rooms/widgets/room_price_widget.dart';
import 'package:test_proj/feature/rooms/widgets/select_button_widget.dart';

class RoomWidget extends StatelessWidget {
  const RoomWidget({
    Key? key,
    required this.room,
  }) : super(key: key);

  final Room room;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      isRounded: true,
      hasBorder: false,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Carousel(
              width: MediaQuery.of(context).size.width * 0.9146,
              images: room.imageUrls,
            ),
            const SizedBox(height: 8),
            Text(
              room.name,
              style: Theme.of(context).textTheme.header,
            ),
            const SizedBox(height: 8),
            PeculiaritiesWidget(peculiarities: room.peculiarities),
            const SizedBox(height: 8),
            const MoreAboutTheRoomWidget(),
            const SizedBox(height: 16),
            RoomPriceWidget(room: room),
            const SizedBox(height: 16),
            const SelectButtonWidget(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
