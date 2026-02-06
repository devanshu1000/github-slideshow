import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Portal'),
        backgroundColor: AppColors.emeraldRoyal,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        children: [
          _buildAdminCard(context, icon: Icons.group, title: 'Users', route: '/admin_users'),
          _buildAdminCard(context, icon: Icons.photo_library, title: 'Photo Mod', route: '/admin_photo_mod'),
          _buildAdminCard(context, icon: Icons.calendar_month, title: 'Events', route: '/admin_events'),
          _buildAdminCard(context, icon: Icons.analytics, title: 'Revenue', route: '/admin_revenue'),
        ],
      ),
    );
  }

  Widget _buildAdminCard(BuildContext context, {required IconData icon, required String title, required String route}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: AppColors.emeraldRoyal),
            const SizedBox(height: 12),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
