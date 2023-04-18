import 'package:flutter/material.dart';

class Days extends StatefulWidget {
    final String? daysName;
    final String? date;
  const Days({required this.daysName, required this.date ,Key? key}) : super(key: key);

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.daysName.toString(), style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400)),
        Text(widget.date.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
      ],
    );
  }
}
