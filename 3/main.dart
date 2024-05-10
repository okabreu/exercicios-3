import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sports App',
      theme: ThemeData(
        primaryColor: Colors.black, 
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/basketball': (context) => BasketballScreen(),
        '/football': (context) => FootballScreen(),
        '/nfl': (context) => NFLScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/basketball');
              },
              child: Text('Basquete'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/football');
              },
              child: Text('Futebol'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/nfl');
              },
              child: Text('NFL'),
            ),
          ],
        ),
      ),
    );
  }
}

class Player {
  final String name;
  final String image;
  final String statistics;

  Player({
    required this.name,
    required this.image,
    required this.statistics,
  });
}

class BasketballScreen extends StatelessWidget {
  final List<Player> basketballPlayers = [
    Player(
      name: 'Michael Jordan',
      image: 'assets/m.png',
      statistics: 'Pontos: 30, Assistências: 5, Rebotes: 10',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basquete'),
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: basketballPlayers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(basketballPlayers[index].image),
            ),
            title: Text(basketballPlayers[index].name),
            subtitle: Text(basketballPlayers[index].statistics),
          );
        },
      ),
    );
  }
}

class FootballScreen extends StatelessWidget {
  final List<Player> footballPlayers = [
    Player(
      name: 'Lionel Messi',
      image: 'assets/messi.jpg',
      statistics: 'Gols: 500, Assistências: 200',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Futebol'),
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(footballPlayers[index].image),
            ),
            title: Text(footballPlayers[index].name),
            subtitle: Text(footballPlayers[index].statistics),
          );
        },
      ),
    );
  }
}

class NFLScreen extends StatelessWidget {
  final List<Player> nflPlayers = [
    Player(
      name: 'Tom Brady',
      image: 'assets/tom.png',
      statistics: 'Jardas Passadas: 80000, Touchdowns: 600',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NFL'),
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: nflPlayers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(nflPlayers[index].image),
            ),
            title: Text(nflPlayers[index].name),
            subtitle: Text(nflPlayers[index].statistics),
          );
        },
      ),
    );
  }
}
