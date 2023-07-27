import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.pinkAccent.shade400,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Premium",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.amber),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Unlimited access',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Remove ads',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Available Offline',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          settingItem(Icons.star_border_outlined, ' Rate us'),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          settingItem(Icons.share_outlined, ' Share app'),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          settingItem(Icons.add_box_outlined, ' Our apps'),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          settingItem(Icons.question_mark_outlined, ' Help'),
          const SizedBox(
            height: 20,
          ),
          const Column(
            children: [
              Text(
                "WeDraw",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Version 3.1.3",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}

class settingItem extends StatelessWidget {
  final IconData icon;
  final String text;

  settingItem(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
