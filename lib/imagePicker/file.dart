import 'package:storage_path/storage_path.dart';
import 'dart:io';

class FileModel {
  late List<String> files;
  late String folder;

  FileModel({required this.files, required this.folder});

  FileModel.fromJson(Map json) {
    files = json['files'].cast<String>();
    folder = json['folderName'];
  }
}
