import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(15),
                          ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network("https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                              fit: BoxFit.cover,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned(
                            bottom: 45,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("Happy dashain guys.\n Have a good day.",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("02 feb 2026",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 190,
                            child: Container(
                              width: size.width/2,
                              child: Icon(Icons.play_circle_fill,
                              color: Colors.white,
                              size:40,
                              )
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network("https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                                fit: BoxFit.cover,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned(
                            bottom: 45,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("Happy dashain guys.\n Have a good day.",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("02 feb 2026",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 190,
                            child: Container(
                                width: size.width/2,
                                child: Icon(Icons.play_circle_fill,
                                  color: Colors.white,
                                  size:40,
                                )
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network("https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                                fit: BoxFit.cover,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned(
                            bottom: 45,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("Happy dashain guys.\n Have a good day.",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("02 feb 2026",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 190,
                            child: Container(
                                width: size.width/2,
                                child: Icon(Icons.play_circle_fill,
                                  color: Colors.white,
                                  size:40,
                                )
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network("https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                                fit: BoxFit.cover,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned(
                            bottom: 45,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("Happy dashain guys.\n Have a good day.",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("02 feb 2026",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 190,
                            child: Container(
                                width: size.width/2,
                                child: Icon(Icons.play_circle_fill,
                                  color: Colors.white,
                                  size:40,
                                )
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network("https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                                fit: BoxFit.cover,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned(
                            bottom: 45,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("Happy dashain guys.\n Have a good day.",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("02 feb 2026",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 190,
                            child: Container(
                                width: size.width/2,
                                child: Icon(Icons.play_circle_fill,
                                  color: Colors.white,
                                  size:40,
                                )
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network("https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                                fit: BoxFit.cover,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            height: size.height/4.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned(
                            bottom: 45,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("Happy dashain guys.\n Have a good day.",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 30,
                            child: Container(
                              width: size.width/2,
                              child: Text("02 feb 2026",
                                style: TextStyle(color: Colors.white,fontSize:14),
                                maxLines: 2,overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 25 ,
                            left: 190,
                            child: Container(
                                width: size.width/2,
                                child: Icon(Icons.play_circle_fill,
                                  color: Colors.white,
                                  size:40,
                                )
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]
          ),
          Row(
            children: [
              Column(
                children:[
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        height: 100,
                        width: 100,
                        child: ClipRRect(borderRadius: BorderRadius.circular(15),
                             child: Image.network("https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                        fit: BoxFit.cover,),),
                      ),
                      Positioned(
                        top: 40,
                        left: 40,
                        child: Icon(Icons.play_circle_fill,
                        color: Colors.white,size: 50,)

                      )
                      ]
                  )
                ]
              ),
              Column(
                children:[
                  Text("haha"),
                  Row(
                    children: [
                      Container(
                        color: Colors.red,
                        padding: EdgeInsets.all(3),
                        child:Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                          child: Text("haha",style: TextStyle(color: Colors.white),),
                        )
                      )
                   ]
                  )
                  ]
              )
              ]
          )
        ],
      ),
    );
  }
}
