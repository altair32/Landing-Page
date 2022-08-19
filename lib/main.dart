import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: pageview(),));
}

class pageview extends StatelessWidget {
  final controller = PageController();
  @override
  void dispose(){
    controller.dispose();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pageview', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),centerTitle: true,),
      body: Container(
        //padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            children: [
              Container(
                color: Colors.grey[300],
                child: Column(children: [Text('Page 1'),
                 Column(
                   children: [
                     Row(

                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                             Container(
                               padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                               child: OutlinedButton(
                                 style: OutlinedButton.styleFrom(
                                     elevation: 0,
                                     padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                     backgroundColor: Colors.white,
                                     shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(20))),
                                 child: const Text(
                                   'Skip',
                                   style: TextStyle(color: Colors.grey),
                                 ),
                                 onPressed: () {},
                               )
                             ),
                           ],
                     ),
                     SizedBox(height: 50),
                     Container(
                       padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                       height: 280.0,
                       width: 280.0,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage(
                               'assets/amico.png'),
                           fit: BoxFit.fill,
                         ),
                         shape: BoxShape.rectangle,
                       ),
                     ),
                     SizedBox(height: 20),
                     Row(
                         children: [
                           SizedBox(width:20),
                           Text('What is Mental Health?', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),)]
                     ),
                     //Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                     Row(

                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         SizedBox(width: 15,height: 30,),
                         Container(
                             padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                             child: OutlinedButton(
                               style: OutlinedButton.styleFrom(
                                   elevation: 0,
                                   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                                   backgroundColor: Colors.white,
                                   shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20))),
                               child: const Text(
                                 'Next',
                                 style: TextStyle(color: Colors.grey),
                               ),
                               onPressed: ()=>controller.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut),
                             )
                         ),
                       ],
                     ),
                   ],
                  )
                ]),
              ),
              Container(
                color: Colors.red,
                child: Text('Page 2'),
              ),
              Container(
                color: Colors.white,
                child: Text('Page 3'),
              ),
              Container(
                color: Colors.yellow,
                child: Text('Page 4'),
              ),

            ],

        ),
      ),
    );
  }
}
/*void nextPage(){
  PageController.animateToPage(PageController.page.toInt() + 1,
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn
  );
}*/

