import 'dart:html';

import 'package:flutter/material.dart';





class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
                    backgroundImage: NetworkImage("https://thumbs.dreamstime.com/b/bouton-d-ic%C3%B4ne-de-login-127000574.jpg"),
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
                        const Text(
                          "Login Now",
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: constraints.maxHeight*0.01,
                          ),
                        const Text(
                          "Continue"),
                          SizedBox(height: constraints.maxHeight*0.08,),

                          Container(
                            height: constraints.maxHeight*0.12,
                            decoration: BoxDecoration(
                              color: (Color.fromARGB(255, 15, 94, 73)).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: TextField(
                                decoration: InputDecoration(border: InputBorder.none,
                                hintText: "EMAIL ID",
                                ),
                              ),
                               ),
                          ),

                         SizedBox(height: constraints.maxHeight*0.02,),

                          Container(
                            height: constraints.maxHeight*0.12,
                            decoration: BoxDecoration(
                              color: (const Color.fromARGB(255, 148, 20, 90)).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(16),
                              
                           ),
                           child: const Padding(
                              padding: EdgeInsets.only(left: 15),
                                child:TextField(
                                decoration: InputDecoration(border: InputBorder.none,
                                hintText: "PASSWORD",
                                ),
                              ),
                              ),
                               ),
                          ElevatedButton(onPressed: (){
         
        },
        
         child: const Text(
          "LOGIN",style: TextStyle( fontSize: 25),),
                 style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 122, 230, 149),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28),
          ),
          ),
        ),


                      ],
                      );
                  } 
                  ),
              ),
            ],
          ),
          ),
          ),
    );
    
  }
}






//     return Scaffold(
//       resizeToAvoidBottomInset: false, //over flouv no thay aena mate
//       appBar: AppBar(),
//       body: Column(
//         children: [
//         Container(
//           height: 200,width: 200,
//           color: Colors.red,
//         ),
//         Container(
//           height: 200,width: 200,
//           color: Colors.blue,
//         ),
//         TextButton(onPressed: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context) {return Loginpage();} ),);
//         },
//          child: const Text(
//           "login",style: TextStyle(fontSize: 25),),
//         ),

//       ]
//       ),
//     );
    
//   }
// }