import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'container_image_widget.dart';

class CarouselSlider2 extends StatelessWidget {
  const CarouselSlider2({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        //1st Image of Slider

        ContainerImageWidget(
          image: 'assets/images/islam/islam1.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/islam2.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/islam3.png',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/islam4.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/islam5.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/islam6.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/islam7.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/islam8.jpg',
        ),
      ],

      // Slider Container properties
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.55,
        scrollDirection: Axis.horizontal,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        // autoPlayInterval: const Duration(seconds: 1),
        autoPlayAnimationDuration: const Duration(milliseconds: 3000),
        viewportFraction: 0.8,
      ),
    );
  }
}
