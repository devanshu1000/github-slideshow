import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class PremiumPlansPage extends StatelessWidget {
  const PremiumPlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium Plans'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text(
              'Unlock Your New Beginning',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: AppColors.primaryTeal, width: 2),
                boxShadow: [BoxShadow(color: AppColors.primaryTeal.withOpacity(0.2), blurRadius: 20)],
              ),
              child: Column(
                children: [
                  const Text('GOLD', style: TextStyle(color: AppColors.primaryTeal, fontWeight: FontWeight.bold, letterSpacing: 2)),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('\$19.99',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900)),
                      Text('/month', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 32),
                  _buildBenefit('View Unlimited Profiles'),
                  _buildBenefit('Direct Messaging'),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryTeal),
                      child: const Text('Upgrade Now'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefit(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: AppColors.primaryTeal, size: 20),
          const SizedBox(width: 12),
          Text(text),
        ],
      ),
    );
  }
}
