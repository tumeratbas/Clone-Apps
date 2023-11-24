import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ytLogo = 'assets/images/youtube_music.png';
    return MaterialApp(
      title: 'youtube_music',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(          
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(48, 14, 32, 1),
                    Color.fromRGBO(62, 36, 17, 1),
                  ]
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          ytLogo,
                          height: 30,
                          fit: BoxFit.fitWidth
                        ),  
                        Row(
                          children: [
                            Icon(
                              Icons.podcasts,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(width: 15),
                            CircleAvatar(
                              backgroundImage: NetworkImage("https://media.licdn.com/dms/image/D5603AQFCKH5LiyB0dA/profile-displayphoto-shrink_400_400/0/1666208195228?e=1706140800&v=beta&t=q11lOKu-lWKLEEt3SeDsD9ou1xbjmzNf74naAPxR3k0"),
                              radius: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Category("Energize"),
                          Category("Mood"),
                          Category("Happy"),
                          Category("Phonk"),
                          Category("Bass"),
                          Category("Crazy"),
                          Category("Weekend"),
                          Category("Study"),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 10, 10, 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: 
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADIO FROM A SONG",
                          style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 167),
                            fontSize: 12
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:2,bottom: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Quick Picks",
                                style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                 ),
                             ),
                              Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white70, width: 1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text(
                                        "Play all",
                                        style: TextStyle(
                                          color: const Color.fromARGB(255, 168, 168, 168),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                            ],
                          ),
                        ),
                        
                        SingleChildScrollView(
                          
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  MusicRow("https://e.snmc.io/i/1200/s/5f417df461424abbd1a82bba7f8d2a6c/5928532","Lorem Ipsum Dolar Sit Amet","Müslüm Gürses"),
                                  MusicRow("https://cdns-images.dzcdn.net/images/cover/af9b4bf24f5c4b3ba0c74d9f13aa5387/264x264.jpg","Lorem Ipsum Dolar Sit Amet","Ben Fero"),
                                  MusicRow("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/bfecde30-d64d-4e65-b6a4-43aced34bc6f/d4xl492-6e79377c-0543-4579-abe0-d979848d7a6f.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2JmZWNkZTMwLWQ2NGQtNGU2NS1iNmE0LTQzYWNlZDM0YmM2ZlwvZDR4bDQ5Mi02ZTc5Mzc3Yy0wNTQzLTQ1NzktYWJlMC1kOTc5ODQ4ZDdhNmYucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.DFfR--a0DDmOBBzYc42W1e3Wyge43Lb6Wj9bB4e9ZAc","Lorem Ipsum Dolar Sit Amet","Katty Perry"),
                                  MusicRow("data:image/jpeg;base64,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","Lorem Ipsum Dolar Sit Amet","Tarkan"),
                                ],
                              ),
                              Column(
                                children: [
                                  MusicRow("https://e.snmc.io/i/1200/s/5f417df461424abbd1a82bba7f8d2a6c/5928532","Lorem Ipsum Dolar Sit Amet","Müslüm Gürses"),
                                  MusicRow("https://cdns-images.dzcdn.net/images/cover/af9b4bf24f5c4b3ba0c74d9f13aa5387/264x264.jpg","Lorem Ipsum Dolar Sit Amet","Ben Fero"),
                                  MusicRow("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/bfecde30-d64d-4e65-b6a4-43aced34bc6f/d4xl492-6e79377c-0543-4579-abe0-d979848d7a6f.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2JmZWNkZTMwLWQ2NGQtNGU2NS1iNmE0LTQzYWNlZDM0YmM2ZlwvZDR4bDQ5Mi02ZTc5Mzc3Yy0wNTQzLTQ1NzktYWJlMC1kOTc5ODQ4ZDdhNmYucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.DFfR--a0DDmOBBzYc42W1e3Wyge43Lb6Wj9bB4e9ZAc","Lorem Ipsum Dolar Sit Amet","Katty Perry"),
                                  MusicRow("data:image/jpeg;base64,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","Lorem Ipsum Dolar Sit Amet","Tarkan"),
                                ],
                              ),
                            ],
                          ),
                        ),
            
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 5, bottom: 8),
                          child:
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Forgotten Memories",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white70, width: 1),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    "More",
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 168, 168, 168),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:5,right: 5.0),
                                child: Column(
                                  children: [
                                    Image.network(
                                      "https://lh3.googleusercontent.com/XPQ-imvGrt2C2PaNq4axqlLT_epPFyqD6Ltn14Rc6AnIicBLOOK8Bb99CJypr3f42_hdXxwSpMFeoGoA=w544-h544-l90-rj",
                                      width: 200,
                                      height: 200,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Anadolu Rock Klasikleri",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                            ),
                                          ),
                                          Text(
                                            "Barış Manço,Moğollar,Cem K..",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 167, 167, 167),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Column(
                                  children: [
                                    Image.network(
                                      "https://www.graphicdesignforum.com/uploads/default/original/2X/d/d3c4e744046205a49d06beb874df3b39da7c9c73.jpeg",
                                      width: 200,
                                      height: 200,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "IGOR",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                            ),
                                          ),
                                          Text(
                                            "Tyler Okonma",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 167, 167, 167),
                                              fontSize: 14
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Column(
                                  children: [
                                    Image.network(
                                      "https://lh3.googleusercontent.com/JtAu7u8csJ-Db0F0waO2YJkA6e9GgQWPfqBo2AZXNqzEoHPFcxajxLcQkYpInu8ZtDAYgmYxOQI2Vw=w544-h544-l90-rj",
                                      width: 200,
                                      height: 200,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Eskimeyen Türkçe Aku..",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18
                                            ),
                                          ),
                                          Text(
                                            "Bülent Ortaçgil,Gundogan...",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 167, 167, 167),
                                              fontSize: 14
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      
                      ],
                    ),
                  ),

                ),
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: const Color.fromARGB(255, 33, 33, 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: Colors.white, size: 30,),
                      Text("Home", style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_circle_fill,color: Colors.white, size: 30,),
                      Text("Samples", style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.explore,color: Colors.white, size: 30,),
                      Text("Explore", style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.subscriptions,color: Colors.white, size: 30,),
                      Text("Library", style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.slideshow,color: Colors.white, size: 30,),
                      Text("Upgrade", style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),),
                    ],
                  ),
                  
                ],
              ),
            ),
          ]
        )
      )
    );
  }

  Padding MusicRow(String url, String songName, String artist) {
    return Padding(
      padding: const EdgeInsets.only(left:5, bottom: 5,),
      child: Row(
        children: [

          Image.network(
            url,
            width: 65,
            height: 65,
          ),
          Padding(

            padding: const EdgeInsets.only(left:5, bottom: 5,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  songName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
                Text(
                  artist,
                  style: TextStyle(
                    color: Color.fromARGB(255, 167, 167, 167),
                    fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Container Category(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromARGB(20, 255, 255, 255),
        border: Border.all(
          color: Colors.white,
          width: 0.1
        )
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      margin: EdgeInsets.only(left: 5, right: 5),
    );
  }
}