import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CarouselPageWidget extends StatefulWidget {
  const CarouselPageWidget({Key? key}) : super(key: key);

  @override
  _CarouselPageWidgetState createState() => _CarouselPageWidgetState();
}

class _CarouselPageWidgetState extends State<CarouselPageWidget> {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            GFCarousel(
              hasPagination: true,
              enableInfiniteScroll: true,
              aspectRatio: 1.5,
              pagerSize: 10.0,
              autoPlayCurve: Curves.decelerate,
              reverse: true,
              height: 300.0,
              activeIndicator: Colors.black,
              enlargeMainPage: true,
              passiveIndicator: Colors.white,
              items: imageList.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child:
                          Image.network(url, fit: BoxFit.cover, width: 1000.0),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),
            const SizedBox(height: 10),
            GFItemsCarousel(
              rowCount: 3,
              children: imageList.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child:
                          Image.network(url, fit: BoxFit.cover, width: 1000.0),
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      )),
    );
  }
}
