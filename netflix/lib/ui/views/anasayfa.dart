import 'package:flutter/material.dart';
import 'package:netflix/ui/views/DetaySayfa.dart';
import '../../data/entity/filmler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  late Future<List<Filmler>> filmleriYukle;
  static List<Filmler> netflixPopulerFilmleri = [];
  static List<Filmler> listemFilmleri = [];
  static List<Filmler> gundemdekilerFilmleri = [];
  static List<Filmler> SadeceNetflixte = [];

  void initState() {
    super.initState();
    filmleriYukle = _filmleriYukle();
  }


  static Future<List<Filmler>> _filmleriYukle() async {
    var filmlerListesi = <Filmler>[];
    // Filmleri yükle
    var f1 = Filmler(id: 1, resim: '21bridges.jpg');
    var f2 = Filmler(id: 2, resim: '1899.jpg');
    var f3 = Filmler(id: 3, resim: 'alice.jpg');
    var f4 = Filmler(id: 4, resim: 'anakonda2.webp');
    var f5 = Filmler(id: 5, resim: 'anotherlife.jpg');
    var f6 = Filmler(id: 6, resim: 'askvecanavar.jpg');
    var f7 = Filmler(id: 7, resim: 'blacklist.webp');
    var f8 = Filmler(id: 8, resim: 'blackmirror.jpg');
    var f9 = Filmler(id: 9, resim: 'bodygruard.jpg');
    var f10 = Filmler(id: 10, resim: 'breakingned.webp');
    var f11 = Filmler(id: 11, resim: 'rick2.jpeg');
    var f12 = Filmler(id: 12, resim: 'dunyayiardındabirak.jpg');
    var f13 = Filmler(id: 13, resim: 'formthecold.jpg');
    var f14 = Filmler(id: 14, resim: 'fractured.jpg');
    var f15 = Filmler(id: 15, resim: 'glitch.jpg');
    var f16 = Filmler(id: 16, resim: 'grayman.jpg');
    var f17 = Filmler(id: 17, resim: 'happiness.webp');
    var f18 = Filmler(id: 18, resim: 'house.webp');
    var f19 = Filmler(id: 19, resim: 'jawan.webp');
    var f20 = Filmler(id: 20, resim: 'kaptanphillips.webp');
    var f21 = Filmler(id: 21, resim: 'kimbu.jpg');
    var f22 = Filmler(id: 22, resim: 'kod8.webp');
    var f23 = Filmler(id: 23, resim: 'kubra.jpg');
    var f24 = Filmler(id: 24, resim: 'longest.jpg');
    var f25 = Filmler(id: 25, resim: 'lost.webp');
    var f26 = Filmler(id: 26, resim: 'lostinspace.jpg');
    var f27 = Filmler(id: 27, resim: 'lovedeath+robots.jpg');
    var f28 = Filmler(id: 28, resim: 'lupin.jpg');
    var f29 = Filmler(id: 29, resim: 'luther.jpg');
    var f30 = Filmler(id: 30, resim: 'manerick.webp');
    var f31 = Filmler(id: 31, resim: 'yuzde3.jpg');
    var f32 = Filmler(id: 32, resim: 'silent.jpg');
    var f33 = Filmler(id: 33, resim: 'spektral.jpg');
    var f34 = Filmler(id: 34, resim: 'survivor.jpg');
    var f35 = Filmler(id: 35, resim: 'lupin.jpg');
    var f36 = Filmler(id: 36, resim: 'oksijen.jpg');
    var f37 = Filmler(id: 37, resim: 'peaky.jpg');
    var f38 = Filmler(id: 38, resim: 'mist.jpg');
    var f39 = Filmler(id: 39, resim: 'tothelake.jpg');
    var f40 = Filmler(id: 40, resim: 'yakamoz.jpg');
    var f41 = Filmler(id: 41, resim: '21bridges.jpg');
    var f42 = Filmler(id: 42, resim: '1899.jpg');
    var f43 = Filmler(id: 43, resim: 'alice.jpg');
    var f44 = Filmler(id: 44, resim: 'anotherlife.jpg');
    var f45 = Filmler(id: 45, resim: 'bodygruard.jpg');
    var f46 = Filmler(id: 46, resim: 'recrut.jpg');
    var f47 = Filmler(id: 47, resim: 'ucukbirinis.jpg');
    var f48 = Filmler(id: 48, resim: 'obliterated.jpg');
    var f49 = Filmler(id: 49, resim: 'outer.jpg');
    var f50 = Filmler(id: 50, resim: 'sessizlik.jpg');

    filmlerListesi.addAll([
      f1, f2, f3, f4, f5, f6, f7, f8, f9, f10,
      f11, f12, f13, f14, f15, f16, f17, f18, f19, f20,
      f21, f22, f23, f24, f25, f26, f27, f28, f29, f30,
      f31, f32, f33, f34, f35, f36, f37, f38, f39, f40,
      f41, f42, f43, f44, f45, f46, f47, f48, f49, f50,
    ]);


    // Karıştırma işlemi
    //filmlerListesi.shuffle();

    // Kategorilere ayırma işlemi
    netflixPopulerFilmleri = filmlerListesi.sublist(0, 10);
    listemFilmleri = filmlerListesi.sublist(10, 20);
    gundemdekilerFilmleri = filmlerListesi.sublist(20, 30);
    SadeceNetflixte = filmlerListesi.sublist(30, 50);

    return filmlerListesi;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Netflix',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: filmleriYukle,
          builder: (context, AsyncSnapshot<List<Filmler>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Hata: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              return Column(
                children: [
                  _buildMainMovie(),

                  _buildCategory(
                    categoryTitle: 'Netflix\'te Popüler',
                    films: netflixPopulerFilmleri,
                  ),
                  _buildCategory(
                    categoryTitle: 'Listem',
                    films: listemFilmleri,
                  ),
                  _buildCategory(
                    categoryTitle: 'Gündemdekiler',
                    films: gundemdekilerFilmleri,
                  ),
                  _buildCategory(
                    categoryTitle: 'Sadece Netflix\'te',
                    films: SadeceNetflixte,
                  ),
                ],
              );
            } else {
              return const Center();
            }
          },
        ),
      ),
    );
  }

  Widget _buildCategory({
    required String categoryTitle,
    required List<Filmler> films,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 20,
          child: Text(
            categoryTitle,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            itemCount: films.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var film = films[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetaySayfa(film: film)),
                  );
                },
                child: Card(
                  color: Colors.black,
                  margin: const EdgeInsets.only(
                      top: 10, left: 0, right: 10, bottom: 0),
                  child: SizedBox(
                    height: 105,
                    width: 190,
                    child: Image.asset('asset/${film.resim}'),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

Widget _buildMainMovie() {
  return SizedBox(
    height: 415,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          BuildContext as BuildContext,
          MaterialPageRoute(
            builder: (context) =>
                DetaySayfa(film: Filmler(id: 11, resim: 'rick.png')),
          ),
        );
      },
      child: Column(
        children: [
          Card(
            color: Colors.black,
            margin: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                height: 410,
                width: 480,
                child: Image.asset('asset/rick.png'),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

