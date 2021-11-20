import 'package:encontrau_front/view/components/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EncontrAU!'),
      ),
      body: Center(
        child: Text(
          'Hello, my name is homepage!',
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(
        icons: <IconData>[
          Icons.home,
          Icons.update,
          Icons.list,
          Icons.person,
        ],
        onItemSelected: (value) {},
      ),
    );
  }
}
