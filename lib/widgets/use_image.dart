import 'dart:io';

import 'package:celebrare/utils/colors.dart';
import 'package:flutter/material.dart';

class UseImage extends StatefulWidget {
  const UseImage({super.key, required this.image});
  final File? image;

  @override
  State<UseImage> createState() => _UseImageState();
}

class _UseImageState extends State<UseImage> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: primaryBg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Uploaded Image',
                  style: TextStyle(
                      fontFamily: 'Olivetti',
                      fontSize: 23,
                      color: primaryTextColor),
                ),
                Image.file(
                  widget.image!,
                  width: 300,
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          style: TextButton.styleFrom(
                              fixedSize: const Size(30, 50),
                              side: const BorderSide(color: primaryTextColor),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text(
                            'Original',
                            style: TextStyle(
                                fontSize: 11,
                                fontFamily: 'Olivetti',
                                color: Colors.black),
                          )),
                      const SizedBox(width: 5),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: const BorderSide(color: primaryTextColor)),
                          child: Image.asset(
                            'assets/user_image_frame_1.png',
                            width: 50,
                            height: 50,
                          )),
                      const SizedBox(width: 5),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: const BorderSide(color: primaryTextColor)),
                          child: Image.asset(
                            'assets/user_image_frame_2.png',
                            width: 50,
                            height: 50,
                          )),
                      const SizedBox(width: 5),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: const BorderSide(color: primaryTextColor)),
                          child: Image.asset(
                            'assets/user_image_frame_3.png',
                            width: 50,
                            height: 50,
                          )),
                      const SizedBox(width: 5),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              side: const BorderSide(color: primaryTextColor)),
                          child: Image.asset(
                            'assets/user_image_frame_4.png',
                            width: 50,
                            height: 50,
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColors,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3))),
                        child: const Text(
                          'Use this image',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: const Icon(Icons.close, color: primaryTextColor),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
