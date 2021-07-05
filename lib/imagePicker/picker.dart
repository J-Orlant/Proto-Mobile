// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:proto/imagePicker/file.dart';
// import 'package:storage_path/storage_path.dart';

// class Picker extends StatefulWidget {
//   @override
//   _PickerState createState() => _PickerState();
// }

// class _PickerState extends State<Picker> {
//   late List<FileModel> files;
//   late FileModel selectedModel;
//   late String image;
//   @override
//   void initState() {
//     super.initState();
//     getImagePath();
//   }

//   getImagePath() async {
//     var imagePath = await StoragePath.imagesPath;
//     var images = jsonDecode(imagePath) as List;
//     files = images.map<FileModel>((e) => FileModel.fromJson(e)).toList();
//     if (files != null && files.length > 0)
//       setState(() {
//         selectedModel = files[0];
//         image = files[0].files[0];
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Icon(Icons.clear),
//                     DropdownButtonHideUnderline(
//                         child: DropdownButton(
//                       items: getItems(),
//                       onChanged: (d) {},
//                     ))
//                   ],
//                 ),
//                 Text(
//                   'Next',
//                   style: TextStyle(color: Colors.blue),
//                 )
//               ],
//             ),
//             Divider(),
//             Container(
//                 height: MediaQuery.of(context).size.height * 0.45,
//                 child: image != null
//                     ? Image.file(
//                         File(image),
//                         height: MediaQuery.of(context).size.height * 0.45,
//                         width: MediaQuery.of(context).size.width,
//                       )
//                     : Container()),
//             Divider()
//           ],
//         ),
//       ),
//     );
//   }

//   List<DropdownMenuItem> getItems() {
//     return files
//             .map(
//               (e) => DropdownMenuItem(
//                 child: Text(e.folder),
//                 value: e,
//               ),
//             )
//             .toList() ??
//         [];
//   }
// }
