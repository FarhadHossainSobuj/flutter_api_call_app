

import '../api_service/api_constant.dart';
import '../api_service/api_service.dart';
import '../api_service/base_service.dart';
import '../models/post_model.dart';

class ApiRepository {
  final BaseService _apiService = ApiService();

  Future<List<Post>> fetchPostList() async {
    dynamic response = await _apiService.getGetResponse(ApiConstants.postList);
    List<Post> postList = [];
    response.forEach((v) {
      postList.add(Post.fromJson(v));
    });
    return postList;
  }
}