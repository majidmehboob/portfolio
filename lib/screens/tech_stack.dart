import 'package:flutter/material.dart';

import '../widgets/scroll.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      color: const Color(0xFFFFD23E),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 80),

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
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF2D8),
                  border: Border.all(color: Color(0xFF241A00),width: 4),
                  borderRadius: BorderRadius.circular(4)
                ),
                    child: Column(
                      spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("THE CRAFTSMAN",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF272723),
                          height: 1.1,
                          fontSize: 28
                        ),),
                        Text(
                            "A software engineer dedicated to the flutter ecosystem. I bridge the gap between complex backend architectures and delightfull user interface.I dont just build apps,I engineer digital legacies.With a deep focus on clean architecture and pixel-perfect UI",
                          style: TextStyle(
                              fontSize: 20

                          ),
                        ),
                        Divider(color: Colors.grey.shade700,),
                        Row(
                          spacing: 12,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(radius: 35,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text("Majid Mehboob",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                Text("Flutter Developer",style: TextStyle(fontSize: 16,color:Colors.grey.shade700, ),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
              ),

              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: 300,
                  decoration: BoxDecoration(
                    color:Color(0xFF241A00),
                    borderRadius: BorderRadius.circular(4.0)
                  ),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 12,
                    children: [
                      Text("TECH STACK",style: TextStyle(
                        color: Color(0xFFFED13E),
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                      ),),
                      Expanded(
                        child: Column(
                          // spacing: 12,
                          children: [

                            /// 🔥 ROW 1 (Left → Right)
                            SizedBox(
                              height: 90,
                              child: AutoScrollRow(
                                reverse: false,
                                children: [
                                  techStackSingleOne(iconName: 'android', title: 'Android'),
                                  techStackSingleOne(iconName: 'flutter', title: 'Flutter'),
                                  techStackSingleOne(iconName: 'firebase', title: 'Firebase'),
                                  techStackSingleOne(iconName: 'kotlin', title: 'Kotlin'),
                                  techStackSingleOne(iconName: 'supabase', title: 'Supabase'),
                                ],
                              ),
                            ),

                            const SizedBox(height: 12),

                            /// 🔥 ROW 2 (Right → Left)
                            SizedBox(
                              height: 90,
                              child: AutoScrollRow(
                                reverse: true,
                                children: [
                                  techStackSingleOne(iconName: 'sqflite', title: 'SqfLite'),
                                  techStackSingleOne(iconName: 'android_studio', title: 'Android Studio'),
                                  techStackSingleOne(iconName: 'flutter', title: 'Flutter'),
                                  techStackSingleOne(iconName: 'firebase', title: 'Firebase'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            spacing: 12,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: 300,
                  decoration: BoxDecoration(

                      border: Border.all(color: Color(0xFF241A00),width: 4),
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFFFFE088)
                  ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   spacing: 12,
                   children: [
                     Text("EXPERIENCE TIMELINE",style: TextStyle(
                         fontWeight: FontWeight.bold,
                         color: Color(0xFF272723),
                         height: 1.1,
                         fontSize: 28
                     ),),
                     const SizedBox(height: 10,),
                     timeLineSingleOne()
                   ],
                 ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                      // border: Border.all(color: Color(0xFF241A00),width: 4),
                      borderRadius: BorderRadius.circular(4),
                      gradient: RadialGradient(
                        radius: 1.3,
                          colors: [

                        Color(0xFF2C2C2C),
                        Color(0xFF21211F),
                            Color(0xFF1D1D1B)

                      ])
                  ),
                 child: Stack(
                   children: [
                     Positioned(
                       bottom: 30,
                         left: 30,
                         child:Text(
                           "DRIVEN BY \nINNOVATION",
                           textAlign: TextAlign.start,
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 26,
                             color: const Color(0xFFFFD23E),),) )
                   ],
                 ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget timeLineSingleOne(){
    return Column(
      spacing: 12,
      children: [
        Row(
          spacing: 40,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 2,
            children: [
              Text(
                "JULY-NOVEMBER",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                "2025",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  "INTERNSHIP ON FLUTTER @ VISIT ITECH",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF241A00),
                  ),
                ),
                Text(
                  "WORK AS A JUNIOR FLUTTER DEVELOPER",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF8C7840),
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider( color: Color(0xFFE9CC7A),)
      ],
    );
  }
  Widget techStackSingleOne({required String iconName,required String title}){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color:Color(0xFF3A311A),
         borderRadius: BorderRadius.circular(4)
      ),

      child: Row(
        spacing: 12,
        children: [
          Image.asset(
            "assets/images/${iconName}.png",
             color: Color(0xFFFED13E),

            ),
          Text(title,style: TextStyle(
             color: Color(0xFFFED13E),
            fontSize: 22,
            height: 1.2,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis
          ),)
        ],
      ),
    );
  }
}
