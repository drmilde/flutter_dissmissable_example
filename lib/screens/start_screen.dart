import 'dart:math';

import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  Random rnd = Random();

  List<Eintrag> liste = [
    Eintrag("Sheldon", ""),
    Eintrag("Amy", ""),
    Eintrag("Howard", ""),
    Eintrag("Raj", ""),
    Eintrag("Barney", ""),
    Eintrag("Ted",
        "https://i.insider.com/5e20cc4dab49fd022114d2a8?width=1000&format=jpeg&auto=webp"),
    Eintrag("Robin",
        "https://i3-img.prosieben.de/pis/ezone/d76cqgELB38wdEB0AB1fHPDQCtTDCJ4UYl_Ic-IXCoYylZ0mXaheiyCf8r-rAPqXoJhS5ccKE64i1AGkynIEgNRklBBhqygnkWmKzlqW_s0gyUAGWJ6Xqiq0ehX_iwwLh2Ybp7v_X7Ia--iN5r5_fsNNgjn9FJh5sExRVo7DPMuP9jtKo2uf3AtA6KosM9G_dEm5HZgd18cQ6HNpn4w20sqeQOyvTlgryYf8pptIYLNeqrChsi21uLSFtAcuQ_GAihhjLJrddScZK9TqlaKLIUqHt20BXHsXvFRqI0IgIQitBF1btgqHjKfkwT0aOWtqqu_vTGGvSKNZdOdQvdM4HJDn3PmIo6K0WXDnDiW_20c/profile:mag-maxwidth-1280"),
    Eintrag("Lilly", ""),
    Eintrag("Marshall", ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return ListView.builder(
        itemCount: liste.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(rnd.nextInt(1000000000)),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) // nach rechts
              {
                liste.removeAt(index);
              }
              // Remove the item from the data source.
              setState(() {});
            },
            child: _buildCard(liste, index),
            background: Row(
              children: [
                Container(
                  color: Colors.red,
                  child: Icon(
                    Icons.delete_forever_outlined,
                    size: 100,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            secondaryBackground: Container(color: Colors.green),
          );
        });
  }

  Widget _buildCard(List<Eintrag> liste, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: new BorderRadius.only(
            topLeft: new Radius.circular(20.0),
            topRight: new Radius.circular(20.0),
          ),
        ),
        height: 100,
        //color: Colors.amberAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${liste[index].name}"),
              Container(width: 200, height: 200, child: Image.network(liste[index].url)),
            ],
          ),
        ),
      ),
    );
  }
}

class Eintrag {
  String name;
  String url;

  Eintrag(this.name, this.url);
}
