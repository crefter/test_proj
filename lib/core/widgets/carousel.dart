import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
    required this.width,
    required this.images,
  }) : super(key: key);

  final double width;
  final List<String> images;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late final InfiniteScrollController _infiniteScrollController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _infiniteScrollController = InfiniteScrollController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9146,
      height: size.height * 0.317,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: InfiniteCarousel.builder(
              controller: _infiniteScrollController,
              loop: false,
              itemCount: widget.images.length,
              itemExtent: widget.width,
              center: false,
              onIndexChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, itemIndex, _) {
                return Image.network(
                  widget.images[itemIndex],
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) => const Center(
                    child: Text(
                      'Image can`t be loaded',
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 8,
            left: size.width / 2 - size.width * 0.2 / 2 - 10,
            child: SizedBox(
              width: size.width * 0.2,
              height: size.height * 0.02,
              child: DecoratedBox(
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...List<Widget>.generate(
                      widget.images.length,
                      (index) => Container(
                        width: 7,
                        height: 7,
                        decoration: ShapeDecoration(
                          color: currentIndex == index
                              ? Colors.black
                              : Colors.black.withOpacity(0.170),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
