import 'package:flutter/material.dart';
import 'package:repository_viewer/constants/global_text_style.dart';
import 'package:repository_viewer/home/models/repository_list.dart';

class RepositoryDetailScreen extends StatelessWidget {
  static const String id = '/repositoryScreen';
  final Items repositoryItem;
  const RepositoryDetailScreen({super.key, required this.repositoryItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${repositoryItem.fullName}',
              style: GlobalTextStyle.robotoH4,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${repositoryItem.createdAt}',
              style: GlobalTextStyle.robotoPhotoLabel,
            ),
            const SizedBox(
              height: 10,
            ),
            Text('${repositoryItem.description}'),
          ],
        ),
      ),
    ));
  }
}
