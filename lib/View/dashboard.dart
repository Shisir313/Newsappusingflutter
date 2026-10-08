import 'package:flutter/material.dart';
import 'detailpage.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => dashboardState();
}

class dashboardState extends State<dashboard> {

  horizontalllistCard(size, title, url, date)
  {
    return  GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => const detailpage(),
          ),
        );
      },
      child: Stack(
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
              child: Image.network(url,
                fit: BoxFit.contain,),
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
              child: Text(title,
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
              child: Text(date,
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
    );
  }

  verticallistCard(size, title, url, date,source)
  {
   return  GestureDetector(
     onTap: (){
       Navigator.of(context).push(
         MaterialPageRoute<void>(
           builder: (context) => const detailpage(),
         ),
       );
     },
     child: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Row(
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
                              child: Image.network(url,
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
              Container(
                width: size.width/1.8,
                height: size.height/7,
                child: Stack(
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text(title,
                            maxLines: 2,overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Container(
                            height: size.height/8.8,
                            width: size.width/1.6,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height : size.height/20,
                                      width: size.width/3,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(10),
                                      ),

                                      child:Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 20,top: 10,bottom: 10),
                                        child: Text(title,style: TextStyle(color: Colors.white),),
                                      )
                                  ),
                                  Text(date),
                                ]
                            ),
                          )
                        ]
                    ),
                  ],
                ),
              )
            ]
        ),
     ),
   );
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.add),
        title: const Text("News"),
        centerTitle: true,
        actions: const [
          Icon(Icons.favorite),
        ],
      ),
      body: Column(
        children: [
          //horizontal scroll
          Row(
            children: [
              Container(
                width: size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          horizontalllistCard(size,"Hello PCPS news hasbdjsajdkj","https://images2.alphacoders.com/139/thumb-1920-1398469.png","02 Feb 2026",),
                          horizontalllistCard(size,"MOrning","https://a.storyblok.com/f/178900/940x529/a2e06c2199/nagi-blue-lock.jpg/m/filters:quality(95)format(webp)","03 Feb 2025",)
                        ]
                      ),
                    ],
                  ),
                ),
              )
            ]
          ),

          //vertical Scroll

          Container(

            height: size.height/1.8,
            child: SingleChildScrollView(

              child: Column(
                children: [
                  verticallistCard(
                      size,
                      "First news ",
                      "https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                      "02 Feb 2026",
                      "BBC News"),
                  verticallistCard(
                      size,
                      "Hello PCPS news",
                      "https://a.storyblok.com/f/178900/940x529/a2e06c2199/nagi-blue-lock.jpg/m/filters:quality(95)format(webp)",
                      "02 Feb 2026",
                      "BBC News"),
                  verticallistCard(
                      size,
                      "Hello PCPS news",
                      "https://i.pinimg.com/736x/aa/81/fa/aa81fa57884a12bd2d3dbb1af5f6e312.jpg",
                      "02 Feb 2026",
                      "BBC News"),
                  verticallistCard(
                      size,
                      "Hello PCPS news",
                      "https://i.pinimg.com/736x/89/71/05/8971058dd62e79575550e000ff653f58.jpg",
                      "02 Feb 2026",
                      "BBC News"),


                ],
              ),
            ),
          )
        ],
      )

    );
  }
}

