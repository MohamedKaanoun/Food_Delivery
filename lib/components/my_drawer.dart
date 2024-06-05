import 'package:flutter/material.dart';
import 'package:pizza_app/components/my_drawer_title.dart';
import 'package:pizza_app/pages/LoginPage.dart';
import 'package:pizza_app/pages/SettingsPage.dart';
import 'package:pizza_app/auth/AuthService.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  Future<void> signOut(BuildContext context) async {
    await AuthService().signOut();
    // After sign out, navigate to the login page or any other appropriate page
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (context) => LoginPage(
                onTap: () {},
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          MyDrawerTitle(
              onTap: () => Navigator.pop(context),
              icon: Icons.home,
              text: "H O M E"),
          MyDrawerTitle(
              onTap: () => {
                    Navigator.pop(context),
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsPage()))
                  },
              icon: Icons.settings,
              text: "S E T T I N G S"),
          const Spacer(),
          MyDrawerTitle(
              onTap: () => signOut(context),
              icon: Icons.logout,
              text: "L O G O U T"),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
