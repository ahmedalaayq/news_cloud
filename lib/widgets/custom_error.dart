import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          spacing: 4,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline,color: Colors.red,size: 60,),
            Text('oops there was an error, try later',style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
      ),
    );
  }
}