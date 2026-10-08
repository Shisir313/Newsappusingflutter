import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body:
      Column(
        children: [
          SizedBox(height: 60,),
          //first Row
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height/4,
                    child: Image.network("https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                    fit: BoxFit.cover,),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 20),
                      child: Icon(Icons.arrow_back,
                          size: 30,
                          color: Colors.white)),
                  Positioned(
                    right: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,left: 20),
                       child: Icon(Icons.share,
                       size: 30,
                      color: Colors.white)
                    ),
                  ),

                  Container(
                    width: size.width,
                    height: size.height/5,
                    child: Center(
                      child: Padding(
                          padding: const EdgeInsets.only(top: 40,left: 20),
                          child: Icon(Icons.play_circle_fill_rounded,
                              size: 40,
                              color: Colors.white)),
                    ),
                  ),

                 ]
              )
             ]
          )

          //2nd Row

        ],
      ),
      );
  }
}
