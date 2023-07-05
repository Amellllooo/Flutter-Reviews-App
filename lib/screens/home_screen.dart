import 'package:flutter/material.dart';


void main() {
  runApp(RestaurantReviewsApp());
}

class RestaurantReviewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Reviews',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController restaurantController = TextEditingController();
  TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Reviews'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Имя',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Почта',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: restaurantController,
              decoration: InputDecoration(
                labelText: 'Название заведения',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: reviewController,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Отзыв',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Обработка нажатия кнопки Submit
                String name = nameController.text;
                String email = emailController.text;
                String restaurantName = restaurantController.text;
                String review = reviewController.text;

                // Можно выполнить дополнительные действия, например, сохранить отзыв в базу данных или отправить на сервер

                // Сбросить значения полей
                nameController.clear();
                emailController.clear();
                restaurantController.clear();
                reviewController.clear();

                // Показать диалоговое окно или уведомление об успешной отправке отзыва
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Отзыв отправлен'),
                    content: Text('Спасибо за ваш отзыв!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('ОК'),
                      ),
                    ],
                  ),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
