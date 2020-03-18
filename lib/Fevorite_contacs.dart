import 'package:chat/Message.dart';
import 'package:flutter/material.dart';
class FevoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Favorites Contacts',style: TextStyle(color: Colors.blueGrey,
                  fontSize: 18.0, fontWeight: FontWeight.bold,
              letterSpacing: 1.2),
              ),
              IconButton(icon:Icon(Icons.more_horiz),
                iconSize: 30.0,
                color: Colors.blueGrey,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            itemCount: favorites.length,
            itemBuilder: (BuildContext context,int index){
              return Padding(
                padding:  EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(favorites[index].imageUrl),
                    ),
                    Text(favorites[index].name,style: TextStyle(
                      color: Colors.blueGrey,fontSize:16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ],
                ),
              );
            },
          )
        )
      ],
    );
  }
}
