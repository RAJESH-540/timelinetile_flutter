import 'package:flutter/material.dart';
import 'package:task/constants/color.dart';
import 'package:task/custom_widgets/choice_chip.dart';
import 'package:task/custom_widgets/custom_card.dart';
import 'package:task/custom_widgets/days_custom_text.dart';
import 'package:task/custom_widgets/single_card.dart';

import '../custom_widgets/bottombar.dart';

class ScoreBoard extends StatefulWidget {
  const ScoreBoard({Key? key}) : super(key: key);

  @override
  State<ScoreBoard> createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.colorBackgroundBlack,
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/Menu.png",
          height: 24,
          width: 24,
        ),
        backgroundColor: ColorConstants.colorBackgroundBlack,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "ScoreBoard",
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Image.asset(
                "assets/images/Notification.png",
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/search.png",
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 10,
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/calendar.png",
                  height: 24,
                  width: 24,
                  color: Colors.white,
                ),
                const Text(
                  "Oct 17, 2022",
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
             SizedBox(height: 15,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: const  [
                 Days(daysName: "Mon", date: "16"),
                 Days(daysName: "Tue", date: "17"),
                 Days(daysName: "Wed", date: "18"),
                 Days(daysName: "Thur", date: "19"),
                 Days(daysName: "Fri", date: "20"),
                 Days(daysName: "Sat", date: "21"),
                 Days(daysName: "Sun", date: "22"),
               ],
             ),
            SizedBox(height: 25,),
            const Text(
              "Live Match",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            SizedBox(height: 10,),
            const CustomCard(),
            const SizedBox(height: 20,),
             Row(
                children:  [
                  Image.asset("assets/images/premier_ic.png", height: 20,width: 20,),
                  const SizedBox(width: 10,),
                  const Text("Today Match", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),
                   const Expanded(child: Text("")),
                   const Icon(Icons.arrow_forward_ios, color: Colors.white,)

                ],
             ),
            const SizedBox(height: 20,),
             const SingleCard(
               team1: "N Forest",
               team2: "Liverpool",
             teamImg1: "assets/images/team_forest.png",
               teamImg2: "assets/images/liverpool_team.png",
             ),
             const SingleCard(
               team1: "Man City",
               team2: "Brighton",
             teamImg1: "assets/images/man_team.png",
               teamImg2: "assets/images/br_team.png",
             ),
             const SingleCard(
               team1: "Wolves",
               team2: "Leichester",
             teamImg1: "assets/images/wolves_team.png",
               teamImg2: "assets/images/lee_team.png",
             ),



          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
         backgroundColor: ColorConstants.colorBackgroundBlack,
       type: BottomNavigationBarType.fixed,
       selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              label: "",
              icon: Image.asset("assets/images/vector.png", )),
          BottomNavigationBarItem(
              label: "",
              icon: Image.asset("assets/images/light_calendar.png", height: 30,width: 30,)),
          BottomNavigationBarItem(
              label: "",
              icon: Image.asset("assets/images/document-text.png", )),
          BottomNavigationBarItem(
              label: "",
              icon: Image.asset("assets/images/video.png")),
        ],
      ),

    );
  }
}
