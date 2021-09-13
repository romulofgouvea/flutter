import 'package:flutter/material.dart';
import 'package:flutter_kiosk/android/widgets/cards-table.widget.dart';
import 'package:flutter_kiosk/android/widgets/search-box.widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            SearchBox(),
            SizedBox(
              height: 16,
            ),
            Text(
              "Mesas",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Expanded(
              child: CardsTable(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
