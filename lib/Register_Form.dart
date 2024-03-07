import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class registerForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<registerForm> {
  bool _obscureText = true;

  TextEditingController nama = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController no_hp = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController tanggal = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void simpan() {}

  void tampilSandi() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  //date picker
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.pink,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: nama,
                decoration: InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: alamat,
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: no_hp,
                decoration: InputDecoration(
                  labelText: 'Nomor Handphone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: TextEditingController(
                        text:
                            '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}'),
                    decoration: InputDecoration(
                        labelText: 'Tanggal lahir',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: password,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: tampilSandi,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
              width: MediaQuery.of(context).size.width - 20,
              child: ElevatedButton(
                onPressed: simpan,
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  minimumSize: Size(150, 50),
                ),
                child: Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    ),
                    
                ),
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp(),),
                );
                }, 
                child: Text(
                  'Login?',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                )
                ),
            ),
          ],
        ),
      ),
    );
  }
}
