/*import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  File? file;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: file == null,
              child: SvgPicture.asset('assets/photo_simple.svg'),
            ),
            Visibility(
              visible: file == null,
              child: const Text(
                'No picture taken',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            Visibility(
              visible: file == null,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
                child: ElevatedButton(
                  onPressed: () async {
                    final pickedFile =
                        await picker.pickImage(source: ImageSource.camera);

                    if (pickedFile != null) {
                      setState(() {
                        file = File(pickedFile.path);
                      });
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Take a picture'),
                      Icon(Icons.camera_alt)
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: file != null,
              child: Container(
                width: 300,
                height: 300,
                child: file != null
                    ? Image.file(
                        file!,
                        fit: BoxFit.fill,
                      )
                    : const SizedBox.shrink(),
              ),
            ),
            Visibility(
              visible: file != null,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
                child: ElevatedButton(
                  onPressed: _saveImage,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Guardar',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(Icons.save_alt)
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: file != null,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    setState(() {
                      file = null;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Cancelar',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(Icons.signal_cellular_no_sim_outlined)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _saveImage() async {
    Uint8List data = await file!.readAsBytes();
    ImageGallerySaver.saveImage(data, name: '');

    setState(() {
      file = null;
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Imagen guardada'),
        duration: Duration(milliseconds: 1500),
      ));
    });
  }
}*/
