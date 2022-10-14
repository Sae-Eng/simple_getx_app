import 'package:get/get.dart';
import 'package:simple_getx_app/data/remote/posts_provider.dart';

import '../../data/model/post.dart';

class HomeController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;

  @override
  void onInit() {
    PostsProvider().getPostsList(
      beforeSend: () {
        print('before send');
      },
      onSuccess: (posts) {
        postsList.addAll(posts);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print('Error');
      },
    );
    super.onInit();
  }
}
