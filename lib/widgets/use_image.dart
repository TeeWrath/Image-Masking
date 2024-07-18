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
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Uploaded Image',
            style: TextStyle(
                fontFamily: 'Olivetti', fontSize: 23, color: primaryTextColor),
          ),
          Image.file(
            widget.image!,
            width: 200,
          ),
          Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: primaryTextColor)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Original',
                    style: TextStyle(
                        fontFamily: 'Olivetti', color: primaryTextColor),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
