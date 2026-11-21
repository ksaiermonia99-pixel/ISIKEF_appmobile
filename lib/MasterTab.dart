import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MasterTab extends StatelessWidget {
  const MasterTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            'Les formations en Mastère',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1565C0),
            ),
          ),
          SizedBox(height: 14),

          MasterCard(
            titre: "Système d'Information et Web",
            categorie: 'Mastère de recherche',
            description: "Recherche en intelligence du Web, extraction de connaissances et intelligence artificielle.",
            icone: Icons.travel_explore,
            delai: 200,
          ),
          SizedBox(height: 12),

          MasterCard(
            titre: 'Applications Web Intelligentes',
            categorie: 'Mastère professionnel',
            description: "Développement d'applications web avec Angular, Django, Laravel et Symfony.",
            icone: Icons.web,
            delai: 450,
          ),
          SizedBox(height: 12),

          MasterCard(
            titre: 'Administration et Sécurité des Réseaux Informatiques',
            categorie: 'Mastère professionnel - ASRI',
            description: "Administration et sécurité des réseaux, en local et dans le Cloud.",
            icone: Icons.security,
            delai: 700,
          ),
        ],
      ),
    );
  }
}

class MasterCard extends StatelessWidget {
  final String titre;
  final String categorie;
  final String description;
  final IconData icone;
  final int delai;

  const MasterCard({
    super.key,
    required this.titre,
    required this.categorie,
    required this.description,
    required this.icone,
    required this.delai,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.blue.shade100),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.shade50,
                ),
                child: Icon(icone, color: Colors.blue.shade700, size: 22),
              ),
              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        categorie,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      titre,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1565C0),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
        .animate(delay: Duration(milliseconds: delai))
        .fadeIn(duration: const Duration(milliseconds: 500))
        .slideY(begin: 0.15, end: 0, curve: Curves.easeOutCubic);
  }
}
