import 'package:flutter/material.dart';

class PlannerCard extends StatelessWidget {
  final String stratHour;
  final String startMinute;
  final String endHour;
  final String endMinute;

  final String planTitle;
  final List<String> friend;

  final Color bgcolor;

  const PlannerCard({
    super.key,
    required this.stratHour,
    required this.startMinute,
    required this.endHour,
    required this.endMinute,
    required this.planTitle,
    required this.friend,
    required this.bgcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 37,
          left: 17,
          right: 17,
          bottom: 17,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  stratHour,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 0.9,
                  ),
                ),
                Text(startMinute),
                const Text(
                  '|',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  endHour,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    height: 0.9,
                  ),
                ),
                Text(endMinute),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  planTitle, //   /n 붙여놔야 줄나눔
                  style: const TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.w500,
                    height: 0.9,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    for (String name in friend)
                      Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: name == 'ME'
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                              color: name == 'ME'
                                  ? Colors.black
                                  : Colors.black.withOpacity(0.5),
                            ),
                          ),
                          const SizedBox(width: 30),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
