import 'package:flutter/material.dart';
import 'package:flutter_contacts/models/contact.model.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel? contactModel;

  EditorContactView({this.contactModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:
            Text(contactModel?.id != null ? 'Editar Contato' : 'Novo Contato'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                initialValue: contactModel?.name,
                onSaved: (value) => contactModel?.name = value!,
              ),
              TextFormField(
                initialValue: contactModel?.phone,
                onSaved: (value) => contactModel?.phone = value!,
              ),
              TextFormField(
                initialValue: contactModel?.email,
                onSaved: (value) => contactModel?.email = value!,
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Theme.of(context).primaryColor,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.save,
                    color: Theme.of(context).accentColor,
                  ),
                  label: Text(
                    'Salvar',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
