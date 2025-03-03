import 'package:flutter/material.dart';

import 'package:my_project/lab2/elements/responsive_config.dart';


class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: ResponsiveConfig.avatarRadius(context),
                backgroundImage: const AssetImage('assets/place_holder.jpg'),
              ),
              SizedBox(height: ResponsiveConfig.spacing(context)),
              Text(
                'Name: John Doe',
                style: TextStyle(
                  fontSize: ResponsiveConfig.fontSizeName(context),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: ResponsiveConfig.spacing(context) / 2),
              Text(
                'Email: johndoe@example.com',
                style: TextStyle(
                    fontSize: ResponsiveConfig.fontSizeEmail(context),),
              ),
              SizedBox(height: ResponsiveConfig.spacing(context)),
            ],
          ),
        ),
      ),
    );
  }
}
