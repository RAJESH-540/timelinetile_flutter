import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/color.dart';

class SingleCard extends StatefulWidget {
  final String? team1;
  final String? team2;
  final String? teamImg1;
  final String? teamImg2;

  const SingleCard(
      {required this.team1,
      required this.team2,
      Key? key,
      required this.teamImg1,
      required this.teamImg2})
      : super(key: key);

  @override
  State<SingleCard> createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        color: ColorConstants.colorLightBlackBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: SizedBox(
          height: 65.0,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        widget.team1.toString(),
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Image.asset(
                        // "assets/images/team_forest.png",
                        widget.teamImg1.toString(),
                        height: 30,
                        width: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                        width: 50,
                        height: 23,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: ColorConstants.colorGreenText),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "90+4",
                          style: TextStyle(color: ColorConstants.colorGreenText, fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Image.asset(
                        widget.teamImg2.toString(),
                        // "assets/images/team_forest.png",
                        height: 30,
                        width: 30,
                      ),
                      Text(
                        widget.team2.toString(),
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
