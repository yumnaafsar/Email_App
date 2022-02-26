import 'dart:math';

import 'package:flutter/material.dart';
import 'package:email_app/model/emailData.dart';
import 'package:email_app/data/data.dart';
import 'createEmail.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _random = Random();
  _buildEmail()
  {
      List<Widget> dataList=[];
      
      data1.forEach((Data data){
        dataList.add(
          GestureDetector(
      
          child:ListTile(leading:CircleAvatar(child: Text(data.symbol),
          backgroundColor: Colors.primaries[_random.nextInt(Colors.primaries.length)]
                  [_random.nextInt(9) * 100],
          ),
                    title:Text(data.name,style:TextStyle(fontWeight:FontWeight.bold )),
                    subtitle: Row(
                        children: [
                          Text(data.subject),
                          SizedBox(width:5),
                          Text(data.info) ],), 
                           trailing: Text(data.date),
                    ),
        ),
        );
      });

      return Column(
      children: dataList,
    );
    
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar:AppBar(
          title:Text('Email App'),
          actions:<Widget> [
            Padding(padding: 
            EdgeInsets.only(right: 20.0),
            child: CircleAvatar(child: Text('Y'),backgroundColor: Colors.yellow,),
            )],
        ),
        drawer: Drawer(
          child:ListView(
            children:[
              Container(
                height: 50.0,
                child: DrawerHeader(child: Text("Email"),)),
                ListTile(
                      leading: Icon(Icons.collections_outlined  ),
                      title: Text('All inboxes'),
                    ),
                   ListTile(
                     leading:Icon(Icons.inbox ),
                    title: Text('Primary'),
                  ),
                   ListTile(
                     leading: Icon(Icons.group_outlined),
                    title: Text('Social'),
                  ),
                   ListTile(
                     leading: Icon(Icons.local_offer_outlined ),
                    title: Text('Promotions'),
                  ),
              Column(
                children:[
                  Container(
                  decoration: BoxDecoration(
                   border: Border.all(
                     color:Colors.grey,
                   ),
                  ),
                    child: ListTile(
                        leading:Text("All labels",),
                      ),
                  ),
                  ListTile(
                    leading:Icon(Icons.grade_outlined),
                    title: Text('Starred'),
                  ),
                   ListTile(
                     leading:Icon(Icons.alarm_sharp),
                    title: Text('Snoozed'),
                  ),
                   ListTile(
                     leading:Icon(Icons.send),
                    title: Text('Sent'),
                  ),
                   ListTile(
                     leading:Icon(Icons.schedule_send_outlined ),
                    title: Text('Scheduled'),
                  ),
                   ListTile(
                     leading:Icon(Icons.insert_drive_file_outlined),
                    title: Text('Draft'),
                  ),
                  ListTile(
                    leading: Icon(Icons.mark_as_unread_outlined ),
                    title: Text('All mail'),
                  ),
                  ListTile(
                    leading: Icon(Icons.report_sharp ),
                    title: Text('Spam'),
                  ),
                  ListTile(
                    leading:Icon(Icons.delete_rounded),
                    title: Text('Bin'),
                  ),
                ]
              )
            ]
          ),
        ),
        body:ListView(children: [
          _buildEmail(),
        ],),

        


      floatingActionButton: new FloatingActionButton(
      elevation: 0.0,
      child: new Icon(Icons.add),
      onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>createEmail()));
          },
    ),
    
      ),
    );
  }
}