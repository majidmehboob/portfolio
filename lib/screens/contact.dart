import 'package:flutter/material.dart';

class ContactNextLevel extends StatelessWidget {
  const ContactNextLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFFFD23E),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: LayoutBuilder(
          builder: (context,constraints) {
            return
              constraints.maxWidth > 600?
              Row(
                children: [
                  Expanded(child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("LETS BUILD\nTHE FUTURE.",style: TextStyle(
                            letterSpacing: 1.5,
                            color: const Color(0xFF272723),
                            fontSize: 50,
                            height: 1.2,
                            fontWeight: FontWeight.bold
                        ),),
                        const SizedBox(height:10),
                        infoSection("DIRECT CHANNEL","maijdmehboob1005@gmail.com"),
                        infoSection("BASE OF OPERATIONS","Faisalabad,Pakistan"),
                        const SizedBox(height:10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            circleIcon(Icons.code),
                            const SizedBox(width: 15),
                            circleIcon(Icons.email),
                            const SizedBox(width: 15),
                            circleIcon(Icons.link),
                          ],
                        ),
                      ],
                    ),
                  )),
                  Expanded(

                    child: Container(

                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 60),
                      decoration: BoxDecoration(
                          color:  Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _field("Your Name","Identification"),
                          const SizedBox(height: 12),
                          _field("Your Email","Electronic Mail"),
                          const SizedBox(height: 12),
                          _field("Project Details","Objective Description", maxLines: 5),

                          const SizedBox(height: 20),

                          // 🚀 SEND BUTTON
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            decoration: BoxDecoration(
                              color: const Color(0xFF272723),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                "SEND MESSAGE",
                                style: TextStyle(
                                  color: const Color(0xFFFFD23E),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ):
              Column(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("LETS BUILD\nTHE FUTURE.",style: TextStyle(
                          letterSpacing: 1.5,
                          color: const Color(0xFF272723),
                          fontSize: 28,
                          height: 1.2,
                          fontWeight: FontWeight.bold
                      ),),
                      const SizedBox(height:6),
                      infoSection("DIRECT CHANNEL","maijdmehboob1005@gmail.com"),


                    ],
                  ),

              Container(

                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color:  Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _field("Your Name","Identification"),
                        const SizedBox(height: 6),
                        _field("Your Email","Electronic Mail"),
                        const SizedBox(height: 6),
                        _field("Project Details","Objective Description", maxLines: 5),

                        const SizedBox(height: 10),

                        // 🚀 SEND BUTTON
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          decoration: BoxDecoration(
                            color: const Color(0xFF272723),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text(
                              "SEND MESSAGE",
                              style: TextStyle(
                                color: const Color(0xFFFFD23E),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                infoSection("BASE OF OPERATIONS","Faisalabad,Pakistan"),
                const SizedBox(height:6),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    circleIcon(Icons.code),
                    const SizedBox(width: 15),
                    circleIcon(Icons.email),
                    const SizedBox(width: 15),
                    circleIcon(Icons.link),
                  ],
                ),
              ],
            );
          }
        ),
      ),
    );
  }
  Widget circleIcon(IconData icon){
    return CircleAvatar(
      radius: 25,
      backgroundColor: Color(0xFF272723),
      child: Icon(icon,color:const Color(0xFFFFD23E), size:20),
    );
  }
  Widget infoSection(String label,String content){
    return Column(
      spacing: 4,
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [

        Text(label,style: TextStyle(
            color: Color(0xFF765B00),
            fontWeight: FontWeight.bold
        ),),
        Text(content,style: TextStyle(
            color: Color(0xFF241A00),
            fontWeight: FontWeight.bold,
            fontSize: 24
        ),)
      ],
    );
  }

  Widget _field(String hint,String label, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6,
      children: [
        Text(label,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
        TextField(
          maxLines: maxLines,
          style: const TextStyle(color: Colors.white),
          cursorColor: const Color(0xFFFAC302),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }

  Widget _infoTile(String icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(icon, style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}