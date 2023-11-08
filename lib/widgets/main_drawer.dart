import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 100,
            child: DrawerHeader(
              padding: EdgeInsets.all(14),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'viswanath',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('vish@vishgyana.com'),
                    ],
                  ),
                  Icon(Icons.settings_outlined)
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text('Test History'),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          const Divider(),
          ListTile(
            title: const Text('Explore other Exams'),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          const Divider(),
          ListTile(
            title: const Text('Purchase History'),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          const Divider(),
          ListTile(
            title: const Text('FAQ'),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          const Divider(),
          ListTile(
            title: const Text('info@surgtest.com'),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          const Divider(),
          ListTile(
            title: const Text('Whatsapp: +91 7395939989'),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          const Divider(),
          ListTile(
            title: const Text('Terms & Conditions'),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          const Divider(),
          ListTile(
            title: const Text('Privacy Policy'),
            onTap: () {},
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          const Divider(),
          const ListTile(
            title: Text('App Version 1.0.99'),
          ),
          const Divider(),
          ListTile(
            title: const Text('Log out'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
