import 'package:flutter/material.dart';

import 'dashboard.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  videoplay(size, url) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              width: size.width,
              height: size.height / 4,
              child: Image.network(url, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (context) => const dashboard(),
                    ),
                  );
                },
                child: Icon(Icons.arrow_back, size: 30, color: Colors.white),
              ),
            ),
            Positioned(
              right: 20,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Icon(Icons.share, size: 30, color: Colors.white),
              ),
            ),

            Container(
              width: size.width,
              height: size.height / 5,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: Icon(
                    Icons.play_circle_fill_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  discription(size, title) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  verticallistCard(size, title, url, date, source) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(url, fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 40,
                    child: Icon(
                      Icons.play_circle_fill,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: size.width / 1.8,
            height: size.height / 7,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: size.height / 8.8,
                      width: size.width / 1.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: size.height / 20,
                            width: size.width / 3,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 20,
                                top: 10,
                                bottom: 10,
                              ),
                              child: Text(
                                title,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Text(date),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            //first Row
            // dashboardState().horizontalllistCard(size,"Hello PCPS news hasbdjsajdkj","https://images2.alphacoders.com/139/thumb-1920-1398469.png","02 Feb 2026",),
            Container(
              height: size.height / 4,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Column(
                      children: [
                        videoplay(
                          size,
                          "https://images2.alphacoders.com/139/thumb-1920-1398469.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60),

            //2nd Row
            Container(
              height: size.height / 9,
              child: Row(
                children: [
                  Row(children: [discription(size, "This is discription ")]),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(9),
                    child: Text(
                      "Author Name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Date",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(9),
                  child: Text(
                    "Related videos",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            Divider(),
            SizedBox(height: 1),
            dashboardState().verticallistCard(
              size,
              "First news ",
              "https://images2.alphacoders.com/139/thumb-1920-1398469.png",
              "02 Feb 2026",
              "BBC News",
            ),
            dashboardState().verticallistCard(
              size,
              "Hello PCPS news",
              "https://a.storyblok.com/f/178900/940x529/a2e06c2199/nagi-blue-lock.jpg/m/filters:quality(95)format(webp)",
              "02 Feb 2026",
              "BBC News",
            ),
            dashboardState().verticallistCard(
              size,
              "First news ",
              "https://images2.alphacoders.com/139/thumb-1920-1398469.png",
              "02 Feb 2026",
              "BBC News",
            ),
            dashboardState().verticallistCard(
              size,
              "Hello PCPS news",
              "https://a.storyblok.com/f/178900/940x529/a2e06c2199/nagi-blue-lock.jpg/m/filters:quality(95)format(webp)",
              "02 Feb 2026",
              "BBC News",
            ),

            //3rd Row
            // Container(
            //   height: size.height/4,
            //   child: SingleChildScrollView(
            //     scrollDirection: Axis.vertical,
            //     child: Column(
            //       children: [
            //         verticallistCard(
            //             size,
            //             "First news ",
            //             "https://images2.alphacoders.com/139/thumb-1920-1398469.png",
            //             "02 Feb 2026",
            //             "BBC News"),
            //         verticallistCard(
            //             size,
            //             "Hello PCPS news",
            //             "https://a.storyblok.com/f/178900/940x529/a2e06c2199/nagi-blue-lock.jpg/m/filters:quality(95)format(webp)",
            //             "02 Feb 2026",
            //             "BBC News"),
            //         verticallistCard(
            //             size,
            //             "Hello PCPS news",
            //             "https://i.pinimg.com/736x/aa/81/fa/aa81fa57884a12bd2d3dbb1af5f6e312.jpg",
            //             "02 Feb 2026",
            //             "BBC News"),
            //         verticallistCard(
            //             size,
            //             "Hello PCPS news",
            //             "https://i.pinimg.com/736x/89/71/05/8971058dd62e79575550e000ff653f58.jpg",
            //             "02 Feb 2026",
            //             "BBC News"),
            //
            //
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
