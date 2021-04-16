import 'api/pixiv_request.dart';

void main() {
  PixivRequest.instance.getRanking(1, true, decodeException: (e, response) {
    print('反序列化异常:$e\n响应:$response');
  }, requestException: (e) {
    print('请求异常:$e\n响应:${e.response}');
  }).then((ranking) {
    print(ranking);
  });
}
