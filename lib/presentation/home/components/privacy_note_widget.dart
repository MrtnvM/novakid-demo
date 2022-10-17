import 'package:flutter/material.dart';

class PrivacyNoteWidget extends StatelessWidget {
  const PrivacyNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: const [
              Icon(
                Icons.info,
                color: Colors.yellow,
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'NOTE: All the collected materials are privately and safely stored',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'No one but you and the Novakid team has access to these materials. We care about your child\'s privacy. That is why - according to our Terms and Conditions  - we record lessons for educational and quality assurance purposes only. You can watch any recording again, revise learning material with your child, enjoy the best moments of your kid exploring English at any time.',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
