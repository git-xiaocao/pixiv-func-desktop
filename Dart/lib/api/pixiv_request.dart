import 'dart:convert';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import 'data/bookmark_add/bookmark_add.dart';
import 'data/bookmarks/bookmarks.dart';
import 'data/follow_illusts/follow_illusts.dart';
import 'data/following/following.dart';
import 'data/illust_comment/illust_comment.dart';
import 'data/illust_info/illust_info.dart';
import 'data/profile_all/profile_all.dart';
import 'data/ranking/ranking.dart';
import 'data/recommender/recommender.dart';
import 'data/user_bookmarks/user_bookmarks.dart';
import 'data/user_info/user_info.dart';
import 'data/user_works/user_works.dart';

//自己的
const int userId = 0;

const String cookie = '';

const String token = '';

const String referer = 'https://www.pixiv.net/';

const String userAgent =
    'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/88.0';

const String proxyIP = '127.0.0.1';

const int proxyPort = 54321;

class PixivRequest {
  static final _instance = PixivRequest();

  static PixivRequest get instance {
    return _instance;
  }

  late final Dio _httpClient;

  PixivRequest() {
    _httpClient = Dio(BaseOptions(
        connectTimeout: 1000 * 15,
        receiveTimeout: 1000 * 15,
        sendTimeout: 1000 * 15))
      ..options.headers = {
        'x-user-id': userId,
        'Cookie': cookie,
        'Referer': referer,
        'User-Agent': userAgent,
        'x-csrf-token': token
      };
  }

