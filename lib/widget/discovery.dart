import 'package:flutter/material.dart';

class Discovery extends StatelessWidget {
  const Discovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Discover the history ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  hintText: 'Ex: Rue de Rivoli',
                ),
              ),
            ),
            TextButton(
                onPressed: () {}, child: const Icon(Icons.camera_alt_outlined)),
          ],
        ),
      ],
    );
  }
}
