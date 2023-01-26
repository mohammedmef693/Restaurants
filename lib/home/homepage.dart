import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List notes = [
    {"note": "i have the time of gym 1", "image": "3.png"},
    {"note": "i have the time of gym 2", "image": "3.png"},
    {"note": "i have the time of gym 3", "image": "3.png"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("home"),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, i) {
                return listNotes(
                  notes: notes[i],
                );
              }),
        ));
  }
}

class listNotes extends StatelessWidget {
  final notes;
  listNotes({this.notes});
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [
        Expanded(flex: 1, child: Image(image: AssetImage("images/4.png"))),
        Expanded(
          flex: 3,
          child: ListTile(
            title: Text("${notes["note"]}", style: TextStyle(fontSize: 20)),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.edit, size: 30)),
          ),
        ),
      ],
    ));
  }
}
