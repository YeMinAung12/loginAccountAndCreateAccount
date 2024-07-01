



import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class Loginaccount extends StatefulWidget {
  const Loginaccount({super.key});

  @override
  State<Loginaccount> createState() => _LoginaccountState();
}

class _LoginaccountState extends State<Loginaccount> {
  String? imagePath;
 
   ImagePicker imgPk=ImagePicker();
  
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical:height*0.1 ),
      child: Container(
       padding: EdgeInsets.symmetric(horizontal: width*0.05),
        decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black12),borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: width*0.5),
              child: Text('Login',style: TextStyle(fontSize: 25,color: Colors.brown,fontWeight:FontWeight.bold),),
            ),
            Center(
              child: InkWell(
                onTap: () async{
                 
                 XFile?  img=await imgPk.pickImage(source: ImageSource.gallery);
                  imagePath=img!.path;
                  setState(() {
                    
                  });
    
                },
                child: Column(
                  children: [
                   imagePath==null?
                    CircleAvatar(
                      
                      radius: 40,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                      child: 
                      Icon(Icons.person,size: 60,)
                     
                   
                    ):
                    
                    ClipPath(
                          clipper: ShapeBorderClipper(shape:  const CircleBorder()),
                          clipBehavior: Clip.hardEdge,
                          child: Image.file(File(imagePath!),fit: BoxFit.fill,width: 80,height: 80,),
                              ),
                    
                    Text('Pick your profile',style: TextStyle(fontSize: 15),)
                  ],
                ),
              ),
            ),
            TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.person),border: OutlineInputBorder(),hintText: 'User Name'),),
            TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.email),border: OutlineInputBorder(),hintText: 'Email'),),
            TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.lock),border: OutlineInputBorder(),hintText: 'Password'),),
            SizedBox(
              width: width*0.4,
              height: 45,
              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.brown,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))), child: Text('Login',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight:FontWeight.bold),)))
          ],
        ),
      ),
    );
  }
}