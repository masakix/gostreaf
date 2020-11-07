import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('本一覧'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream:FirebaseFirestore.instance.collection('books').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
         if (snapshot.hasError) return new Text('Error: ${snapshot.error}');
         switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Text('Loding');
          default:
           return ListView(
            children:
               snapshot.data.docs.map((DocumentSnapshot document) {
               return ListTile(
                  title: Text(document['title']),
                 );
                }).toList(),
               );
             }
          },
        ),
       );
      }
   }
