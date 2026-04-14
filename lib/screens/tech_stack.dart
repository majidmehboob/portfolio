import 'package:flutter/material.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      color: const Color(0xFFFFD23E),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Row(
            spacing: 12,
            children: [
              Expanded(
                flex: 4,
                  child: Container(
               height: 300,
                decoration: BoxDecoration(
                  color: Color(0xFFFFF2D8),
                  border: Border.all(color: Color(0xFF241A00),width: 4),
                  borderRadius: BorderRadius.circular(4)
                ),
              ),

              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: 300,
                  color:Color(0xFF241A00),
                  child: Column(
                    children: [
                      Text("Tech Stack"),
                      Row(
                        spacing: 12,
                        children: [
                          Expanded(child: Container(
                            height: 100,
                            color:Color(0xFF3A311A),
                          )),
                          Expanded(child: Container(
                            height: 100,
                            color:Color(0xFF3A311A),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 300,
            width: 800,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF241A00),width: 4),
                borderRadius: BorderRadius.circular(4),
                color: Color(0xFFFFE088)
            ),

          )
        ],
      ),
    );
  }
}
