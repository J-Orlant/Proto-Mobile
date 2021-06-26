import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_file_manager/flutter_file_manager.dart';
import 'package:path_provider_ex/path_provider_ex.dart';

class AddPostingan extends StatefulWidget {
  @override
  _AddPostinganState createState() => _AddPostinganState();
}

class _AddPostinganState extends State<AddPostingan> {
  late CameraController controller;

  Future<void> initializeCamera() async {
    var cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    await controller.initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<File?> takePicture() async {
    Directory root = await getTemporaryDirectory();
    String directoryPath = '${root.path}/Guided_Camera';
    await Directory(directoryPath).create(recursive: true);
    String filePath = '$directoryPath/${DateTime.now()}.jpg';

    try {
      controller.takePicture();
    } catch (e) {
      return null;
    }

    return File(filePath);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Stack(
          children: [
            FutureBuilder(
              future: initializeCamera(),
              builder: (_, snapshot) =>
                  (snapshot.connectionState == ConnectionState.done)
                      ? Stack(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width *
                                      controller.value.aspectRatio +
                                  60,
                              child: CameraPreview(controller),
                            ),
                            Positioned(
                              bottom: 10,
                              left: 50,
                              right: 50,
                              child: Container(
                                width: 70,
                                height: 70,
                                margin: EdgeInsets.only(top: 50),
                                child: RaisedButton(
                                  onPressed: () async {
                                    if (!controller.value.isTakingPicture) {
                                      File? result = await takePicture();
                                      // Navigator.push(context, route)
                                    }
                                  },
                                  shape: CircleBorder(),
                                  color: Colors.white12,
                                  child: Icon(
                                    Icons.camera,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      : Center(
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(),
                          ),
                        ),
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.12,
                minChildSize: 0.1,
                maxChildSize: 0.5,
                builder: (BuildContext c, s) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                        )
                      ],
                      color: Colors.white,
                    ),
                    child: ListView(
                      controller: s,
                      children: [
                        Center(
                          child: Container(
                            height: 8,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        ImageList(),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}

class ImageList extends StatefulWidget {
  @override
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  var files;

  @override
  void getFiles() async {
    List StorageInfo = await PathProviderEx.getStorageInfo();
    var root = StorageInfo[0].rootDir;
    var fm = FileManager(root: Directory(root));
    files = await fm.filesTree(
      excludedPaths: ["/storage/emulated/0/Android"],
      extensions: ["png", "jpg"],
    );
    setState(() {});
  }

  @override
  void iniState() {
    getFiles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: files == null
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: files?.length ?? 0,
              itemBuilder: (context, index) {
                return Card(
                    child: ListTile(
                  title: Text(files[index].path.split('/').last),
                  leading: Icon(Icons.image),
                  trailing: Icon(
                    Icons.delete,
                    color: Colors.redAccent,
                  ),
                ));
              },
            ),
    );
  }
}
