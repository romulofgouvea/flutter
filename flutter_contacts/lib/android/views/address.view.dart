import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Enredeço do contato'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            child: ListTile(
              title: Text(
                "Endereço atual",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Rua do Desenvolvedor, 256",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Piracicaba/SP",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              isThreeLine: true,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 80,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Pesquisar...",
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue[200],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.my_location),
      ),
    );
  }
}
