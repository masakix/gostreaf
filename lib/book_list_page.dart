import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return ChangeNotifierProvider(
      child: Scaffold (
        appBar: AppBar(
          title: Text('本一覧'),
        ),
        body: Container(),
         ),
    );
      }
   }
