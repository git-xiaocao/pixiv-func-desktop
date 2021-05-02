import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:example/config.dart';

import 'data/bookmark_add/bookmark_add.dart';
import 'data/bookmarks/bookmarks.dart';
import 'data/follow_illusts/follow_illusts.dart';
import 'data/following/following.dart';
import 'data/illust_comment/illust_comment.dart';
import 'data/illust_info/illust_info.dart';
import 'data/illust_related/illust_related.dart';
import 'data/profile_all/profile_all.dart';
import 'data/ranking/ranking.dart';
import 'data/recommender/recommender.dart';
import 'data/search/search.dart';
import 'data/search_suggestion/search_suggestion.dart';
import 'data/user_bookmarks/user_bookmarks.dart';
import 'data/user_info/user_info.dart';
import 'data/user_works/user_works.dart';

class PixivRequest {
  static final _instance = PixivRequest();

  static PixivRequest get instance {
    return _instance;
  }

  late final Dio _httpClient;

  void updateHeaders() {
    _httpClient.options.headers = {
      'x-user-id': Config.userId,
      'Cookie': Config.cookie,
      'Referer': Config.referer,
      'User-Agent': Config.userAgent,
      'x-csrf-token': Config.token
    };
  }

  PixivRequest() {
    _httpClient = Dio(BaseOptions(
        connectTimeout: 1000 * 15,
        receiveTimeout: 1000 * 15,
        sendTimeout: 1000 * 15))
      ..options.validateStatus = (int? status) {
        return true;
      }
      ..options.headers = {
        'x-user-id': Config.userId,
        'Cookie': Config.cookie,
        'Referer': Config.referer,
        'User-Agent': Config.userAgent,
        'x-csrf-token': Config.token
      };
  }

