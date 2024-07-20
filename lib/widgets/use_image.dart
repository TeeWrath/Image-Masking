import 'dart:io';

import 'package:celebrare/controller/image_mask_controller.dart';
import 'package:celebrare/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_mask/widget_mask.dart';

class UseImage extends StatefulWidget {
  const UseImage({super.key, required this.image});
  final File? image;

  @override
  State<UseImage> createState() => _UseImageState();
}

class _UseImageState extends State<UseImage> {
  @override
  Widget build(BuildContext context) {
    final mask = Provider.of<ImageMaskController>(context);

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
                mask.getImgNum == 0.toString() || mask.getImgNum == 5.toString()
                    ? Image.file(
                        widget.image!,
                        width: 300,
                      )
                    : WidgetMask(
                        blendMode: BlendMode.srcATop,
                        childSaveLayer: true,
                        mask: Image.file(
                          widget.image!,
                          fit: BoxFit.cover,
                        ),
                        child: Image.asset(
                          'assets/user_image_frame_${mask.getImgNum}.png',
                          width: 300,
                        )),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            mask.setImgNum(0.toString());
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
                          onPressed: () {
                            mask.setImgNum(1.toString());
                          },
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
                          onPressed: () {
                            mask.setImgNum(2.toString());
                          },
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
                          onPressed: () {
                            mask.setImgNum(3.toString());
                          },
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
                          onPressed: () {
                            mask.setImgNum(4.toString());
                          },
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
                        onPressed: () {
                          mask.setFinalNum();
                          Navigator.of(context).pop();
                        },
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
                mask.setImgNum(5.toString());
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
