import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/constants/color.dart';
import 'package:task/screens/match_details_screen.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const MatchDetails()) );
      },
      child: Stack(
        children: [
          Card(
            color: ColorConstants.colorBgPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
             child: SizedBox(
                height: 180,
               width: MediaQuery.of(context).size.width,
               child: Column(
                 children: [
                    SizedBox(height: 20,),
                   // Text("Stamford Bridge", style: TextStyle(color: Colors.white, fontSize: 14),),

                 ],
               ),
             ),

          ),
          Positioned(
              top: 0,
              bottom: 0,
              left: 155,
              child: Image.asset("assets/images/Union.png", height: 300,width: 220,)),
           Positioned(
              top: 15,
              left: 130,
              child: Text("Stamford Bridge", style: TextStyle(color: Colors.white, fontSize: 14),),),
           Positioned(
             top: 35,
             left: 160,
             child: Text("Week 10", style: TextStyle( color:Colors.grey,fontSize: 12),),),
           Positioned(
             top: 70,
              left: 40,
              child: Column(
            children: [
              Image.asset("assets/images/Badges1.png", height:64 ,width: 64,),
               SizedBox(height: 5,),
              Text("Chelsea", style: TextStyle(fontSize: 14, color: Colors.white),),
              Text("Home", style: TextStyle(fontSize: 12,color: Colors.grey ),)
            ],
          )),
           Positioned(
             top: 70,
              left: 250,
              child: Column(
            children: [
              Image.asset("assets/images/badges2.png", height:64 ,width: 64,),
               SizedBox(height: 5,),
              Text("Man Utd", style: TextStyle(fontSize: 14, color: Colors.white),),
              Text("Away", style: TextStyle(fontSize: 12,color: Colors.grey ),)
            ],
          )),
           Positioned(
              top: 90,
               left: 150,
               child: Column(
             children: [
               Text("1 : 1", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white),)
             ],
           )),
           Positioned(
              top: 135,
                 left: 155,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4,horizontal: 6),
             decoration: BoxDecoration(

                border: Border.all(width: 1, color: ColorConstants.colorGreenText),
               borderRadius: BorderRadius.circular(12),
             ),
              child: Text("90+4", style: TextStyle(color:ColorConstants.colorGreenText ),),
           ))
        ],
      ),
    );
  }
}
