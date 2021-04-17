import 'package:example/api/pixiv_request.dart';
import 'package:example/examples/get_ranking_example.dart';
import 'package:example/examples/get_user_all_work_example.dart';
import 'package:example/examples/query_illust_info_example.dart';
import 'package:example/examples/query_user_info_example.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scrollbar(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Wrap(

            runSpacing: 50,
            spacing: 50,
            children: [
              GetRankingExample(),
              QueryIllustInfoExample(),
              QueryUserInfoExample(),
              GetUserAllWorkExample(),
            ],
          ),
        ),
      ),
    ));
  }
}
