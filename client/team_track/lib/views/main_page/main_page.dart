import 'package:flutter/material.dart';
class MainPage extends StatelessWidget {
  const MainPage({super.key});


  /**
   The main page is the only page that have scaffold, which will contain the navbar and the sidebar.
   Than the body of the page will change according to the section selected in the sidebar
   **/

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Main page'),
      ),
    );
  }
}
