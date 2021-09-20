import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child : Text('Data Pemain Sepakbola'),
          )
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              createCard("images/ronaldo.jpg", "Cristiano Ronaldo", "Portugal", "Manchester United", 5),
              createCard("images/messi.png", "Lionel Messi", "Argentina", "Paris Saint-Germain", 4),
              createCard("images/gianluigidonnarumma.png", "Gianluigi Donnarumma", "Italia", "Paris Saint-Germain", 4),
              createCard("images/harrykane.png", "Harry Kane", "Inggris", "Tottenham Hotspur", 4),
              createCard("images/jorginho.png", "Jorginho", "Italia", "Chelsea", 5),
              createCard("images/kevindebruyne.png", "Kevin De Bruyne", "Belgia", "Manchester City", 5),
              createCard("images/kylianmbappe.png", "Kylian Mbappé", "Prancis", "Paris Saint-Germain", 4),
              createCard("images/ngolokante.png", "N'Golo Kanté", "Prancis", "Chelsea", 5),
              createCard("images/raheemsterling.png", "Raheem Sterling", "Inggris", "Manchester City", 4),
              createCard("images/robertlewandowski.png", "Robert Lewandowski", "Polandia", "Bayern Munich", 5),
              createCard("images/martinbraithwaite.png", "Martin Braithwaite", "Denmark", "Barcelona", 3),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Card createCard(String playerImage, String playerName, String country, String club, int playerStar) {
    return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image(
                        image: AssetImage(playerImage),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  Expanded(
                    child: Container( 
                      height: 120,
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          createText(playerName, TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                            )),
                          createText(country, TextStyle()),
                          createText(club, TextStyle()),
                          Container(
                            width: double.infinity,
                            child: countStar(playerStar)
                          ),
                        ],
                      )
                    ),
                  )
                ],
              ),
            );
  }

  Container createText(String myText, TextStyle myStyle) {
    return Container(
                        width: double.infinity,
                        child: Text(
                          myText,
                          style: myStyle,
                        )
                      );
  }

  Row countStar(int playerStar) {
    return Row(
            children: [
              for( int i = 1 ; i <= 5; i++ ) 
                (i <= playerStar) ? Icon(Icons.star, color: Colors.yellow,) : Icon(Icons.star_border),
            ],
           );
  }
}