  Future<Following?> getFollowing(int userId, int offset, int limit,
      {void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException}) async {
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
      if (response.data != null) {
        try {
          followingData = Following.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return followingData;
  }

  /// 获取排行榜
  Future<Ranking?> getRanking(
      int page, {
        required String mode,
        required String type,
        void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException,
      }) async {
    Ranking? rankingData;
    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/ranking/illust?',
          queryParameters: {
            'mode': mode,
            'page': page,
            'type': type,
            'lang': 'zh'
          });
      if (response.data != null) {
        try {
          rankingData = Ranking.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return rankingData;
  }

  /// 查询用户信息
  Future<UserInfo?> queryUserInfo(int userId,
      {void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException}) async {
    UserInfo? userInfoData;
    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/user/details',
          queryParameters: {'id': userId, 'lang': 'zh'});
      if (response.data != null) {
        try {
          userInfoData = UserInfo.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return userInfoData;
  }

  /// 查询插画信息
  Future<IllustInfo?> queryIllustInfo(int illustId,
      {void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException}) async {
    IllustInfo? illustInfoData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/illust/details',
          queryParameters: {'illust_id': illustId, 'lang': 'zh'});
      if (response.data != null) {
        try {
          illustInfoData = IllustInfo.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return illustInfoData;
  }

  /// 获取插画评论区
  Future<IllustComment?> getIllustComments(
      int workId,
      int page, {
        void Function(DioError e)? requestException,
        void Function(Exception e, String response)? decodeException,
      }) async {
    IllustComment? illustCommentData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/comment/illust?',
          queryParameters: {'work_id': workId, 'page': page, 'lang': 'zh'});

      if (response.data != null) {
        try {
          illustCommentData =
              IllustComment.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return illustCommentData;
  }

  /// 获取评论回复
  Future<IllustComment?> getCommentReplies(
      int commentId,
      int page, {
        void Function(DioError e)? requestException,
        void Function(Exception e, String response)? decodeException,
      }) async {
    IllustComment? illustCommentData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/comment/illust/replies?',
          queryParameters: {
            'comment_id': commentId,
            'page': page,
            'lang': 'zh'
          });

      if (response.data != null) {
        try {
          illustCommentData =
              IllustComment.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return illustCommentData;
  }

  ///获取插画的相关推荐(同类型)
  Future<IllustRelated?> getIllustRelated(
      int illustId,
      int limit, {
        void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException,
      }) async {
    IllustRelated? illustRelatedData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/recommender/related/illust',
          queryParameters: {
            'illust_id': illustId,
            'limit': limit,
            'exclude_illusts': 0,
            'lang': 'zh',
          });

      if (response.data != null) {
        try {
          illustRelatedData =
              IllustRelated.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return illustRelatedData;
  }

  /// 获取自己关注的用户的插画
  Future<FollowIllusts?> getFollowIllusts(
      int page, {
        bool? r18,
        void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException,
      }) async {
    FollowIllusts? followIllustsData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/follow/latest',
          queryParameters: {
            'type': 'illusts',
            'p': page,
            'include_meta': 0,
            'lang': 'zh',
            'mode': r18 == null
                ? 'all'
                : r18
                ? 'r18'
                : 'safe'
          });
      if (response.data != null) {
        try {
          followIllustsData =
              FollowIllusts.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return followIllustsData;
  }

  /// 获取用户所有作品的编号
  Future<ProfileAll?> getUserAllWork(int userId,
      {void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException}) async {
    ProfileAll? profileAllData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/ajax/user/$userId/profile/all',
          queryParameters: {
            'lang': 'zh',
          });
      if (response.data != null) {
        try {
          profileAllData = ProfileAll.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return profileAllData;
  }

  /// 查询用户作品
  Future<UserWorks?> queryUserWorksById(List<int> workIdList, bool isFirstPage,
      {void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException}) async {
    UserWorks? userWorksData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/ajax/user/${Config.userId}/profile/illusts?',
          queryParameters: {
            'ids[]': workIdList,
            'lang': 'zh',
            'work_category': 'illust',
            'is_first_page': isFirstPage ? 1 : 0
          });

      if (response.data != null) {
        try {
          var map = jsonDecode(response.data!);
          userWorksData = UserWorks.fromJson(map);
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return userWorksData;
  }

  /// 查询用户收藏的图
  Future<UserBookmarks?> queryUserBookmarks(int userId, int offset, int limit,
      {void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException}) async {
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
      if (response.data != null) {
        try {
          userBookmarksData =
              UserBookmarks.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return userBookmarksData;
  }

  /// 获取推荐
  Future<Recommender?> getRecommender(int quantity,
      {bool? r18,
        void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException}) async {
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

      if (response.data != null) {
        try {
          recommenderData = Recommender.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }
    return recommenderData;
  }

  /// 获取书签(List)
  Future<Bookmarks?> getBookmarks(int userId, int page,
      {void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException}) async {
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

      if (response.data != null) {
        try {
          bookmarksData = Bookmarks.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }
    return bookmarksData;
  }

  void downloadImage(String url, String savePath,
      {void Function(int count, int total)? onReceiveProgress}) async {
    Dio httpClient = Dio(BaseOptions(
        connectTimeout: 1000 * 10,
        receiveTimeout: 1000 * 10,
        sendTimeout: 1000 * 10))
      ..options.headers = {
        'Referer': Config.referer,
        'User-Agent': Config.userAgent
      };

    await httpClient.download(url, savePath,
        onReceiveProgress: onReceiveProgress);
    httpClient.close();
  }

  ///添加书签
  Future<BookmarkAdd?> bookmarkAdd(int illustId,
      {required String comment,
        required List<String> tags,
        void Function(Exception e, String response)? decodeException,
        void Function(DioError e)? requestException}) async {
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

      if (response.data != null) {
        try {
          var map = jsonDecode(response.data!);
          bookmarkAddData = BookmarkAdd.fromJson(map);
        } on Exception catch (e) {
          decodeException?.call(e, response.data!);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return bookmarkAddData;
  }

  ///删除书签
  Future<bool> bookmarkDelete(int bookmarkId,
      {void Function(DioError e)? requestException}) async {
    bool success = false;

    try {
      var response = await _httpClient.post<String>(
          'https://www.pixiv.net/rpc/index.php',
          data: FormData.fromMap(
              {'mode': 'delete_illust_bookmark', 'bookmark_id': bookmarkId}));
      if (response.data != null) {
        var body = jsonDecode(response.data!);
        if (body['error'] is bool) {
          success = !body['error'];
        } else {
          success = false;
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }
    return success;
  }

  Future<bool> followUserAdd(int userId,
      {void Function(DioError e)? requestException}) async {
    bool success = false;

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
      if (response.data != null) {
        success = response.data! == '[]';
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }
    return success;
  }

  Future<bool> followUserDelete(int userId,
      {void Function(DioError e)? requestException}) async {
    bool success = false;

    try {
      var response = await _httpClient.post<String>(
          'https://www.pixiv.net/rpc_group_setting.php',
          data: FormData.fromMap(
              {'mode': 'del', 'type': 'bookuser', 'id': '$userId'}));
      if (response.data != null) {
        var body = jsonDecode(response.data!);
        if (body['user_id'] is String) {
          success = int.parse(body['user_id'] as String) == userId;
        } else {
          success = false;
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }
    return success;
  }

  Future<SearchSuggestion?> getSearchSuggestion({
    String mode = 'all',
    void Function(DioError e)? requestException,
    void Function(Exception e)? decodeException,
  }) async {
    SearchSuggestion? searchSuggestionData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/ajax/search/suggestion',
          queryParameters: {'mode': mode, 'lang': 'zh'});

      if (response.data != null) {
        try {
          searchSuggestionData =
              SearchSuggestion.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return searchSuggestionData;
  }

  Future<Search?> search(
      String keyword, {
        required int page,
        required String mode,
        required String type,
        required String searchMode,
        String startDate = '',
        String endDate = '',
        void Function(DioError e)? requestException,
        void Function(Exception e)? decodeException,
      }) async {
    Search? searchData;

    try {
      var response = await _httpClient.get<String>(
          'https://www.pixiv.net/touch/ajax/search/illusts',
          queryParameters: {
            'include_meta': '0',
            'mode': mode,
            'scd': startDate,
            'ecd': endDate,
            'type': type,
            's_mode': searchMode,
            'p': page,
            'word': keyword,
            'lang': 'zh'
          });

      if (response.data != null) {
        try {
          searchData = Search.fromJson(jsonDecode(response.data!));
        } on Exception catch (e) {
          decodeException?.call(e);
        }
      }
    } on DioError catch (e) {
      requestException?.call(e);
    }

    return searchData;
  }
}
