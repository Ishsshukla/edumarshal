import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Widget AttIndicator(percent, text1, text2){
  Color progressColor = percent < 0.75 ? const Color(0xffF75757) : const Color(0xff00CE46);
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      CircularPercentIndicator(
        radius: 40.0,
        lineWidth: 15.0,
        percent: percent,
        // header: Text("Icon header"),
        center: Text(text1,style: const TextStyle(color: Colors.black),),
        backgroundColor: const Color(0xffEBF3FF),
        progressColor: progressColor,
      ),

      Text(text2,style: const TextStyle(
          fontSize: 14,
          color: Colors.grey
      ),)

    ],
  );
}

Widget notes( text1, text2,text3 ){
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      decoration: BoxDecoration(
          color: const Color(0xff004BB8),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 18, 25, 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(text1,style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text(text2,style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),
                ),

                Text(text3,style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                ),),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset('assets/note.png',scale: 3.2,),
                ),

                const Text('2 hr ago',style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500
                ),)
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget Asgn(text1, text2, text3){
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      decoration: BoxDecoration(
          color: const Color(0xffFBFBFB),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
             children: [
               Image.asset('assets/assets/Frame 52.png',),

               Padding(
                 padding: const EdgeInsets.only(left: 8),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(text1,style: const TextStyle(
                         fontSize: 15,
                         color: Color(0xff004BB8)
                     ),),

                     Text(text2,style: const TextStyle(
                         fontSize: 12,
                         color: Color(0xff004BB8)
                     ),),
                   ],
                 ),
               ),
             ],
           ),

            Text(text3,style: const TextStyle(
                color: Color(0xff004BB8),
                fontSize: 12
            ),)
          ],
        ),
      ),
    ),
  );
}