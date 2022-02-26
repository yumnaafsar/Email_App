import 'package:flutter/material.dart';

import 'home.dart';

class createEmail extends StatefulWidget {
  const createEmail({ Key? key }) : super(key: key);

  @override
  _createEmailState createState() => _createEmailState();
}

class _createEmailState extends State<createEmail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar:AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios,color:Colors.white,), onPressed: (){
                      Navigator.pop(context, 
                      MaterialPageRoute(builder:(context)=>Home())); }),
          centerTitle: true,
          title: Text('Compose ',style: TextStyle(color: Colors.white),),
         actions:<Widget>[
            Padding(padding: 
            EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(Icons.search,size:26.0),
            ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PopupMenuButton<int>(
        itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
            new PopupMenuItem<int>(
                value: 1, child: new Text('Add from contacts')),
            new PopupMenuItem<int>(
                value: 2, child: new Text('Confidential mode')),
            new PopupMenuItem<int>(
                value: 3, child: new Text('Save draft')),
            new PopupMenuItem<int>(
                value: 4, child: new Text('Discard')),
            new PopupMenuItem<int>(
                value: 5, child: new Text('Settings')),
            new PopupMenuItem<int>(
                value: 6, child: new Text('Help and feedback')),
        ],
      ),
          )
        ],
        backgroundColor: Colors.blue,
        

        ) ,
        body:ListView(
          children: [
           ListTile(
                   leading:Text('From     :',style: TextStyle(fontWeight: FontWeight.bold),),
                  title:TextFormField(
                     maxLines: 1,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                     focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
                   labelText: 'abc@gmail.com',
                    ),    
                  ),
           ),
           ListTile(
                   leading:Text('To          :',style: TextStyle(fontWeight: FontWeight.bold),),
                  title:TextFormField(
                     maxLines: 1,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                     focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
                   labelText: 'abc@gmail.com',
                    ),    
                  ),
           ),
           ListTile(
                   leading:Text('Subject :',style: TextStyle(fontWeight: FontWeight.bold),),
                  title:TextFormField(
                     maxLines: 1,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                     focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 5.0),
                borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
                    ),    
                  ),
           ),
           Container(
             child: TextField(
               maxLines:null,
                decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Compose",
                      
                      ), 
             ),
           )
           
          ],
        ) ,
        ),
    );
  }
}


