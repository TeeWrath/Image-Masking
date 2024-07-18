import 'package:celebrare/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ImagePicker picker = ImagePicker();

  XFile? image;

  void _selectImage() async {
    XFile? im = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      image = im;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: primaryBg,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          'Add Image / Icon',
          style: TextStyle(fontFamily: 'Olivetti', color: primaryTextColor),
        ),
        centerTitle: true,
      ),
      backgroundColor: primaryBg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                const Text(
                  'Upload Image',
                  style: TextStyle(
                      fontFamily: 'Olivetti', color: primaryTextColor),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: _selectImage,
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(177, 25),
                        backgroundColor: secondaryColors,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3))),
                    child: const Text(
                      'Choose from Device',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
