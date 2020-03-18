import 'package:chat/Fevorite_contacs.dart';
import 'package:chat/Message.dart';
import 'package:chat/categoryselector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),
        iconSize: 30.0,
        color: Colors.white,
        onPressed: (){},),
        title: Text(
          'Chat',
          style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),
        body: Column(
          children: <Widget>[
            CategorySelection(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                   color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                  ),
                ),
                child:Column(
                  children: <Widget>[
                    FevoriteContacts(),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)
                          ),
                          child: ListView.builder(
                            itemCount: chats.length,
                            itemBuilder: (BuildContext context,int index){
                              final Message chat = chats[index];
                              return Container(
                                margin: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 20.0),
                                padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        children: <Widget>[
                                          CircleAvatar(
                                            radius: 25.0,
                                            backgroundImage: AssetImage(chat.sender.imageUrl),
                                          ),
                                          SizedBox(width: 10.0,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(chat.sender.name,
                                              style: TextStyle(color: Colors.black,
                                                fontSize: 14.0,fontWeight: FontWeight.bold
                                              ),
                                              ),
                                              SizedBox(height: 5.0,),
                                              Text(
                                                chat.text,
                                                style: TextStyle(color: Colors.black,
                                               fontSize: 10.0,fontWeight: FontWeight.bold
                                              ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 5.0,),
                                    Column(
                                      children: <Widget>[
                                        Text(chat.time),
                                        Text('New'),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            }
                          ),
                        ),
                      ),
                    ),
                    ],
                )
              ),
            )
          ],
        ),
    );
  }
}
