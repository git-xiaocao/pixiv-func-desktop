```dart
Future<Ranking?> getRanking(int page, {
    required String mode,
    required String type,
    void Function(Exception e, String response)? decodeException,
    void Function(DioError e)? requestException,
  });
```
<br>
<kbd>page</kbd> 页码
<br><br>

| mode | 备注 |
| :----: | :----:|
| daily (每日) | 有R-18 |
| weekly (本周) | 有R-18 |
| monthly (本月) |  |
| rookie (新人) |  |
| original (原创) |  |  
| male (男性欢迎) | type为 all 时有R-18 |
| female (女性欢迎) | type为 all 时有R-18 |

| type | 备注 |
| :----:| :----:|
| all | 全部 |
| illust | 插画 |
| manga | 漫画 |
| ugoira | 动图 |
