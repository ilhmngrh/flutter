import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard_Form.dart';
import 'package:flutter_application_1/Register_Form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akhwat Computer',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Apps'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscureText = true;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();


  void dapatData(){
    String username1 = username.text;
    String password1 = password.text;
    
    if (username1.isEmpty && password1.isEmpty) {
      notifikasi("Masukkan username dan password dengan benar!");
    } else {
      if (username1 == 'admin' && password1 == 'admin123') {
        notifikasi("Selamat datang $username1");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => dashboardForm(),),
          );
      }else{
        notifikasi("Username atau password Anda salah, silakan cek kembali");
      }
      }
  }

  void notifikasi(String massage){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(massage),
      action: SnackBarAction(
        label: 'Back',
        onPressed: () {
          
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Masukkan username Anda...',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
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
                  hintText: 'Masukkan password Anda...',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
              width: MediaQuery.of(context).size.width - 20,
              child: ElevatedButton(
                onPressed: dapatData,
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  minimumSize: Size(300, 50),
                ),
                child: Text(
                  "Login",
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
                  MaterialPageRoute(builder: (context) => registerForm(),),
                );
                }, 
                child: Text(
                  'Register?',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                )
                ),
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
