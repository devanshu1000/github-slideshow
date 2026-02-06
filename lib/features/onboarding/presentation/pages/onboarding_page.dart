import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _step = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            if (_step > 1) {
              setState(() => _step--);
            } else {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Step $_step of 4', style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text('${(_step / 4 * 100).toInt()}% Complete', style: const TextStyle(color: AppColors.primaryBlue)),
                  ],
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(value: _step / 4, backgroundColor: Colors.grey[200], color: AppColors.primaryBlue),
              ],
            ),
          ),
          Expanded(
            child: _buildStepContent(),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  if (_step < 4) {
                    setState(() => _step++);
                  } else {
                    Navigator.pushReplacementNamed(context, '/home');
                  }
                },
                child: Text(_step < 4 ? 'CONTINUE' : 'FINISH'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepContent() {
    switch (_step) {
      case 1:
        return const _Step1();
      case 2:
        return const Center(child: Text('Step 2: Religion & Family'));
      case 3:
        return const Center(child: Text('Step 3: Education & Lifestyle'));
      case 4:
        return const Center(child: Text('Step 4: Preferences & Trust'));
      default:
        return Container();
    }
  }
}

class _Step1 extends StatelessWidget {
  const _Step1();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Physical Details',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.emeraldRoyal)),
          const SizedBox(height: 24),
          const TextField(
              decoration:
                  InputDecoration(labelText: 'Height', suffixIcon: Icon(Icons.straighten))),
          const SizedBox(height: 16),
          const TextField(
              decoration: InputDecoration(
                  labelText: 'Weight', suffixIcon: Icon(Icons.monitor_weight))),
          const SizedBox(height: 32),
          const Text('Marital Status',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.emeraldRoyal),
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.emeraldRoyal.withOpacity(0.05)),
                  child: Column(children: const [
                    Icon(Icons.person_remove, color: AppColors.emeraldRoyal),
                    Text('Divorced', style: TextStyle(color: AppColors.emeraldRoyal))
                  ]),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(children: const [
                    Icon(Icons.favorite_border, color: Colors.grey),
                    Text('Widowed', style: TextStyle(color: Colors.grey))
                  ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
