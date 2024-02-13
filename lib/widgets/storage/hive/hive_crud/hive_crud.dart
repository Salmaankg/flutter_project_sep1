import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
void main()async{
  await Hive.initFlutter();
  await Hive.openBox('todo');
  runApp(MaterialApp(home: HiveCRUD(),));
}

class HiveCRUD extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HiveCRUDState();
}

class _HiveCRUDState extends State<HiveCRUD> {
  List<Map<String, dynamic>> task = [];
  final tname_ctrl = TextEditingController();
  final tcont_ctrl = TextEditingController();
  final todobox= Hive.box('todo');

  @override
  void initState() {
   read_refresh_task();
    super.initState();
  }
 read_refresh_task(){
    // fetch all the keys from hive in ascending order
   // key - individual itemkeys will be available at key{
   final task_from_hive=todobox.keys.map((key) {
     final task_from_key = todobox.get(key);
     return {
       'id': key,
       'name': task_from_key['task_name'],
       'content': task_from_key['task_cont']
     };

   }).toList();
   setState(() {
     task=task_from_hive;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO'),
      ),
      body: task.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(itemCount:task.length,itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Icon(Icons.task),
            title: Text(task[index]['name']),
            subtitle: Text(task[index]['content']),
            trailing: Wrap(
              children: [
                IconButton(onPressed: () {create_edit_task(task[index]['id']);}, icon: Icon(Icons.edit)),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete))
              ],
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          create_edit_task(null);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void create_edit_task(int? itemkey) {
    if(itemkey!=null ){
      final selected_task=task.firstWhere((element) => element['id']==itemkey);
      tname_ctrl.text=selected_task['name'];
      tcont_ctrl.text=selected_task['content'];
    }
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context, builder: (context) {
      return Container(
        padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: 15,
            bottom: MediaQuery
                .of(context)
                .viewInsets
                .bottom + 50
        ),
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: tname_ctrl,
              decoration: InputDecoration(hintText: 'Task Name'),
            ),
            TextField(
              controller: tcont_ctrl,
              decoration: InputDecoration(hintText: 'Task Content'),
            ),
            MaterialButton(onPressed: () {
              if (itemkey == null) {
                create_task({
                  'task_name': tname_ctrl.text.trim(),
                  'task_content': tcont_ctrl.text.trim()
                });
              }
            }, child: Text(itemkey == null ? 'create task' : 'edit task'),)
          ],
        ),
      );
    });
  }

 Future <void> create_task(Map<String, String> newtask) async{
    await todobox.add(newtask);
    read_refresh_task();
  }


}
