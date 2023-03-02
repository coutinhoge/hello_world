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
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Gabriel'),
              accountEmail: Text('Gabriel@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text('G'),
              ),
            ),
            ListTile(
              title: Text('item: 1'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 0;
                });
              },
            ),
            ListTile(
              title: Text('item: 2'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 1;
                });
              },
            ),
            ListTile(
              title: Text('item: 3'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                setState(() {
                  indexBottomNavigationBar = 2;
                });
              },
            ),
          ],
        ),
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
