import 'package:flutter/material.dart';
import 'package:flutter_kiosk/android/models/table-kiosk.dart';
import 'package:flutter_kiosk/constants/colors.dart';

class CardsTable extends StatelessWidget {
  final tableList = TableKiosk.generateTableKiosk();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: tableList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => _card(context, tableList[index]),
      ),
    );
  }

  Widget _card(BuildContext context, TableKiosk table) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 10),
          Icon(
            Icons.table_chart,
            size: 25,
            color: table.isOpen! ? kPrimaryDark : Colors.red[300],
          ),
          SizedBox(height: 10),
          Text(
            table.title!,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
      decoration: BoxDecoration(
        color: table.isOpen! ? kPrimary : Colors.red[100],
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
