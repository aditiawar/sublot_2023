import 'package:flutter/material.dart';
import 'main.dart';
import 'login.dart';
import 'create_box.dart';


final List<String> entries = <String>['Create box', 'Allocate', 'Move Box'];


class SublotList extends StatefulWidget {
  const SublotList({super.key});

  @override
  State<SublotList> createState() => _SublotListState();
}

class _SublotListState extends State<SublotList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sublot Menu Page'),
      ),
      drawer: Drawer(
                child: Column(
                    children: [
                        // Menambahkan clickable menu
                        ListTile(
                        title: const Text('Counter'),
                        onTap: () {
                            // Route menu ke halaman utama
                            Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MyHomePage()),
                            );
                        },
                        ),
                        ListTile(
                        title: const Text('Form'),
                        onTap: () {
                            // Route menu ke halaman form
                            Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MyFormPage()),
                            );
                        },
                        ),
                        ListTile( //Ganti
                        title: const Text('Sublot List'),
                        onTap: () {
                            // Route menu ke halaman form
                            Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const SublotList()),
                            );
                        },
                        ),
                        
                    ],
                ),
            ),
      body: ListView.builder(
        itemCount: entries.length, 
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: ListTile(
              title: Text('${entries[index]}'),
              leading: SizedBox(
                width: 50,
                height: 50,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreateBox()));
              },
            ),
          );
        } 
      )
      
      // ListView.separated(
      // //padding: EdgeInsets.only(bottom: 50, top: 100),
      // itemCount: entries.length,
      // shrinkWrap: true,
      // itemBuilder: (BuildContext context, int index) {
      //   return Container(
      //     height: 230,
      //     color: Colors.amberAccent,
      //     child: Center(child: Text('${entries[index]}')),
      //   );
      // }, separatorBuilder: (BuildContext context, int index) => const Divider(),
      
      // ),
    );
  }
}