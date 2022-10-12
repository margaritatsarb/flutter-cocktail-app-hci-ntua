import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'image_path_list.dart';
import '/../HomePage.dart';

class Camera extends StatelessWidget {
  const Camera({Key? key, required this.camera}) : super(key: key);

  final CameraDescription camera;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cocktailer',
      theme: ThemeData(
          fontFamily: 'RockSalt',
          primarySwatch: Colors.deepOrange,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Color.fromARGB(255, 230, 57, 18)),
            actionsIconTheme:
                IconThemeData(color: Color.fromARGB(255, 230, 57, 18)),
            centerTitle: true,
            elevation: 15,
            titleTextStyle: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontFamily: 'RockSalt',
              color: Color.fromARGB(255, 230, 57, 18),
            ),
          )),
      home: DisplayImagesList(
        camera: camera,
      ),
    );
  }
}

class DisplayImagesList extends ConsumerStatefulWidget {
  DisplayImagesList({Key? key, required this.camera}) : super(key: key);
  final CameraDescription camera;

  @override
  ConsumerState<DisplayImagesList> createState() => _DisplayImagesListState();
}

class _DisplayImagesListState extends ConsumerState<DisplayImagesList> {
  @override
  Widget build(BuildContext context) {
    final imagePathList = ref.watch(imagePathListProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Cocktailer',
          style: Theme.of(context).appBarTheme.titleTextStyle,
          selectionColor: Color.fromARGB(255, 230, 57, 18),
        ),
      ),
      body: ListView.builder(
        itemCount: imagePathList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(
                height: 100,
                child: Image.network(imagePathList[index]),
              ),
              const Divider(),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        backgroundColor: Color.fromARGB(255, 230, 57, 18),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(children: <Widget>[
          Spacer(),
          FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 230, 57, 18),
            onPressed: () async {
              var result = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      TakePictureScreen(camera: widget.camera),
                ),
              );
              setState(() {
                if (result == null) return;
                ref.read(imagePathListProvider).add(result);
              });
            },
            child: const Icon(Icons.add_a_photo),
          ),
        ]),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({Key? key, required this.camera}) : super(key: key);

  final CameraDescription camera;

  @override
  State<TakePictureScreen> createState() => _TakePictureScreenState();
}

class _TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _cameraController;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _cameraController = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _cameraController.initialize();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Text(
            'Cocktailer',
            style: Theme.of(context).appBarTheme.titleTextStyle,
            selectionColor: Color.fromARGB(255, 230, 57, 18),
          ),
          centerTitle: true,
          leading: IconButton(
            color: Color.fromARGB(255, 230, 57, 18),
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: FutureBuilder(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(_cameraController);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          margin: const EdgeInsets.only(bottom: 26.0),
          child: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 230, 57, 18),
            onPressed: () async {
              try {
                await _initializeControllerFuture;

                final image = await _cameraController.takePicture();

                if (!mounted) return;

                Navigator.of(context).pop(image.path);
              } catch (e) {
                if (kDebugMode) {
                  print(e);
                }
              }
            },
            tooltip: 'take a photo',
            child: const Icon(Icons.camera),
          ),
        ),
      ),
    );
  }
}
