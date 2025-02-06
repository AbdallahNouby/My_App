import 'package:carousel_slider/carousel_slider.dart';
import 'package:course/Movie_Details/DetailsMovie.dart';
import 'package:flutter/material.dart';

class DescriptionMovie extends StatelessWidget {
  List images = [
    'Thor Love And Thunder',
    'Dune',
    'Avatar 2',
    'Black Adam',
    'Black Panther 2',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                height: 500,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(seconds: 3),
                viewportFraction: 0.65),
            items: [
              for (int i = 0; i < images.length; i++)
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsMovie(images[i])));
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/images/${images[i]}.jpg",
                            height: 300,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Movie 1",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              "Action Movie",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "7.5",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          images[i],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ])
      ],
    );
  }
}
