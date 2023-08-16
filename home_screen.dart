import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment/payment.dart';
class Payment extends StatefulWidget {
  final Function ()? onTap;
  const Payment({super.key,this.onTap});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 225, 225),
      body: Column(
        children: [
          Container(
            child: Container(
               height: 310, width: MediaQuery.of(context).size.width,
                color: Colors.red,
              child: Stack(
                children: [
                Positioned(
                  child: Container(
                  decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitHeight,image: AssetImage("assets/green.png"))),
                  )
                  ),
                  Positioned(top: 240,left: 15,
                    child: Text("My Bills",style: TextStyle(fontSize: 55,color: Colors.white,fontWeight: FontWeight.bold),)
                  ),
                  
                  Positioned(left: 295,top: 245,
                  child: GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                        isScrollControlled: true,
                        barrierColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                      context: context, builder: (BuildContext bc){
                      return Container(
                        height: 631,
                        child: Stack(
                          children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 568,width: MediaQuery.of(context).size.width,
                              color: Colors.grey.withOpacity(0.3),
                            )
                            ),
                            Positioned(
                              right: 66,top: 0,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 10,top: 2),
                                height: 200,width: 53,
                                decoration: BoxDecoration(color: Color.fromARGB(255, 90, 145, 241),borderRadius: BorderRadius.circular(20)),
                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  GestureDetector( onTap: (){Navigator.pop(context);},
                                    child: Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height: 40,width: 40,
                                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                      child: Icon(Icons.cancel),
                                    ), 
                                  ),
                                   GestureDetector(onTap: (){},
                                     child: Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height: 40,width: 40,
                                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                      child: Icon(Icons.add),
                                     ),
                                   ),
                                   Text("Add bill",style: TextStyle(fontSize: 12,color: Colors.white),),
                                 GestureDetector(onTap: (){},
                                   child: Container(
                                      margin: EdgeInsets.only(top: 5),
                                      height: 40,width: 40,
                                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                                      child: Icon(Icons.history),
                                  ),
                                 ),
                                 Text("History",style: TextStyle(fontSize: 12,color: Colors.white),),
                                ],),
                              )
                              ),
                          
                          ],),
                      );
                      });
                    },
                    child: Container(
                      height: 50,width: 50,
                     decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitHeight,image: AssetImage("assets/menu-bar.png"),),color: Colors.white,borderRadius: BorderRadius.circular(15)),
                    ),
                  )
                  ),
                ],),
            ),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 140,
                    width: 355,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3,left: 15,right: 5),
                          child: Row(
                            children: [
                            Container(
                              height: 60,width: 60,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/vodafone.png"),fit: BoxFit.cover),border: Border.all(width: 2,color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(width: 15,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Vodafone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                              SizedBox(height: 5,),
                              Text("ID: 846594",style: TextStyle(fontSize: 15,color: Colors.grey),),
                            ],),
                            SizedBox(width: 65,),
                            Container(
                              height: 35,width: 90,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(color: Color.fromARGB(255, 214, 196, 196),borderRadius: BorderRadius.circular(15)),
                              child: Text("Select",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black)),
                            )
                          ],),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          Container(
                            height: 25,width: 5,
                            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))),
                          )
                        ],),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text("Auto Pay on 24th May 23",style: TextStyle(fontSize: 15,color: Colors.grey),),
                                  ),
                           SizedBox(height: 3,),
                           Padding(
                           padding: const EdgeInsets.only(left: 15),
                           child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            for(int i=0; i<180/7; i++)
                            i.isEven?Container(
                              height: 4,width: 8,
                              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(2)),
                            ): Container(
                              height: 5,width: 5,
                              color: Colors.white,
                            )
                           ],),
                           ),
                            ],),
                           SizedBox(width: 15,),
                           Column(
                          children: [
                          Text("\$1248",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("Due in 3 days",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                           ],),
                           ],),
                        ),
                    ],),
                  ),
                ],),
                SizedBox(height: 15),
                Row(
                children: [
                  Container(
                    height: 140,
                    width: 355,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3,left: 15,right: 5),
                          child: Row(
                            children: [
                            Container(
                              height: 60,width: 60,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/vodafone.png"),fit: BoxFit.cover),border: Border.all(width: 2,color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(width: 15,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Vodafone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                              SizedBox(height: 5,),
                              Text("ID: 846594",style: TextStyle(fontSize: 15,color: Colors.grey),),
                            ],),
                            SizedBox(width: 65,),
                            Container(
                              height: 35,width: 90,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(color: Color.fromARGB(255, 214, 196, 196),borderRadius: BorderRadius.circular(15)),
                              child: Text("Select",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black)),
                            )
                          ],),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          Container(
                            height: 25,width: 5,
                            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))),
                          )
                        ],),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text("Auto Pay on 24th May 23",style: TextStyle(fontSize: 15,color: Colors.grey),),
                                  ),
                           SizedBox(height: 3,),
                           Padding(
                           padding: const EdgeInsets.only(left: 15),
                           child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            for(int i=0; i<180/7; i++)
                            i.isEven?Container(
                              height: 4,width: 8,
                              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(2)),
                            ): Container(
                              height: 5,width: 5,
                              color: Colors.white,
                            )
                           ],),
                           ),
                            ],),
                           SizedBox(width: 15,),
                           Column(
                          children: [
                          Text("\$1248",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("Due in 3 days",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                           ],),
                           ],),
                        ),
                    ],),
                  ),
                ],),
                SizedBox(height: 15),
                Row(
                children: [
                  Container(
                    height: 140,
                    width: 355,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3,left: 15,right: 5),
                          child: Row(
                            children: [
                            Container(
                              height: 60,width: 60,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/vodafone.png"),fit: BoxFit.cover),border: Border.all(width: 2,color: Colors.grey),borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(width: 15,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text("Vodafone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                              SizedBox(height: 5,),
                              Text("ID: 846594",style: TextStyle(fontSize: 15,color: Colors.grey),),
                            ],),
                            SizedBox(width: 65,),
                            Container(
                              height: 35,width: 90,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(color: Color.fromARGB(255, 214, 196, 196),borderRadius: BorderRadius.circular(15)),
                              child: Text("Select",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black)),
                            )
                          ],),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          Container(
                            height: 25,width: 5,
                            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))),
                          )
                        ],),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text("Auto Pay on 24th May 23",style: TextStyle(fontSize: 15,color: Colors.grey),),
                                  ),
                           SizedBox(height: 3,),
                           Padding(
                           padding: const EdgeInsets.only(left: 15),
                           child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            for(int i=0; i<180/7; i++)
                            i.isEven?Container(
                              height: 4,width: 8,
                              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(2)),
                            ): Container(
                              height: 5,width: 5,
                              color: Colors.white,
                            )
                           ],),
                           ),
                            ],),
                           SizedBox(width: 15,),
                           Column(
                          children: [
                          Text("\$1248",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("Due in 3 days",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                           ],),
                           ],),
                        ),
                    ],),
                  ),
                ],),
            ],),
            SizedBox(height: 25,),
            GestureDetector(onTap: (){
              Get.to(()=>payment1());
            },
              child: Container(
                height: 60,width: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(20)),
                child: Text("Pay all bills",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            )
        ],),
    );
  }
}

              
