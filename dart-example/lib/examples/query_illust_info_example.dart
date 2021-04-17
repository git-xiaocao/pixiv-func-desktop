import 'package:example/api/pixiv_request.dart';
import 'package:flutter/material.dart';

class QueryIllustInfoExample extends StatefulWidget {
  @override
  _QueryIllustInfoExampleState createState() => _QueryIllustInfoExampleState();
}

class _QueryIllustInfoExampleState extends State<QueryIllustInfoExample> {

  final TextEditingController illustIdInputController =
  TextEditingController(text: '${12345}'); //必须是数字

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: '插画id'),
              controller: illustIdInputController,
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                  PixivRequest.instance.queryIllustInfo(
                      int.parse(illustIdInputController.text),
                      decodeException: (e, response) {
                        print('反序列化异常$e\n响应:$response');
                      }, requestException: (e) {
                    print('请求异常$e\n响应:${e.response}');
                  }).then((data) {
                    if (data != null) print(data);
                  });
                },
                child: Text('查询插画信息')),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
