import 'package:flutter/material.dart';

class CreateBox extends StatefulWidget {
  const CreateBox({super.key});

  @override
  State<CreateBox> createState() => _CreateBoxState();
}

class _CreateBoxState extends State<CreateBox> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String _machine = "";
    return Scaffold(
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
                        labelText: "Machine",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                      // Menambahkan behavior saat nama diketik 
                      // onChanged: (String? value) {
                      //     setState(() {
                      //         _machine = value!;
                      //     });
                      // },
                      // Menambahkan behavior saat data disimpan
                      // onSaved: (String? value) {
                      //     setState(() {
                      //         _email = value!;
                      //     });
                      // },
                      // Validator sebagai validasi form
                      // validator: (String? value) {
                      //     if (value == null || value.isEmpty) {
                      //         return 'Nama lengkap tidak boleh kosong!';
                      //     }
                      //     return null;
                      // },
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