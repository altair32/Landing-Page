import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


void main() {
  runApp(MaterialApp(home: pageview(),));
}

class pageview extends StatelessWidget {
  final controller = PageController();

  @override
  void dispose(){
   // controller.dispose();
    //super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pageview', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),centerTitle: true,),
      body: Container(
        //padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
                  controller: controller,
            children: [
              Container(
                color: Colors.grey[300],
                child: Column(children: [
                 Column(
                   children: [
                     Row(

                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                             Container(
                               padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
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
                                 onPressed: ()=>controller.jumpToPage(2),
                               )
                             ),
                           ],
                     ),
                     SizedBox(height: 35),
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
                     Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: ReadMoreText(
                        'It runs 11,000 trains every day on tracks that spread over 60,000 km in length. It employs close to 1.54 million people, making it the seventh-largest employer in the world, according to Forbes.',
                        style: TextStyle(
                          color: Colors.black45,
                          wordSpacing: 0.25,
                          fontSize: 18
                        ),
                        trimLines: 2,
                        textAlign: TextAlign.left,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: '...Show More',
                        trimExpandedText: 'Show Less',
                        moreStyle:  (
                            TextStyle(color: Colors.blue,)
                        ),
                        lessStyle: (
                        TextStyle(color: Colors.blue,)
                        ),
                      ),
                     ),
                     Row(

                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         SizedBox(width: 15,height: 30,),
                         Container(
                             padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                             child: RaisedButton(
                               elevation: 0,
                               textColor: Colors.grey[600],
                               color: Colors.white54,
                               highlightColor: Colors.blueAccent,
                               child: Text("Next"),
                               onPressed: ()=>controller.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut),
                               shape: new RoundedRectangleBorder(
                                 side: BorderSide(
                                   color: Colors.purpleAccent,
                                 ),
                                 borderRadius: new BorderRadius.circular(30.0),
                               ),
                             ),
                         ),
                       ],
                     ),
                   ],
                  )
                ]),
              ),
              Container(
                color: Color(0xDBDCE8FF),
                child: Column(children: [
                  Column(
                    children: [
                      Row(

                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
                              child: RaisedButton(
                                elevation: 0,
                                textColor: Colors.grey[600],
                                color: Colors.white54,
                                highlightColor: Colors.blueAccent,
                                child: Text("Skip"),
                                onPressed: ()=>controller.jumpToPage(2),
                                shape: new RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.purpleAccent,
                                  ),
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(10,0, 10, 20),
                        height: 300.0,
                        width: 340.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/rafiki.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                          children: [
                            SizedBox(width:20),
                            Text('How will this App help you?', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),)]
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: ReadMoreText(
                          'It runs 11,000 trains every day on tracks that spread over 60,000 km in length. It employs close to 1.54 million people, making it the seventh-largest employer in the world, according to Forbes.',
                          style: TextStyle(
                              color: Colors.black45,
                              wordSpacing: 0.25,
                              fontSize: 18
                          ),
                          trimLines: 2,
                          textAlign: TextAlign.left,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: '...Show More',
                          trimExpandedText: 'Show Less',
                          moreStyle:  (
                              TextStyle(color: Colors.blue,)
                          ),
                          lessStyle: (
                              TextStyle(color: Colors.blue,)
                          ),
                        ),
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 15,height: 30,),
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                              child: RaisedButton(
                                elevation: 0,
                                textColor: Colors.grey[600],
                                color: Colors.white54,
                                highlightColor: Colors.blueAccent,
                                child: Text("Next"),
                                onPressed: ()=>controller.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut),
                                shape: new RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.purpleAccent,
                                  ),
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              )
                          ),
                        ],
                      ),
                    ],
                  )
                ]),
              ),
              Container(
                color: Color(0xDBDCE8FF),
                child: Column(children: [
                  Column(
                    children: [
                      Row(

                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 15, 20, 0),
                              child: RaisedButton(
                                elevation: 0,
                                textColor: Colors.grey[600],
                                color: Colors.white54,
                                highlightColor: Colors.blueAccent,
                                child: Text("Skip"),
                                onPressed: ()=>controller.jumpToPage(2),
                                shape: new RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.purpleAccent,
                                  ),
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(10,0, 10, 20),
                        height: 300.0,
                        width: 340.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/aaruush.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                          children: [
                            SizedBox(width:20),
                            Text('About Aaruush', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),)]
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: ReadMoreText(
                          'It runs 11,000 trains every day on tracks that spread over 60,000 km in length. It employs close to 1.54 million people, making it the seventh-largest employer in the world, according to Forbes.',
                          style: TextStyle(
                              color: Colors.black45,
                              wordSpacing: 0.25,
                              fontSize: 18
                          ),
                          trimLines: 2,
                          textAlign: TextAlign.left,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: '...Show More',
                          trimExpandedText: 'Show Less',
                          moreStyle:  (
                              TextStyle(color: Colors.blue,)
                          ),
                          lessStyle: (
                              TextStyle(color: Colors.blue,)
                          ),
                        ),
                      ),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 15,height: 30,),
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                          ),
                        ],
                      ),
                    ],
                  )
                ]),
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

