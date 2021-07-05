import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:proto/imagePicker/picker.dart';

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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                        SizedBox(
                          height: 40,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Picker();
                            }));
                          },
                          icon: Icon(
                            Icons.image,
                            color: Colors.orange,
                            size: 40,
                          ),
                        )
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
