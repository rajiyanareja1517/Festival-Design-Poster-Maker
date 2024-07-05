import 'package:festival_poster_maker/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class home_Page extends StatefulWidget {
  const home_Page({super.key});

  @override
  State<home_Page> createState() => _home_PageState();
}

class _home_PageState extends State<home_Page> {
  List<Color> containerColors = [
    Colors.orange.shade500,
    Color(0xff1679AB),
    Colors.green.shade500,
    Colors.grey,
  ];

  int colorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quotes",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('favourite_page');
              },
              child: Icon(
                Icons.favorite_border,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('more_page');
              },
              child: Icon(
                Icons.image_search_rounded,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //color: Colors.amber,
              child: Column(
                children: [
                  ...QuoteData.allQuotesData.map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ...e['categoryName'].map(
                            (Map<String, dynamic> e) {
                              Color color = containerColors[colorIndex];
                              colorIndex =
                                  (colorIndex + 1) % containerColors.length;
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('detail_page', arguments: e);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    "${e['categoryName']}",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
