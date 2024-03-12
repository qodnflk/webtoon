import 'package:flutter/material.dart';
import 'package:webtoon/card/plannercard.dart';

class CloneCoding extends StatefulWidget {
  const CloneCoding({super.key});

  @override
  State<CloneCoding> createState() => _CloneCodingState();
}

class _CloneCodingState extends State<CloneCoding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff1f1f1f),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/chipmunk.jpg"),
                  ),
                  Icon(
                    Icons.add,
                    size: 40,
                    weight: 400,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'MONDAY 16',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            'TODAY',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          SizedBox(width: 7),
                          Icon(
                            Icons.circle,
                            color: Color(0xffb12580),
                            size: 10,
                          ),
                          SizedBox(width: 7),
                          Text(
                            '17',
                            style: TextStyle(
                                color: Color(0xff636252), fontSize: 45),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '18',
                            style: TextStyle(
                                color: Color(0xff636252), fontSize: 45),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '19',
                            style: TextStyle(
                                color: Color(0xff636252), fontSize: 45),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '20',
                            style: TextStyle(
                                color: Color(0xff636252), fontSize: 45),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '21',
                            style: TextStyle(
                                color: Color(0xff636252), fontSize: 45),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '22',
                            style: TextStyle(
                                color: Color(0xff636252), fontSize: 45),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  PlannerCard(
                    stratHour: '11',
                    startMinute: '30',
                    endHour: '12',
                    endMinute: '20',
                    planTitle: 'DESIGN\nMETTING',
                    friend: ["ALEX", 'HELENA', 'NANA'],
                    bgcolor: Color(0xfffef754),
                  ),
                  SizedBox(height: 10),
                  PlannerCard(
                    stratHour: '12',
                    startMinute: '35',
                    endHour: '14',
                    endMinute: '10',
                    planTitle: 'DAILY\nPROJECT',
                    friend: ['ME', 'RICHARD', 'CIRY', '+4'],
                    bgcolor: Color(0xff9C6BCE),
                  ),
                  SizedBox(height: 10),
                  PlannerCard(
                      stratHour: '15',
                      startMinute: '00',
                      endHour: '16',
                      endMinute: '30',
                      planTitle: 'WEEKLY\nPLANNING',
                      friend: ['DEN', 'NANA', 'MARK'],
                      bgcolor: Color(0xffBCEE4B))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
