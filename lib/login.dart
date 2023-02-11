import '../main.dart';
import 'sublot_list.dart';

import 'package:flutter/material.dart';

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _email = "";
    String _password = "";

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Login Page'),
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
                body: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                        child: Container(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                            children: [
                                  Padding(
                                      // Menggunakan padding sebesar 8 pixels
                                      padding: const EdgeInsets.only(top: 200, bottom: 25),
                                      child: TextFormField(
                                          decoration: InputDecoration(
                                              //hintText: "Contoh: Pak Dengklek",
                                              labelText: "Email",
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(5.0),
                                              ),
                                          ),
                                          autofocus: true,
                                          textInputAction: TextInputAction.next,
                                          onEditingComplete: () => FocusScope.of(context).nextFocus(),
                                          // Menambahkan behavior saat nama diketik 
                                          onChanged: (String? value) {
                                              setState(() {
                                                  _email = value!;
                                              });
                                          },
                                          // Menambahkan behavior saat data disimpan
                                          onSaved: (String? value) {
                                              setState(() {
                                                  _email = value!;
                                              });
                                          },
                                          // Validator sebagai validasi form
                                          validator: (String? value) {
                                              if (value == null || value.isEmpty) {
                                                  return 'Nama lengkap tidak boleh kosong!';
                                              }
                                              return null;
                                          },
                                      ),
                                  ),
                                  Padding(
                                      // Menggunakan padding sebesar 8 pixels
                                       padding: const EdgeInsets.only(bottom: 20),
                                      child: TextFormField(
                                          decoration: InputDecoration(
                                              //hintText: "Contoh: Pak Dengklek",
                                              labelText: "Password",
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(5.0),
                                              ),
                                          ),
                                          // Menambahkan behavior saat nama diketik 
                                          onChanged: (String? value) {
                                              setState(() {
                                                  _password = value!;
                                              });
                                          },
                                          // Menambahkan behavior saat data disimpan
                                          onSaved: (String? value) {
                                              setState(() {
                                                  _password = value!;
                                              });
                                          },
                                          // Validator sebagai validasi form
                                          validator: (String? value) {
                                              if (value == null || value.isEmpty) {
                                                  return 'Nama lengkap tidak boleh kosong!';
                                              }
                                              return null;
                                          },
                                      ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.black,
                                      minimumSize: const Size.fromHeight(50), // NEW
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                              ],
                        ),
                    ),
                ),
            ),
        );
    }
}