import 'package:flutter/material.dart';

class PlanItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const PlanItem({
    required this.title,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.indigo[900],
                child: Icon(icon),
              ),
              const SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            '3 plans remaining',
            style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 10),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Go to plan',
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const Icon(
                Icons.arrow_forward_sharp,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
