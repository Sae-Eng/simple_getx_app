import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_getx_app/pages/home/home_controller.dart';

import '../util/loading_overlay.dart';
import 'components/home_list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return LoadingOverlay(
            isLoading: controller.isLoading,
            child: ListView.builder(
              itemCount: controller.postsList.length,
              itemBuilder: (context, index) => HomeListItem(
                post: controller.postsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
