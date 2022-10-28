import 'package:flutter/material.dart';
import 'package:flutter_moda/detay.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    //TABLAR ARASINDA GEÇİŞLERDEKİ ANİMASYONU SAĞLAYAN KOD
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.abc,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.access_time,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.account_balance_wallet,
                color: Colors.black,
                size: 26,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text(
            'Moda Uygulaması',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'ElYazisi',
                decoration: TextDecoration.underline,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
            ),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(children: [
        const Padding(padding: EdgeInsets.only(top: 10)),
        //ÜST TARAFTAKİ PROFİL FOTOGRAFLARININ OLDUGU BÖLÜM BAŞ.

        SizedBox(
          //color: Colors.blue.shade300,
          height: 140,
          width: double.infinity,
          child: ListView(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            children: [
              listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model3.jpeg', 'assets/dress.jpg'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model3.jpeg', 'assets/dress.jpg'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model3.jpeg', 'assets/dress.jpg'),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
        //ÜST TARAFTAKİ PROFİL FOTOGRAFLARININ OLDUGU BÖLÜM BİTİŞ.

        //CARDLARIN BAŞLANGICI
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            //color: Colors.blue,
            elevation: 4,
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: double.infinity,
              height: 511,
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    //34 MİNS AGO NUN ONUNDEKİ PROFİL FOTOGRAFI BAŞ.
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          image: const DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    //34 MİNS AGO NUN ONUNDEKİ PROFİL FOTOGRAFI BİTİŞ
                    const SizedBox(
                      width: 10,
                    ),
                    //DAİSY YAZAN TEXT KISMI BAŞ.
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Daisy',
                            style: TextStyle(
                                fontFamily: 'ElYazisi',
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          //DAİSY YAZAN TEXT KISMI BİTİŞ.
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '34 mins ago',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'ElYazisi',
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    //3 NOKTALI İCON KISMI BAŞ.
                    const Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ),
                    //3 NOKTALI İCON KISMI BİTİŞ.
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'This official website features a ribbed knit zibber jacket that that is modern and stylish.It looks very temparament and is recommendedto friends.',
                  style: TextStyle(
                      fontFamily: 'ElYazisi', fontSize: 13, color: Colors.grey),
                ),
                const SizedBox(
                  height: 15,
                ),
                //FOTOĞRAFLARIN OLDUGU ROW BAŞ.
                Row(
                  children: [
                    // İLK BÜYÜK FOTOĞRAF BAŞ.
                    InkWell(
                      onTap: (() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Detay(
                                  imgPath: 'assets/modelgrid1.jpeg',
                                )));
                      }),
                      child: Hero(
                        tag: 'assets/modelgrid1.jpeg',
                        child: Container(
                          width: (MediaQuery.of(context).size.width - 50) / 2,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage('assets/modelgrid1.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                    // İLK BÜYÜK FOTOĞRAF BİTİŞ.
                    const SizedBox(
                      width: 10,
                    ),
                    //ALT ALTA OLAN FOTOĞRAFLAR BAŞ.
                    Column(
                      children: [
                        InkWell(
                          onTap: (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => Detay(
                                      imgPath: 'assets/modelgrid2.jpeg',
                                    ))));
                          }),
                          child: Hero(
                            tag: 'assets/modelgrid2.jpeg',
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage('assets/modelgrid2.jpeg'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: ((context) => Detay(
                                      imgPath: 'assets/modelgrid3.jpeg',
                                    )),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'assets/modelgrid3.jpeg',
                            child: Container(
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage('assets/modelgrid3.jpeg'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //ALT ALTA OLAN FOTOĞRAFLAR BİTİŞ.
                  ],
                ),
                //FOTOGRAFLAR ROWUNUN BİTİŞİ.
                const SizedBox(
                  height: 10,
                ),
//ETİKETLERİN BAŞ.
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.brown.withOpacity(0.4),
                      ),
                      child: const Center(
                        child: Text(
                          '#Luis Witton',
                          style: TextStyle(
                              fontFamily: 'ElYazisi',
                              fontSize: 10,
                              color: Colors.brown),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.brown.withOpacity(0.4),
                      ),
                      child: const Center(
                        child: Text(
                          '#Chloe',
                          style: TextStyle(
                              fontFamily: 'ElYazisi',
                              fontSize: 10,
                              color: Colors.brown),
                        ),
                      ),
                    ),
                  ],
                ),
                //ETİKETLERİN BİTİŞ.
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                Row(
                  children: [
                    Icon(
                      Icons.reply,
                      color: Colors.brown.withOpacity(0.2),
                      size: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '1.7k',
                      style: TextStyle(fontFamily: 'ElYazisi', fontSize: 16),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.reply,
                      color: Colors.brown.withOpacity(0.2),
                      size: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '325',
                      style: TextStyle(fontFamily: 'ElYazisi', fontSize: 16),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 245,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '325',
                              style: TextStyle(
                                  fontFamily: 'ElYazisi', fontSize: 16),
                            ),
                          ]),
                    )
                  ],
                )
              ]),
            ),
          ),
        )

        //CARDLARIN BİTİŞİ
      ]),
    );
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 45,
              left: 45,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.brown),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(
                  fontFamily: 'ElYazisi', fontSize: 14, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
