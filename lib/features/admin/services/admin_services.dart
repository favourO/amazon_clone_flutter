import 'dart:io';

import 'package:amazon_clone/constants/utils.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/cupertino.dart';

class AdminServices {
  void sellProduct({
  required BuildContext context,
    required String name,
    required String description,
    required double price,
    required double quantity,
    required String category,
    required List<File> images
}) async {
    try {
      final cloudinary = CloudinaryPublic('libravle', 'kwosuaek');
      List<String> imageUrls = [];

      for (int i = 0; i<imageUrls.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
            CloudinaryFile.fromFile(images[i].path)
        );
        imageUrls.add(res.secureUrl);
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}