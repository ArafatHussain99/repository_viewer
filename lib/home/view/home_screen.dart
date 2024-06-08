import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:repository_viewer/home/models/repository_list.dart';
import 'package:repository_viewer/repository_detail/view/repository_detail_screen.dart';

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
              value.fold(
                (l) => Fluttertoast.showToast(msg: l),
                (r) => repositoryLists = r.items!,
              ),
              setState(() {
                apiLoading = false;
              }),
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: apiLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: repositoryLists.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RepositoryDetailScreen.id,
                        arguments: repositoryLists[index]);
                  },
                  child: Padding(
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
                            repositoryLists[index].license != null
                                ? Text(repositoryLists[index].license!.name!)
                                : Container(),
                          ],
                        )
                        // ListTile(
                        //   leading: Text(repositoryLists[index]
                        //       .stargazersCount
                        //       .toString()),
                        //   title: Text(repositoryLists[index].license!.name!),
                        // ),
                        ),
                  ),
                );
              },
            ),
    );
  }
}
