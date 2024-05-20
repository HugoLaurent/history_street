import 'package:flutter/material.dart';

class Discovery extends StatelessWidget {
  const Discovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Discover the history",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF242451),
                      ),
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    hintText: 'Ex: Rue de Rivoli',
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 56.0,
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      width: 3,
                      color: Colors.black,
                    ),
                    bottom: BorderSide(
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.white),
                    iconColor: WidgetStateProperty.all(
                      const Color(0xFF242451),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Icon(Icons.camera_alt_outlined),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
