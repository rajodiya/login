import 'package:flutter/material.dart';
import 'package:login/yash/secondpage.dart';
import 'package:login/yash/thirdpage.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height*0.30,
                child: const FittedBox(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://static4.depositphotos.com/1013501/300/i/950/depositphotos_3007343-stock-photo-go-or-start-button.jpg"),
                    radius: 120,
                  ),
                ),
                ),
                Container(
                height: height*0.62,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(
                  builder:(context, constraints){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    
    
                  ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {return const ThirdPage ();} ),);
        },
         child:  Text(
          "LOGIN",style: TextStyle(fontSize: 25),),
          style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 122, 230, 149),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28),
          ),
          ),

          
        ),


        const SizedBox(height: 20),
                        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {return const SecondPage ();} ),);
        },
           child:  Text(
          "REGISTER", style: TextStyle(fontSize: 25),
        ),
                  style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 122, 230, 149),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28),
          ),
          ),
        ),
            ],
          );
  },
  ),
  ),
                ],
                ),
                ),
              ),
        );
    
  }
}