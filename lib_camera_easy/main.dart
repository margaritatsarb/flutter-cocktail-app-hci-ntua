import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'image_path_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();

  final firstCamera = cameras.first;

  runApp(ProviderScope(child: MyApp(camera: firstCamera)));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.camera}) : super(key: key);

  final CameraDescription camera;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
        onPressed: () async {
          var result = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TakePictureScreen(camera: widget.camera),
            ),
          );

          setState(() {
            if (result == null) return;
            ref.read(imagePathListProvider).add(result);
          });
        },
        child: const Icon(Icons.add_a_photo),
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
      //カメラを指定
      widget.camera,
      //解像度を設定
      ResolutionPreset.medium,
    );
    //コントローラーを初期化する
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
          leading: IconButton(
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
