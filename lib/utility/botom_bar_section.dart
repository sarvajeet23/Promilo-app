import 'package:flutter/material.dart';
import 'package:promiloapp/modules/description/description_page.dart';
import 'package:promiloapp/utility/bottom_buttom.dart';

class BottomBarSection extends StatelessWidget {
  const BottomBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBar(
            icon: Icon(Icons.home),
            lable: "Home",
            onpress: () {},
          ),
          BottomBar(
            icon: Icon(Icons.grid_view),
            lable: "Prolet",
            onpress: () {},
          ),
          BottomBar(
            icon: Icon(Icons.handshake, color: Colors.amber),
            style: TextStyle(color: Colors.amber),
            lable: "Meetup",
            onpress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DescriptionPage()));
            },
          ),
          BottomBar(
            icon: Icon(Icons.explore_outlined),
            lable: "Explore",
            onpress: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => MyExplore()));
            },
          ),
          BottomBar(
            icon: Icon(
              Icons.person_2_outlined,
              // size: 30,
            ),
            lable: "Help",
            onpress: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => MyAccount()));
            },
          ),
        ],
      ),
    );
  }
}