  Future<Following?> getFollowing(int userId, int offset, int limit,
      {void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    Following? followingData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/ajax/user/$userId/following',
          queryParameters: {
            'offset': offset,
            'limit': limit,
            'rest': 'show',
            'tag': '',
            'lang': 'zh'
          });
      if (response.statusCode == 200 && response.data != null) {
        try {
          followingData = Following.fromJson(jsonDecode(response.data!));
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }
    return followingData;
  }

  /// 获取排行榜
  Future<Ranking?> getRanking(int page, bool r18,
      {void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };
    Ranking? rankingData;
    try {
      var response = await _httpClient
          .get<String>('https://www.pixiv.net/ranking.php', queryParameters: {
        'mode': r18 ? 'daily_r18' : 'daily',
        'p': page,
        'format': 'json'
      });
      if (response.statusCode == 200 && response.data != null) {
        try {
          rankingData = Ranking.fromJson(jsonDecode(response.data!));
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }

    return rankingData;
  }

  /// 查询用户信息
  Future<UserInfo?> queryUserInfo(int userId,
      {void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    UserInfo? userInfoData;
    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/user/details',
          queryParameters: {'id': userId, 'lang': 'zh'});
      if (response.statusCode == 200 && response.data != null) {
        try {
          userInfoData = UserInfo.fromJson(jsonDecode(response.data!));
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }
    return userInfoData;
  }

  /// 查询插画信息
  Future<IllustInfo?> queryIllustInfo(int illustId,
      {void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    IllustInfo? illustInfoData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/illust/details',
          queryParameters: {'illust_id': illustId, 'lang': 'zh'});
      if (response.statusCode == 200 && response.data != null) {
        try {
          illustInfoData = IllustInfo.fromJson(jsonDecode(response.data!));
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }

    return illustInfoData;
  }

  /// 获取插画评论区
  Future<IllustComment?> getIllustComments(int illustId, int offset, int limit,
      {void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    IllustComment? illustCommentData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/ajax/illusts/comments/roots',
          queryParameters: {
            'illust_id': illustId,
            'offset': offset,
            'limit': limit,
            'lang': 'zh'
          });

      if (response.statusCode != 200 && response.data != null) {
        try {
          illustCommentData =
              IllustComment.fromJson(jsonDecode(response.data!));
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }

    return illustCommentData;
  }

  /// 获取自己关注的用户的插画
  Future<FollowIllusts?> getFollowIllusts(int page, bool r18,
      {void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    FollowIllusts? followIllustsData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/follow/latest',
          queryParameters: {
            'type': 'illusts',
            'p': page,
            'include_meta': 0,
            'lang': 'zh',
            'mode': r18 ? 'r18' : ''
          });
      if (response.statusCode == 200 && response.data != null) {
        try {
          followIllustsData =
              FollowIllusts.fromJson(jsonDecode(response.data!));
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }

    return followIllustsData;
  }

  /// 获取用户所有作品的编号
  Future<ProfileAll?> getProfileHome(int userId,
      {void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    ProfileAll? profileAllData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/ajax/user/$userId/profile/all',
          queryParameters: {
            'lang': 'zh',
          });
      if (response.statusCode == 200 && response.data != null) {
        try {
          profileAllData = ProfileAll.fromJson(jsonDecode(response.data!));
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }

    return profileAllData;
  }

  /// 查询用户作品
  Future<UserWorks?> queryUserWorksById(List<int> workIdList, bool isFirstPage,
      {void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    UserWorks? userWorksData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/ajax/user/$userId/profile/illusts?',
          queryParameters: {
            'ids[]': workIdList,
            'lang': 'zh',
            'work_category': 'illust',
            'is_first_page': isFirstPage ? 1 : 0
          });

      if (response.statusCode == 200 && response.data != null) {
        try {
          var map = jsonDecode(response.data!);
          userWorksData = UserWorks.fromJson(map);
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }

    return userWorksData;
  }

  /// 查询用户收藏的图
  Future<UserBookmarks?> queryUserBookmarks(int userId, int offset, int limit,
      {void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    UserBookmarks? userBookmarksData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/ajax/user/$userId/illusts/bookmarks',
          queryParameters: {
            'tag': '',
            'offset': offset,
            'limit': limit,
            'rest': 'show',
            'lang': 'zh',
          });
      if (response.statusCode == 200 && response.data != null) {
        try {
          userBookmarksData =
              UserBookmarks.fromJson(jsonDecode(response.data!));
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }

    return userBookmarksData;
  }

  /// 获取推荐
  Future<Recommender?> getRecommender(int quantity,
      {bool? r18,
      void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    Recommender? recommenderData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/rpc/recommender.php',
          queryParameters: {
            'type': 'illust',
            'sample_illusts': 'auto',
            'num_recommendations': quantity,
            'page': 'discovery',
            'mode': r18 == null
                ? 'all'
                : r18
                    ? 'r18'
                    : 'safe'
          });

      if (response.statusCode == 200 && response.data != null) {
        try {
          recommenderData = Recommender.fromJson(jsonDecode(response.data!));
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }
    return recommenderData;
  }

  /// 获取书签(List)
  Future<Bookmarks?> getBookmarks(int userId, int page,
      {void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    Bookmarks? bookmarksData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/user/bookmarks',
          queryParameters: {
            'id': userId,
            'type': 'illust',
            'p': page,
            'lang': 'zh'
          });

      if (response.statusCode == 200 && response.data != null) {
        try {
          bookmarksData = Bookmarks.fromJson(jsonDecode(response.data!));
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }
    return bookmarksData;
  }

  void downloadImage(String url, String savePath,
      {void Function(int count, int total)? onReceiveProgress}) async {
    var httpClient = Dio(BaseOptions(
        connectTimeout: 1000 * 10,
        receiveTimeout: 1000 * 10,
        sendTimeout: 1000 * 10))
      ..options.headers = {'Referer': referer, 'User-Agent': userAgent};

    (httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    await httpClient.download(url, savePath,
        onReceiveProgress: onReceiveProgress);
    httpClient.close();
  }

  ///添加书签
  Future<BookmarkAdd?> bookmarkAdd(int illustId,
      {required String comment,
      required List<String> tags,
      void Function(Object e)? decodeException,
      void Function(Object e)? requestException}) async {
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    BookmarkAdd? bookmarkAddData;

    try {
      var response = await _httpClient.post<String>(
          'https://www.pixiv.net/ajax/illusts/bookmarks/add',
          data: jsonEncode({
            'illust_id': '$illustId', //pixiv要的string类型
            'restrict': 0,
            'comment': comment,
            'tags': tags
          }));

      if (response.statusCode == 200 && response.data != null) {
        try {
          var map = jsonDecode(response.data!);
          bookmarkAddData = BookmarkAdd.fromJson(map);
        } catch (e) {
          decodeException?.call(e);
        }
      }
    } catch (e) {
      requestException?.call(e);
    }

    return bookmarkAddData;
  }

  ///删除书签
  Future<bool> bookmarkDelete(int bookmarkId,
      {void Function(Object e)? requestException}) async {
    var success = false;
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    try {
      var response = await _httpClient.post<String>(
          'https://www.pixiv.net/rpc/index.php',
          data: FormData.fromMap(
              {'mode': 'delete_illust_bookmark', 'bookmark_id': bookmarkId}));
      if (response.statusCode == 200 && response.data != null) {
        var body = jsonDecode(response.data!);
        if (body['error'] is bool) {
          success = !body['error'];
        } else {
          success = false;
        }
      }
    } catch (e) {
      requestException?.call(e);
    }
    return success;
  }

  Future<bool> followUserAdd(int userId,
      {void Function(Object e)? requestException}) async {
    var success = false;
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    try {
      var response = await _httpClient.post<String>(
          'https://www.pixiv.net/bookmark_add.php',
          data: FormData.fromMap({
            'mode': 'add',
            'type': 'user',
            'user_id': '$userId',
            'tag': '',
            'restrict': '0',
            'format': 'json'
          }));
      if (response.statusCode == 200 && response.data != null) {
        success = response.data! == '[]';
      }
    } catch (e) {
      requestException?.call(e);
    }
    return success;
  }

  Future<bool> followUserDelete(int userId,
      {void Function(Object e)? requestException}) async {
    var success = false;
    (_httpClient.httpClientAdapter as DefaultHttpClientAdapter)
        .onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return 'PROXY $proxyIP:$proxyPort';
      };
    };

    try {
      var response = await _httpClient.post<String>(
          'https://www.pixiv.net/rpc_group_setting.php',
          data: FormData.fromMap(
              {'mode': 'del', 'type': 'bookuser', 'id': '$userId'}));
      if (response.statusCode == 200 && response.data != null) {
        var body = jsonDecode(response.data!);
        if (body['user_id'] is String) {
          success = int.parse(body['user_id'] as String) == userId;
        } else {
          success = false;
        }
      }
    } catch (e) {
      requestException?.call(e);
    }
    return success;
  }
}
