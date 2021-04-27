```dart
Future<Search?> search(String keyword, {
  required int page,
  required String mode,
  required String type,
  required String mode,
  void Function(DioError e)? requestException,
  void Function(Exception e)? decodeException,
});
```
<br>
<kbd>page</kbd> 页码
<br><br>
<kbd>keyword</kbd> '关键字1 关键字2 (包含1 OR 包含2 OR 包含3) -不包含1 -不包含2 -不包含3'
<br><br>

| mode | 备注 |
| :----: | :----: |
| all | 全部 |
| safe | 全年龄 |
| r18 | R-18 |

| type | 备注 |
| :----: | :----: |
| all | 全部 |
| illust | 插画 |
| manga | 漫画 |
| ugoira | 动图 |

| searchMode | 备注 |
| :----: | :----: |
| s_tag_full | 标签完全一致 |
| s_tc | 标题·简介 |
| s_tag | 标签部分一致 |
| s_tag_tc | 标签·标题·内容 |

