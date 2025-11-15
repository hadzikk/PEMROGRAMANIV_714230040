import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: <Widget>[
                  Image.asset(place.imageAsset),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(icon: const Icon(Icons.arrow_back), color: Colors.white, onPressed: () {
                          Navigator.pop(context);
                        }),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                  ),
                  )
                ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0,),
                        Text('Open Everyday')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0,),
                        Text('08:00-18:00')
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.attach_money),
                        SizedBox(height: 8.0,),
                        Text('Rp. 25.000')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Ranca Upas merupakan salah satu destinasi wisata alam populer di Bandung Selatan yang terkenal dengan udara sejuk dan pemandangan hijau khas pegunungan. Kawasan ini menawarkan pengalaman berkemah di alam terbuka dengan pemandangan perbukitan dan padang rumput luas. Selain itu, pengunjung juga dapat berinteraksi langsung dengan rusa di penangkaran, menjadikannya tempat favorit bagi keluarga maupun pecinta alam untuk bersantai dan menikmati suasana tenang jauh dari keramaian kota.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16.0),
                  ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AspectRatio(aspectRatio: 16 / 9,
                      child: Image.network(url, fit: BoxFit.cover,)
                      ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}