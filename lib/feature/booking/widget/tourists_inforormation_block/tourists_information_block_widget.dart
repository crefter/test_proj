import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_proj/feature/booking/bloc/tourists_bloc.dart';
import 'package:test_proj/feature/booking/widget/tourists_inforormation_block/add_new_tourist_widget.dart';
import 'package:test_proj/feature/booking/widget/tourists_inforormation_block/my_expandable_widget.dart';
import 'package:test_proj/feature/booking/widget/tourists_inforormation_block/tourist_in_order_widget.dart';

const List<String> touristOrder = [
  "Первый турист",
  "Второй турист",
  "Третий турист",
  "Четвертый турист",
  "Пятый турист",
  "Шестой турист",
  "Седьмой турист",
  "Восьмой турист",
  "Девятый турист",
  "Десятый турист",
];

class TouristsInformationBlockWidget extends StatefulWidget {
  const TouristsInformationBlockWidget({Key? key}) : super(key: key);

  @override
  State<TouristsInformationBlockWidget> createState() =>
      _TouristsInformationBlockWidgetState();
}

class _TouristsInformationBlockWidgetState
    extends State<TouristsInformationBlockWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TouristsBloc, TouristsState>(
      builder: (context, state) {
        return switch (state) {
          TouristsList(:final tourists) => ExpandableTheme(
              data: const ExpandableThemeData(
                iconSize: 32.0,
                iconColor: Colors.blue,
                iconPadding: EdgeInsets.only(top: 16.0),
              ),
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: tourists.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ExpandableNotifier(
                            child: TouristInOrderWidget(
                              order: touristOrder[index],
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      );
                    },
                  ),
                  const AddNewTouristWidget(),
                  const SizedBox(height: 8),
                ],
              ),
            ),
        };
      },
    );
  }
}
