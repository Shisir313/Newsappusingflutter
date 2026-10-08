import 'package:flutter/material.dart';
import 'detailpage.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

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
   return  Row(
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
            width: size.width/2,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text(title,
                    maxLines: 2,overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Container(
                    height: size.width/10,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              padding: EdgeInsets.all(15),
                              child:Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                                child: Text(title,style: TextStyle(color: Colors.white),),
                              )
                          ),
                          Text(date),
                        ]
                    ),
                  )
                ]
            ),
          )
        ]
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
                          horizontalllistCard(size,"Hello PCPS news","https://images2.alphacoders.com/139/thumb-1920-1398469.png","02 Feb 2026",),
                          horizontalllistCard(size,"MOrning","https://images2.alphacoders.com/139/thumb-1920-1398469.png","03 Feb 2025",)
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
            width: size.width,
            height: size.height/1.8,
            child: SingleChildScrollView(

              child: Column(
                children: [
                  verticallistCard(
                      size,
                      "Hello PCPS news",
                      "https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                      "02 Feb 2026",
                      "BBC News"),
                  verticallistCard(
                      size,
                      "Hello PCPS news",
                      "https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                      "02 Feb 2026",
                      "BBC News"),
                  verticallistCard(
                      size,
                      "Hello PCPS news",
                      "https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                      "02 Feb 2026",
                      "BBC News"),
                  verticallistCard(
                      size,
                      "Hello PCPS news",
                      "https://images2.alphacoders.com/139/thumb-1920-1398469.png",
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

