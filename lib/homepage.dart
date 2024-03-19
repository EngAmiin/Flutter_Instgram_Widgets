import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:list_view/circle.dart';
import 'package:list_view/square.dart';

class homepage extends StatelessWidget {
  final List _posts = ['Post1', 'Post2', 'Post3', 'Post4', 'Post5'];
  final List _Stories = [
    '_Stories1',
    '_Stories2',
    '_Stories3',
    '_Stories4',
    '_Stories5',
    '_Stories6',
    '_Stories7'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //instgram Stories
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _Stories.length,
              itemBuilder: (context, index) {
                return circle(child: _Stories[index]);
              },
              // children: [circle(child: _posts[index])],
            ),
          ),
          //Instgram Posts
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: ((context, index) {
                return square(
                  child: _posts[index],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
