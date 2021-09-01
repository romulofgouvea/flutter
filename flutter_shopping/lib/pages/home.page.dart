import 'package:flutter/material.dart';
import 'package:flutter_shopping/pages/product-detail.page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 24,
              ),
              _searchBar(context),
              SizedBox(
                height: 24,
              ),
              Text("Categorias"),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 75,
                child: categories(context),
              ),
              SizedBox(
                height: 24,
              ),
              Text("Mais vendidos"),
              Container(
                height: 350,
                child: _products(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _searchBar(BuildContext context) {
  return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(128),
        ),
      ),
      padding: const EdgeInsets.only(left: 8),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(Icons.search),
            Container(
              padding: const EdgeInsets.only(left: 16),
              width: MediaQuery.of(context).size.width - 110,
              child: TextFormField(
                autofocus: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Search...",
                  labelStyle: TextStyle(
                    // color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                style: TextStyle(
                  fontSize: 16,
                  // color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ));
}

Widget categories(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _categoryItem(),
        _categoryItem(),
        _categoryItem(),
        _categoryItem(),
        _categoryItem(),
        _categoryItem(),
        _categoryItem(),
      ],
    ),
  );
}

Widget _categoryItem() {
  return Container(
    width: 60,
    height: 60,
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        new BoxShadow(
          color: Colors.black12,
          offset: new Offset(1, 2.0),
          blurRadius: 5,
          spreadRadius: 1,
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(60),
      ),
    ),
    child: Image.asset(
      "assets/Icon_Devices.png",
      fit: BoxFit.scaleDown,
    ),
  );
}

Widget _products(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _productItem(context),
        _productItem(context),
        _productItem(context),
        _productItem(context),
        _productItem(context),
        _productItem(context),
        _productItem(context),
      ],
    ),
  );
}

Widget _productItem(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductDetailPage(),
        ),
      );
    },
    child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        width: 170,
        color: Colors.black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/product-2.png",
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              child: Text(
                "TITULO DO PRODUTO",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Marca",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "R\$ 200,00",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )),
  );
}
