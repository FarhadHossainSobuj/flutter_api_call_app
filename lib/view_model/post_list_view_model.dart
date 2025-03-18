import 'dart:developer';

import 'package:get/get.dart';

import '../models/post_model.dart';
import '../repository/api_repository.dart';

class PostListViewModel extends GetxController
    with GetSingleTickerProviderStateMixin {
  var isLoading = false.obs;
  var postList = <Post>[].obs;

  @override
  void onInit() async {
    super.onInit();
    fetchMediaData();
  }

  _showProgressBar(){
    isLoading.value = true;
    update();
  }

  _hideProgressBar(){
    isLoading.value = false;
    update();
  }

  Future<void> fetchMediaData() async {
    _showProgressBar();
    try {
      postList.value = await ApiRepository().fetchPostList();
      _hideProgressBar();
    } catch (e) {
      log(e.toString());
      _hideProgressBar();
    }
    _hideProgressBar();
  }
}