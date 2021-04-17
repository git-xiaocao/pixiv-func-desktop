import 'package:example/api/pixiv_request.dart';
import 'package:flutter/material.dart';

class QueryUserInfoExample extends StatefulWidget {
  @override
  _QueryUserInfoExampleState createState() => _QueryUserInfoExampleState();
}

class _QueryUserInfoExampleState extends State<QueryUserInfoExample> {

  ///可以是自己
  final TextEditingController userIdInputController =
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
              decoration: InputDecoration(labelText: '用户id'),
              controller: userIdInputController,
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                  PixivRequest.instance.queryUserInfo(
                      int.parse(userIdInputController.text),
                      decodeException: (e, response) {
                        print('反序列化异常$e\n响应:$response');
                      }, requestException: (e) {
                    print('请求异常$e\n响应:${e.response}');
                  }).then((data) {
                    if (data != null) print(data);
                  });
                },
                child: Text('查询用户信息')),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
