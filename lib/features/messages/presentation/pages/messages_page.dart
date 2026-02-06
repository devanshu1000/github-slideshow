import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        actions: [
          IconButton(icon: const Icon(Icons.edit_square), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search conversations...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () => Navigator.pushNamed(context, '/chat'),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuBVh-mc2m_qqDsGFNe6bTFQ9LcaQ-EM4D5hSQ1zPKBGRwFLrsTLDHcrD9FP1qIUySsKS1sfJnVIdh6fCUClYJW4geCDplzhrvcXrfpXBZMtwCYADrrxTUvgdFyRgeWl1f0Pd1KRMtPVYmAxrn9Xbdk10kp1ir5VaKGw6s3HLS3E49L0qivA1iFUU2dWNfREQhVn0q2lFjtQgM7x11B875_HKwmNpi3_BBR2B-76os-HsJOOSvhEwb2AMLbiZv5nke6ynFp_4IhAv0pg'),
                  ),
                  title: const Text('Anjali, 34', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text('It was great talking to you earlier...', maxLines: 1, overflow: TextOverflow.ellipsis),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text('10:45 AM', style: TextStyle(fontSize: 12, color: AppColors.primaryTeal)),
                      SizedBox(height: 4),
                      CircleAvatar(radius: 5, backgroundColor: AppColors.primaryTeal),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
