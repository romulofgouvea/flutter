import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/item.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Teste",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  List<Item> itens = [];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var newTaskCtrl = TextEditingController();

  void addTask() {
    if (newTaskCtrl.text.isEmpty) return;

    setState(() {
      widget.itens.add(Item(
        title: newTaskCtrl.text,
        done: false,
      ));
      newTaskCtrl.clear();
      saveDatabase();
    });
  }

  void removeTask(int index) {
    setState(() {
      widget.itens.removeAt(index);
      saveDatabase();
    });
  }

  Future loadDatabase() async {
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString("data");

    if (data != null) {
      Iterable decoded = jsonDecode(data);

      List<Item> result = decoded.map((e) => Item.fromJson(e)).toList();

      setState(() {
        widget.itens = result;
      });
    }
  }

  void saveDatabase() async {
    var prefs = await SharedPreferences.getInstance();
    var itensJson = widget.itens.map((i) => i.ToJson()).toList();
    await prefs.setString("data", jsonEncode(itensJson));
  }

  _HomeState() {
    loadDatabase();
  }

  @override
  Widget build(BuildContext context) {
    newTaskCtrl.clear();

    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: newTaskCtrl,
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
              labelText: "Nova tarefa",
              labelStyle: TextStyle(color: Colors.white, fontSize: 18)),
        ),
      ),
      body: ListView.builder(
          itemCount: widget.itens.length,
          itemBuilder: (BuildContext contextItem, int index) {
            final item = widget.itens[index];

            return Dismissible(
              key: Key(item.title),
              child: CheckboxListTile(
                title: Text(item.title),
                value: item.done,
                onChanged: (value) {
                  setState(() {
                    item.done = value;
                    saveDatabase();
                  });
                },
              ),
              background: Container(
                color: Colors.red.shade200,
              ),
              onDismissed: (direction) {
                removeTask(index);
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: addTask,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
