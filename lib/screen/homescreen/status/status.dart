import 'package:flutter/material.dart';

class StatusComponent extends StatelessWidget {
  const StatusComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.person,
                size: 45,
              ),
            ),
            title: Text(
              "my status",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'update',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Recently update'),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 3)),
                      child: const CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.person,
                          size: 45,
                        ),
                      ),
                    ),
                    title: const Text(
                      "my status",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'update',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
