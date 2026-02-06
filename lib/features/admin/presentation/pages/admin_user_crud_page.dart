import 'package:flutter/material.dart';

class AdminUserCrudPage extends StatelessWidget {
  const AdminUserCrudPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Management')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text('User $index'),
            subtitle: Text('ID: RM8829$index'),
            trailing: IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
