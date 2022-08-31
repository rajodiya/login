import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
bool isPassword =true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return 
    
     Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors:  [
            Color.fromARGB(255, 163, 243, 33),
            Colors.red,
          ]
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
      
    );
  
  }

  Widget _page(){
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          _icon(),
          const SizedBox(height: 50),
          _inputfield("username", usernameController),
           const SizedBox(height: 20),
          _inputfield("password", passwordController ),
           const SizedBox(height: 50),
           _loginBtn(),
           const SizedBox(height: 20),
           _extraText(),
        ],
        ),
      ),
    );
  }

  Widget _icon(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white,width: 2),
        shape: BoxShape.circle
      ),
      child: const Icon(Icons.person,color: Colors.white,size: 120),
    );
  }

  Widget _inputfield(String hintText, TextEditingController controller){

    var border=OutlineInputBorder(borderRadius: BorderRadius.circular(18),
    borderSide: const BorderSide(color: Colors.white));
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
        
      ),
      obscureText: isPassword,
    );
    
  }

 Widget  _loginBtn(){
    return  ElevatedButton(
      
      
      // ignore: sort_child_properties_last
      child: const Text("Sing in "),
      onPressed: () { 
        debugPrint("Username :${usernameController.text}");
        debugPrint("password :${passwordController.text}");
       
      },

        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Colors.white,
          onPrimary: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
       );
  }

  Widget _extraText(){
    return const Text(
"can't access to your account ?",
textAlign: TextAlign.center,
style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }
}