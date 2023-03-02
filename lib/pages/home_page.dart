import 'package:flutter/material.dart';
import 'package:hello_world/page_Views/one_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
            child: Text(
          'Barra de tarefas aqui...',
          style: TextStyle(color: Colors.white, fontSize: 30),
        )),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          OnePage(),
          Container(color: Colors.red),
          Container(color: Colors.yellow),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigationBar,
          onTap: (int page) {
            setState(() {
              indexBottomNavigationBar = page;
            });
            _pageController.animateToPage(
              page,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.numbers), label: 'Item 1'),
            BottomNavigationBarItem(icon: Icon(Icons.numbers), label: 'Item 2'),
            BottomNavigationBarItem(icon: Icon(Icons.numbers), label: 'Item 3'),
          ]),
    );
  }
}
