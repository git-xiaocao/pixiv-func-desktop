import 'package:example/api/pixiv_request.dart';
import 'package:flutter/material.dart';

class GetRankingExample extends StatefulWidget {
  @override
  _GetRankingExampleState createState() => _GetRankingExampleState();
}

class _GetRankingExampleState extends State<GetRankingExample> {
  /// 第一页1开始 一共有500条 每页100条 (开R18只有100条)
  final TextEditingController pageCountInputController =
      TextEditingController(text: '${1}'); //必须是数字

  ///如果你的号没开R18应该是获取不到R18排行榜的 (我是开着的)
  bool isR18Mode = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: '页码'),
              controller: pageCountInputController,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('R18模式'),
                Switch(
                  value: isR18Mode,
                  onChanged: (bool checked) {
                    setState(() {
                      isR18Mode = checked;
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  PixivRequest.instance.getRanking(
                      int.parse(pageCountInputController.text),
                      mode: isR18Mode ? 'daily' : 'daily_r18',
                      type: 'all', decodeException: (e, response) {
                    print('反序列化异常$e\n响应:$response');
                  }, requestException: (e) {
                    print('请求异常$e\n响应:${e.response}');
                  }).then((data) {
                    if (data != null) print(data);
                  });
                },
                child: Text('获取排行榜')),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
