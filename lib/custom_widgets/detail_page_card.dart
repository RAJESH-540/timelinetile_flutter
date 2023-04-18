import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../constants/color.dart';
import 'choice_chip.dart';

class DetailPageCard extends StatefulWidget {
  const DetailPageCard({Key? key}) : super(key: key);

  @override
  State<DetailPageCard> createState() => _DetailPageCardState();
}

class _DetailPageCardState extends State<DetailPageCard> {
  bool isSelected = false;
  List<String> choice = ["Stats", "Summary", "H2H"];

  @override
  Widget build(BuildContext context) {
    return buildHome();
  }

  Widget buildHome() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: ColorConstants.colorBgPurple,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        12,
                      ),
                      bottomLeft: Radius.circular(12)),
                ),
                child: SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  // top: 100,
                  // bottom: -50,
                  left: 100,
                  child: Image.asset(
                    "assets/images/union_b.png",
                    height: 300,
                    width: 300,
                  )),
              Column(
                children: [
                   SizedBox(height: 20,),
                  Title(
                    color: ColorConstants.colorBgPurple,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/Back.png"),
                        const Text(
                          "Premier League",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Image.asset(
                          "assets/images/Share.png",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Card(
                          elevation: 2,
                          color: ColorConstants.colorLightCardGrey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: SizedBox(
                            height: 180,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: const [
                                SizedBox(
                                  height: 20,
                                ),
                                // Text("Stamford Bridge", style: TextStyle(color: Colors.white, fontSize: 14),),
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 15,
                          left: 130,
                          child: Text(
                            "Stamford Bridge",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                        const Positioned(
                          top: 35,
                          left: 160,
                          child: Text(
                            "Week 10",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                        Positioned(
                            top: 50,
                            left: 40,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/Badges1.png",
                                  height: 64,
                                  width: 64,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Chelsea",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                                const Text(
                                  "Home",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                )
                              ],
                            )),
                        Positioned(
                            top: 50,
                            left: 250,
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/badges2.png",
                                  height: 64,
                                  width: 64,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Man Utd",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                                const Text(
                                  "Away",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                )
                              ],
                            )),
                        Positioned(
                            top: 70,
                            left: 150,
                            child: Column(
                              children: const [
                                 Text(
                                  "1 : 1",
                                  style:  TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )
                              ],
                            )),
                        Positioned(
                            top: 120,
                            left: 155,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: ColorConstants.colorGreenText),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                "90+4",
                                style: TextStyle(
                                    color: ColorConstants.colorGreenText),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Row(
                    children: choice
                        .map<Widget>((e) => ChoiceChip(
                              backgroundColor: ColorConstants.colorLightCardGrey,
                               elevation: 4,
                              padding: EdgeInsets.all(4),
                              label: Text(e, style: TextStyle(color: Colors.grey),),
                              selected: isSelected == choice.indexOf(e),
                              selectedColor: Colors.red,
                              onSelected: (value) {
                                setState(() {
                                  isSelected = value;

                                });
                              },
                            ))
                        .toList(),
                  ),
                   TimelineTile(
                     axis: TimelineAxis.vertical,
                     alignment: TimelineAlign.center,
                        endChild: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("90+5", style: TextStyle(color: ColorConstants.colorGreenText),),
                              Text("Lisandro Martinez", style: TextStyle(color: Colors.white),),
                              Text("Yellow Card", style: TextStyle(color: Colors.grey, fontSize: 10),)
                            ],
                          ),
                        ),
                       isFirst: true,
                      indicatorStyle: IndicatorStyle(
                        width: 35,
                         height: 24,
                          // indicator: Image.asset("assets/images/yellow_card.png", ),
                         // indicator: Image.asset("assets/images/yellow_card.png", )

                      ),

                   ),
                   TimelineTile(
                     axis: TimelineAxis.vertical,
                     alignment: TimelineAlign.center,
                        endChild: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("90+5", style: TextStyle(color: ColorConstants.colorGreenText),),
                              Text("Casemiro", style: TextStyle(color: Colors.white),),
                              Text("Goal", style: TextStyle(color: Colors.grey, fontSize: 10),)
                            ],
                          ),
                        ),
                       // isFirst: true,
                      indicatorStyle: IndicatorStyle(
                        width: 35,
                         height: 24,
                         // indicator: Image.asset("assets/images/goal.png", )

                      ),

                   ),
                   TimelineTile(
                     axis: TimelineAxis.vertical,
                     alignment: TimelineAlign.center,
                        startChild: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("90+1", style: TextStyle(color: ColorConstants.colorGreenText),),
                              Text("Jorginho", style: TextStyle(color: Colors.white),),
                              Text("Goal", style: TextStyle(color: Colors.grey, fontSize: 10),)
                            ],
                          ),
                        ),
                       // isFirst: true,
                      indicatorStyle: IndicatorStyle(
                        width: 35,
                         height: 24,


                         // indicator: Image.asset("assets/images/yellow_card.png", )

                      ),

                   ),
                   TimelineTile(
                     axis: TimelineAxis.vertical,
                     alignment: TimelineAlign.center,
                        endChild: Container(
                          child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("90+5", style: TextStyle(color: ColorConstants.colorGreenText),),
                              Text("Lisandro Martinez", style: TextStyle(color: Colors.white),),
                              Text("Yellow Card", style: TextStyle(color: Colors.grey, fontSize: 10),)
                            ],
                          ),
                        ),
                       // isFirst: true,
                      indicatorStyle: IndicatorStyle(
                        width: 35,
                         height: 24,


                         // indicator: Image.asset("assets/images/yellow_card.png", )

                      ),

                   ),




                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
