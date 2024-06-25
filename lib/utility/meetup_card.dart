import 'package:flutter/material.dart';
import 'package:promiloapp/modules/description/description_page.dart';
import 'package:promiloapp/utility/constant.dart';

class MeetupCard extends StatelessWidget {
  final Color? color;
  final double height;
  final double width;
  final dynamic row;
  final dynamic columan;
  final VoidCallback? onTap;
  final Widget child;

  const MeetupCard({
    super.key,
    this.color,
    required this.height,
    required this.width,
    this.row,
    this.columan,
    this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // RouteManagement.goToDescription();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DescriptionPage()));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
            width: width,
            height: height,
            decoration: outlineBorder,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15), child: child)),
      ),
    );
  }
}
