import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ЛР2 ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Изображения'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Контейнер 1
          ContainerWithImage('assets/image1.jpg', 'Изображение 1'),

          SizedBox(height: 10),

          // Контейнер 2
          ContainerWithImage('assets/image2.jpg', 'Изображение 2'),

          SizedBox(height: 10),

          // Контейнер 3
          ContainerWithImage('assets/mars.png', 'Марс'),

          SizedBox(height: 10),

          // Контейнер 4
          ContainerWithImage('assets/earth.png', 'Земля'),

          SizedBox(height: 10),

          // Контейнер 5
          ContainerWithImage('assets/saturn.jpg', 'Сатурн'),
        ],
      ),
    );
  }
}

// Функция-виджет для повторного использования
Widget ContainerWithImage(String imagePath, String label) {
  return Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Image.asset(
          imagePath,
          width: 100,
          height: 50,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    ),
  );
}