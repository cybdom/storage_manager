import 'package:flutter/material.dart';

enum folderType { archive, image, normal }
enum fileType { sheet, pdf, video, document }

Color blueColor = Color(0xff4e5af6);

String profileImage =
    "https://cdn.pixabay.com/photo/2016/10/09/18/03/smile-1726471_960_720.jpg";

List<Map<String, dynamic>> storageList = [
  {
    'name' : 'Images',
    'size' : '17.0 GB',
    'color' : Color(0xff3d4bf7),
  },
  {
    'name' : 'Documents',
    'size' : '27.0 GB',
    'color' : Color(0xfff7b63a),
  },
  {
    'name' : 'Media',
    'size' : '13.0 GB',
    'color' : Color(0xffef5b54),
  },
  {
    'name' : 'Other',
    'size' : '97.0 GB',
    'color' : Color(0xff5dcb86),
  },
  {
    'name' : 'Archive',
    'size' : '7.0 GB',
    'color' : Color(0xffa257df),
  },
  {
    'name' : 'Unknown',
    'size' : '5.0 GB',
    'color' : Color(0xffbec2da),
  },
];

List<Map<String, dynamic>> progressItems = [
  {
    'color': Color(0xff3a49f6),
    'progress': .3,
  },
  {
    'color': Color(0xfff7bc48),
    'progress': .1,
  },
  {
    'color': Color(0xffef5b54),
    'progress': .4,
  },
  {
    'color': Color(0xff5dcb86),
    'progress': .2,
  }
];

List<Map<String, dynamic>> filesList = [
  {
    'name': 'sheet.xlsx',
    'date': '13/10/2019',
    'size': '10 KB',
    'type': fileType.sheet
  },
  {
    'name': 'Cybdom Course.pdf',
    'date': '13/09/2019',
    'size': '29 MB',
    'type': fileType.pdf
  },
  {
    'name': 'Provider Video.mp4',
    'date': '04/10/2019',
    'size': '293 MB',
    'type': fileType.video
  },
  {
    'name': 'invoice.docx',
    'date': '04/10/2019',
    'size': '293 MB',
    'type': fileType.document
  },
  {
    'name': 'sheet.xlsx',
    'date': '13/10/2019',
    'size': '10 KB',
    'type': fileType.sheet
  },
  {
    'name': 'Cybdom Course.pdf',
    'date': '13/09/2019',
    'size': '29 MB',
    'type': fileType.pdf
  },
  {
    'name': 'Provider Video.mp4',
    'date': '04/10/2019',
    'size': '293 MB',
    'type': fileType.video
  },
  {
    'name': 'invoice.docx',
    'date': '04/10/2019',
    'size': '293 MB',
    'type': fileType.document
  },
];
List<Map<String, dynamic>> foldersList = [
  {
    'name': 'My Pictures',
    'itemsCount': '49',
    'size': '17 GB',
    'type': folderType.image
  },
  {
    'name': 'My Documents',
    'itemsCount': '139',
    'size': '39 GB',
    'type': folderType.normal
  },
  {
    'name': 'Flutter Packages.zip',
    'itemsCount': '3949',
    'size': '3 GB',
    'type': folderType.archive
  },
  {
    'name': 'Important Documents',
    'itemsCount': '739',
    'size': '31 GB',
    'type': folderType.normal
  },
  {
    'name': 'Other Documents',
    'itemsCount': '931',
    'size': '27 GB',
    'type': folderType.normal
  },
  {
    'name': 'Similarly Documents',
    'itemsCount': '841',
    'size': '21 GB',
    'type': folderType.normal
  },
];
