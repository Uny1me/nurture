import 'package:flutter/material.dart';

final List<dynamic> topTherapists = [
  {
    'image': 'assets/mock_data/stella.png',
    'cost': {'price': '4999', 'currency': 'NGN'},
    'name': 'Dr. Stella',
    'role': 'Psychologist',
    'rating': 5.0,
    "status": "",
    "bio": ""
  },
  {
    'image': 'assets/mock_data/khalid.png',
    'cost': {'price': '4999', 'currency': 'NGN'},
    'name': 'Dr. Khalid',
    'role': 'Relationship expert',
    'rating': 5.0,
    "status": "",
    "bio": ""
  },
  {
    'image': 'assets/mock_data/kate.png',
    'cost': {'price': '4999', 'currency': 'NGN'},
    'name': 'Dr. Kate',
    'role': 'Psychologist',
    'rating': 5.0,
    "status": "",
    "bio": ""
  },
  {
    'image': 'assets/mock_data/lanre.png',
    'cost': {'price': '4999', 'currency': 'NGN'},
    'name': 'Dr. Lanre',
    'role': 'Life coach',
    'rating': 5.0,
    "status": "",
    "bio": ""
  },
];

final List<dynamic> curatedContent = [
  {
    'image': 'assets/mock_data/videos/meditation.png',
    'name': '5 min Guided Meditation',
    'author': 'Cathy George',
    'type': "video",
    'category': 'focus',
  },
  {
    'image': 'assets/mock_data/videos/exercise.png',
    'name': '10 min workout session',
    'author': 'Mind Team',
    'type': "video",
    'category': 'balance',
  },
  {
    'image': 'assets/mock_data/videos/meditation.png',
    'name': 'Dealing with negative cycles',
    'author': 'Cathy George',
    'type': "article",
    'category': 'trauma',
  },
  {
    'image': 'assets/mock_data/videos/yoga.png',
    'name': 'Yoga session',
    'author': 'Tina Bock',
    'type': "video",
    'category': 'balance',
  },
];

final contentIcons = [
  {
    'name': "video",
    "icon": const Icon(
      Icons.play_circle_fill,
      color: Colors.white,
    )
  },
  { 
    'name': "article",
    "icon": const Icon(
      Icons.article,
      color: Colors.white,
    )
  }
];
