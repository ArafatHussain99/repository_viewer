import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:repository_viewer/home/models/repository_list.dart';

import '../provider/repository_list_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const String id = '/homeScreen';

  const HomeScreen({super.key});

  @override
  MobileProvidingScreenState createState() => MobileProvidingScreenState();
}

class MobileProvidingScreenState extends ConsumerState<HomeScreen> {
  List<Items> repositoryLists = [];
  bool apiLoading = true;

  @override
  void initState() {
    getPaymentMethods();
    super.initState();
  }

  void getPaymentMethods() {
    ref
        .read(getRepositoryListNotifierProvider.notifier)
        .getRepository()
        .then((value) => {
              value.fold((l) => Fluttertoast.showToast(msg: l),
                  (r) => repositoryLists = r.items!),
              setState(() {
                apiLoading = false;
              }),
            });
  }

  @override
  Widget build(BuildContext context) {
    return apiLoading
        ? const CircularProgressIndicator()
        : SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    itemCount: repositoryLists.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(border: Border.all()),
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(repositoryLists[index]
                                    .stargazersCount
                                    .toString()),
                                Text(repositoryLists[index].license!.name!),
                              ],
                            )
                            // ListTile(
                            //   leading: Text(repositoryLists[index]
                            //       .stargazersCount
                            //       .toString()),
                            //   title: Text(repositoryLists[index].license!.name!),
                            // ),
                            ),
                      );
                    })
              ],
            ),
          );
  }
}
