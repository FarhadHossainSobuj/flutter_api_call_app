import 'package:get/get.dart';
import 'package:sdc/view_model/post_list_view_model.dart';

class ViewModelBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PostListViewModel> (() => PostListViewModel(), fenix: true);
  }

}