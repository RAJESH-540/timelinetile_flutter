import 'package:flutter/material.dart';
import 'package:task/constants/color.dart';

import '../custom_widgets/choice_chip.dart';
import '../custom_widgets/detail_page_card.dart';

class MatchDetails extends StatefulWidget {
  const MatchDetails({Key? key}) : super(key: key);

  @override
  State<MatchDetails> createState() => _MatchDEtailsState();
}

class _MatchDEtailsState extends State<MatchDetails> {
  List<String> options = ['Option 1', 'Option 2', 'Option 3'];
  String selectedOption = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.colorLightCardGrey,
      body: SingleChildScrollView(
        child: Column(
          children: [
           const  DetailPageCard(),


          ],
        ),
      ),
    );
  }
}
