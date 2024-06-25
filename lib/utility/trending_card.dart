// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:promiloapp/utility/constant.dart';

class TrendingCard extends StatelessWidget {
  const TrendingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      decoration: outlineBorder,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/20/22/43/pen-732372_1280.png",
                        scale: 8),
                  )),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Author"),
                  Text("1,028 Meetups"),
                ],
              )
            ],
          ),
          Divider(),
          Row(
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  Positioned(
                    left: 0,
                    right: -70,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://imgupscaler.com/images/samples/animal-before.webp"),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: -140,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/157757/wedding-dresses-fashion-character-bride-157757.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: -210,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://imgupscaler.com/images/samples/animal-before.webp"),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: -280,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/157757/wedding-dresses-fashion-character-bride-157757.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 11, 98, 169),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Text(
                      "See more",
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
