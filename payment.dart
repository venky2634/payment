import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class payment1 extends StatelessWidget {
  const payment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      padding: EdgeInsets.only(top: 40,left: 20,right: 20),
           decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/payment.webp"))),
           child: SingleChildScrollView(
             child: Column(
              children: [
              Container(
              height: 190,
             decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitWidth,image: AssetImage("assets/sucess.jpg"))),
              ),
              SizedBox(height: 8),
              Container(
                height: 700,width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Sucess !",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black),),
                   Text("Payment is completed for 2 bills",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                 SizedBox(height: 20,),
                 Container(
                   padding: EdgeInsets.only(top: 15,bottom: 15),
                height: 200,width: 310,
                decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey),borderRadius: BorderRadius.circular(20)),
                 child: MediaQuery.removePadding(removeTop: true,context: context,
                   child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (_,index){
                      return Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: 60,width: 60,
                                decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(30)),
                                child: Icon(Icons.done,size: 25,color: Colors.white,),
                              ),
                            SizedBox(width: 15,),
                            Column(
                              children: [
                              Text("Vodafone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                              SizedBox(height: 10,),
                              Text("ID: 7830874",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                            ],),
                            SizedBox(width: 18,),
                            Text("\$1248.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                          ],),
                          Divider(thickness: 4,)
                        ],);                    
                    },
                      
                   ),
                 )
              ),
                 SizedBox(height: 35,),
                  Text("Total Amount",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                  SizedBox(height: 15,),
                  Text("\$2840.00",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.black),), 
                SizedBox(height: 35,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Column(
                    children: [
                      GestureDetector(onTap: (){},
                        child: Container(
                        margin: EdgeInsets.only(left: 15),
                        height: 60,width: 60,
                        decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(30)),
                         child: Icon(Icons.share_sharp,size: 25,color: Colors.white,),
                        ),
                      ),
                      SizedBox(height:5),
                      Text("Share",style: TextStyle(fontSize: 20,color: Colors.black),), 
                    ],),
                    SizedBox(width: 25,),
                  Column(
                    children: [
                      GestureDetector(onTap: (){},
                        child: Container(
                        margin: EdgeInsets.only(left: 15),
                        height: 60,width: 60,
                        decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(30)),
                       child: Icon(Icons.print_outlined,size: 25,color: Colors.white,),
                        ),
                      ),
                      SizedBox(height:5),
                      Text("print",style: TextStyle(fontSize: 20,color: Colors.black),), 
                    ],),
                ],),
                SizedBox(height: 20,),
                GestureDetector(onTap: (){ 
                  Get.back();
                },
                  child: Container(
                  height: 50,width: 230,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),border: Border.all(width: 3)),
                  child: Text("Done",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.purple),),
                  ),
                ),
                
                ],),
              ),
              
             ],),
           ),
           ),

    );
  }
}