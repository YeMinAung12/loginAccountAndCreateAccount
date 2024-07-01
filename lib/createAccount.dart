import 'package:flutter/material.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

List<String> list = <String>['Lawyer', 'Client'];
class _CreateAccountState extends State<CreateAccount> {
   
    String dropdownValue = list.first;

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
            Text('Create New Account',style: TextStyle(fontSize: 25,color: Colors.brown,fontWeight:FontWeight.bold),),
           
            TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.person),border: OutlineInputBorder(),hintText: 'User Name'),),
            TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.email),border: OutlineInputBorder(),hintText: 'Email'),),
            TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.lock),border: OutlineInputBorder(),hintText: 'Password'),),
            
            Column(
              children: [
                Text('Choose Type of account'),
                DropdownMenu<String>(
                      initialSelection: list.first,
                      onSelected: (String? value) {
                       
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
                        return DropdownMenuEntry<String>(value: value, label: value);
                      }).toList(),
                    ),
              ],
            ),
            SizedBox(
              width: width*0.4,
              height: 45,
              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.brown,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))), child: Text('Create',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight:FontWeight.bold),)))
          ],
        ),
      ),
    );;
  }
}