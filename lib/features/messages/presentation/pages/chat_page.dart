import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/aida-public/AB6AXuDlZX0Hz4mngtZHzYtMHLSOq55opi2FtxdXZSh31fIl1764HOKnTDo0MiUbExF7Vc89SeGQcDHxMC1Px5ifAV-9LAnmWTf0Nz4_p8VzOCvI-pli97diRL6QSJFoGWCFHkhVJWrjrUF39AKMrxavxQ3Nt2Q64ROPj41VuzaqXDswM3K6H3fL4eexFgz0cI6TWpc9MaE9A-cik4GiNdCkrdVWGHjvJVFom2tyzh4f7RJ2qkUuFErRhSavdyIeQ_Auu6pbk1YsYksjYTbs'),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Sameer', style: TextStyle(fontSize: 16)),
                Text('Online', style: TextStyle(fontSize: 12, color: AppColors.primaryTeal)),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildMessageBubble(
                  context,
                  message: "Hello! It's nice to connect with you. How was your day?",
                  isMe: false,
                ),
                _buildMessageBubble(
                  context,
                  message: "Hi Sameer, it's been a busy one, but I'm glad we finally matched.",
                  isMe: true,
                ),
              ],
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageBubble(BuildContext context, {required String message, required bool isMe}) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isMe ? AppColors.primaryTeal : Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: isMe ? const Radius.circular(16) : Radius.zero,
            bottomRight: isMe ? Radius.zero : const Radius.circular(16),
          ),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5)],
        ),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
        child: Text(
          message,
          style: TextStyle(color: isMe ? Colors.white : Colors.black),
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.black12)),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
                filled: true,
                fillColor: Colors.grey[100],
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            backgroundColor: AppColors.primaryTeal,
            child: const Icon(Icons.send, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
