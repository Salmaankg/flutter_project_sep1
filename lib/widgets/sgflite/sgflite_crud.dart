import 'package:flutter/material.dart';
import 'package:flutter_project_sep1/widgets/sgflite/dboperations.dart';

void main() {
  runApp(MaterialApp(
    home: SqfliteCrud(),debugShowCheckedModeBanner: false,
  ));
}

class SqfliteCrud extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SgfliteCrudState();
}

class _SgfliteCrudState extends State<SqfliteCrud> {
  final name_ctrl = TextEditingController();
  final phone_ctrl = TextEditingController();
  var isloading = true; // initially ui is in loading state
  List<Map<String, dynamic>> contacts = []; // to store data retrived from db

  @override
  void initState() {
    // to show contacts at starting
    loadData(); // to get data from db
    super.initState();
  }

  void loadData() async {
    final data = await SQLHelper.readData();
    setState(() {
      contacts = data;
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTACT'),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => showSheet(null), child: const Icon(Icons.add)),
      body: isloading
          ? const Center(child: Text('No Data '))
          : ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(contacts[index]['name']),
                    subtitle: Text(contacts[index]['phone']),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              showSheet(contacts[index]['id']);
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              deleteContact(contacts[index]['id']);
                            },
                            icon: Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
    );
  }

  void showSheet(int? id) {
    if (id != null) {
      // element ['id'] = id from database
      // firstWhere - first element from contacts that satisfy this condition
      final data_from_that_id =
          contacts.firstWhere((element) => element['id'] == id);
      name_ctrl.text = data_from_that_id['name'];
      phone_ctrl.text = data_from_that_id['phone'];
    }
    showModalBottomSheet(
      isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: name_ctrl,
                  decoration: InputDecoration(hintText: 'name'),
                ),
                TextField(
                  controller: phone_ctrl,
                  decoration: InputDecoration(hintText: 'phone'),
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        await createContact();
                      }
                      if(id != null){
                        await updateContact(id);
                      }
                      Navigator.of(context).pop();
                      name_ctrl.text='';
                      phone_ctrl.text='';
                    },
                    child: Text(id==null ? 'Create Contact': 'Update Contact'))
              ],
            ),
          );
        });
  }

 Future<void> createContact() async {
    await SQLHelper.create_contact(name_ctrl.text, phone_ctrl.text);
    loadData(); // to refresh ui whenever we add a new contact
 }

 Future<void> updateContact(int? id)async {
    await SQLHelper.updateContact(id,name_ctrl.text,phone_ctrl.text);
    loadData();
 }

  void deleteContact(int? id)async {
    await SQLHelper.deleteData(id);
    loadData(); //refresh ui
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully Deleted')));
  }

}
