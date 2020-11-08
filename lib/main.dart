import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gostreaf/book_list_model.dart';
import 'package:gostreaf/book_list_page.dart';
import 'package:provider/provider.dart';

import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();//Firebase.initializeApp()の呼び出し方
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider <MainModel>(
        create:(_) => MainModel(),
        child:Scaffold(
          appBar: AppBar(
            title: Text('最初の画面'),
               )
          body: Consumer<MainModel>(builder:(context,model,child){
            return Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Icon(
                    Icons. location_pin,
                    size: 100,
                    color: Colors.pink,
                     ),
                 RaisedButton(
                     child: Text('画面遷移'),
                      onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  NextPage(),
                            ),
                          );
                        },
                      ),
                 RaisedButton(
                     child: Text('Firebase'),
                     onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => BookListPage(),
                                ),
                              );
                            },
                         ),
          ],//children
        ),
        );
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    ),
    );
    }),
};
