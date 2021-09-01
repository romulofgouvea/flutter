import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.black.withOpacity(0),
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  "assets/product-2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(16),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 35, bottom: 4),
                  child: Text(
                    "Produto 1",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text("by Nike"),
                Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 16),
                  child: Text(
                    "Detalhes",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
