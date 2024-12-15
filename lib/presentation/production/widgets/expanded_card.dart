import 'package:Energya/constants.dart';
import 'package:flutter/material.dart';

class ExpandedCard extends StatelessWidget {
  const ExpandedCard({super.key, required this.titel});
  final String titel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: kPrimaryColor.withOpacity(0.3),
      child: ExpansionTile(
      
        title: Text(
          titel,
          style: const TextStyle(fontSize: 22),
        ),
        children: [
          Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Icon(Icons.search),
                  ),
                  fillColor: kPrimaryColor.withOpacity(0.2),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [Icon(Icons.insert_drive_file), Text('sheet')],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [Icon(Icons.insert_drive_file), Text('sheet')],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [Icon(Icons.insert_drive_file), Text('sheet')],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [Icon(Icons.insert_drive_file), Text('sheet')],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [Icon(Icons.insert_drive_file), Text('sheet')],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
