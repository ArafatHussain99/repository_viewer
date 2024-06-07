import 'package:flutter/material.dart';
import 'package:repository_viewer/home/models/repository_list.dart';

class RepositoryDetailScreen extends StatelessWidget {
  static const String id = '/repositoryScreen';
  final Items repositoryItem;
  const RepositoryDetailScreen({super.key, required this.repositoryItem});

  @override
  Widget build(BuildContext context) {
    return Text(repositoryItem.toString());
  }
}
