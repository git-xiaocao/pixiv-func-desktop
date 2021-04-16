#Pixiv爬虫


先配置 [Cookie和Token 以及代理](./lib/api/pixiv_request.dart)
<br/>

<br/>
###去pixiv.net 打开调试 随意点一个书签或者关注
![示例](./img/1.png)

```dart
import 'api/pixiv_request.dart';

void main() {
  PixivRequest.instance.getRanking(1, true, decodeException: (e, response) {
    print('异常:$e\n响应:$response');
  }, requestException: (e) {
    print('异常:$e\n响应:${e.response}');
  }).then((ranking) {
    print(ranking);
  });
}

```

