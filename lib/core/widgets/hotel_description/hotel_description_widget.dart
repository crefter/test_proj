import 'package:flutter/material.dart';
import 'package:test_proj/core/widgets/hotel_description/address_widget.dart';
import 'package:test_proj/core/widgets/hotel_description/name_widget.dart';
import 'package:test_proj/core/widgets/hotel_description/rating_widget.dart';

class HotelDescriptionWidget extends StatelessWidget {
  const HotelDescriptionWidget({
    super.key,
    required this.rating,
    required this.ratingName,
    required this.address,
    required this.name,
  });

  final int rating;
  final String ratingName;
  final String address;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.397,
            height: 29,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: ShapeDecoration(
              color: const Color(0x33FFC600),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  5,
                ),
              ),
            ),
            child: RatingWidget(
              rating: rating,
              ratingName: ratingName,
            ),
          ),
          const SizedBox(height: 8),
          NameWidget(
            name: name,
          ),
          const SizedBox(height: 8),
          AddressWidget(
            address: address,
          ),
        ],
      ),
    );
  }
}
