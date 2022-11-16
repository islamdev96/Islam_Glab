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
          image: 'assets/images/islam/10.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/9.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/6.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/1.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/3.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/7.jpg',
        ),
        ContainerImageWidget(
          image: 'assets/images/islam/3.jpg',
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.4,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 3000),
        viewportFraction: 0.8,
      ),
    );
  }
}
