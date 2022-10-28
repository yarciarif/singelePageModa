import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;

  Detay({super.key, this.imgPath});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //RESİM AÇILIRKEN ANİMASYON ÇALIŞMASI İÇİN HERO KULLANIYORUZ.
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 4,
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 100,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: const DecorationImage(
                                    image: AssetImage('assets/dress.jpg'),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'LAMINATED',
                              style: TextStyle(
                                  fontFamily: 'ElYazisi',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Louis vuitton',
                              style: TextStyle(
                                  fontFamily: 'ElYazisi', color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 45,
                              width: MediaQuery.of(context).size.width - 162,
                              child: const Text(
                                'One button V-neck sling long-sleeved waist female stitching dress',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'ElYazisi',
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Colors.black38,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '\$6500',
                            style: TextStyle(
                                fontFamily: 'ElYazisi',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 50),
                            child: FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Colors.brown,
                              child: const Icon(
                                Icons.arrow_forward_ios,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 50,
            child: Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Center(
                    child: Text(
                      'LAMINATED',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'ElYazisi',
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
