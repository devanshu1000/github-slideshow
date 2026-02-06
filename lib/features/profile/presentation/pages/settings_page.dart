import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuC5qhPVGB0xwsVLKtjrFEDCdfdCql_HJn27XLNAZKWOdc_Xag35VCMVWPiUNh8CrtDsm5Z-Br6fZ63AF6FN91wimfLs4iUnsUDRXHil6q-oCI7BKWWuaaQeru27Rg2PsHc6Zzhd78iYhCL9uQifZh_bRKwJbV4lNJSS1pE7JS3RI4a9B5zrICkIKtt6TP7hFap8azwfL5muPZzAUwa_Nl0bJaueDkTW4muqwncnC4--ulWSLX3G9D2PPqvjS5xwqvjJMhwA3_Z64gkS'),
            ),
            const SizedBox(height: 16),
            const Text('Priya Malhotra', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            _buildSettingItem(context,
                icon: Icons.verified_user,
                title: 'Trust & Verification',
                color: AppColors.primaryTeal),
            _buildSettingItem(context,
                icon: Icons.shield,
                title: 'Privacy & Safety',
                color: AppColors.primaryTeal),
            _buildSettingItem(context,
                icon: Icons.notifications,
                title: 'Notifications',
                color: AppColors.primaryTeal),
            _buildSettingItem(context, icon: Icons.star, title: 'Premium Plans', color: AppColors.goldRoyal, route: '/premium'),
            const SizedBox(height: 32),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.grey),
              title: const Text('Sign Out'),
              onTap: () => Navigator.pushReplacementNamed(context, '/login'),
            ),
            ListTile(
              leading: const Icon(Icons.delete_forever, color: Colors.red),
              title: const Text('Delete Account', style: TextStyle(color: Colors.red)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem(BuildContext context, {required IconData icon, required String title, required Color color, String? route}) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: () {
        if (route != null) Navigator.pushNamed(context, route);
      },
    );
  }
}
