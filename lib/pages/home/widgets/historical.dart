import 'package:flutter/material.dart';

class Historical extends StatelessWidget {
  const Historical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Historical fact of the day',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/fact_picture.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pont de Bir-Hakeim',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Paris, 15 Arrondissement',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 40,
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 3, // Épaisseur de la bordure à droite
                            color: Colors.black, // Couleur de la bordure
                          ),
                          bottom: BorderSide(
                            width: 3, // Épaisseur de la bordure en bas
                            color: Colors.black, // Couleur de la bordure
                          ),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Action à effectuer lors du clic sur le bouton
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.white),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        child: const Text(
                          'THE FACT',
                          style: TextStyle(
                            color: Color(0xFF242451),
                          ),
                        ), // Couleur du texte
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
