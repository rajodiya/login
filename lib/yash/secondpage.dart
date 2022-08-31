

import 'package:flutter/material.dart';




class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3F2-tir9DSs2vFgpesZT3MmyNV_Xu6kUQaphXIbdDLbaC1wf79gL3GVZZju5WQpJV52Q&usqp=CAU"),
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
                           SizedBox(height: constraints.maxHeight*0.08,),

                          Container(
                            height: constraints.maxHeight*0.12,
                            decoration: BoxDecoration(
                              color: (const Color.fromARGB(255, 94, 15, 15)).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: TextField(
                                decoration: InputDecoration(border: InputBorder.none,
                                hintText: "DISPLAY NAME",
                                ),
                              ),
                               ),
                          ),

                         SizedBox(height: constraints.maxHeight*0.02,),

                          Container(
                            height: constraints.maxHeight*0.12,
                            decoration: BoxDecoration(
                              color: (const Color.fromARGB(255, 148, 146, 20)).withOpacity(0.4),
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
                              color: (const Color.fromARGB(255, 20, 148, 129)).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(16),
                              
                           ),
                           child: const Padding(
                              padding: EdgeInsets.only(left: 15),
                            
                              child: TextField(
                                decoration: InputDecoration(border: InputBorder.none,
                                hintText: "PASSWORD",
                                ),
                              ),
                               ),
                         ),


                          ElevatedButton(onPressed: (){
          
        },
         child: const Text(
          "CREATE ACCOUNT",style: TextStyle(fontSize: 25),),
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

      