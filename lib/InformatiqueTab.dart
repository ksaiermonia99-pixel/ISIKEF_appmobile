import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class InformatiqueTab extends StatelessWidget {
  const InformatiqueTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "Licence en Sciences de l'Informatique",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1565C0),
            ),
          ),
          SizedBox(height: 14),

          SpecialiteCard(
            titre: 'GLSI',
            sousTitre: "Génie Logiciel et Systèmes d'Information",
            description: "Conception et développement de logiciels et d'applications web et mobiles.",
            icone: Icons.code,
            couleur: Colors.blue,
            delai: 200,
          ),
          SizedBox(height: 12),

          SpecialiteCard(
            titre: 'GLSIN',
            sousTitre: 'Génie Logiciel et Systèmes Intelligents',
            description: "Génie logiciel associé à l'intelligence artificielle et à l'analyse des données.",
            icone: Icons.psychology,
            couleur: Colors.indigo,
            delai: 450,
          ),
        ],
      ),
    );
  }
}

class SpecialiteCard extends StatelessWidget {
  final String titre;
  final String sousTitre;
  final String description;
  final IconData icone;
  final Color couleur;
  final int delai;

  const SpecialiteCard({
    super.key,
    required this.titre,
    required this.sousTitre,
    required this.description,
    required this.icone,
    required this.couleur,
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
                child: Icon(icone, color: couleur, size: 22),
              ),
              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titre,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: couleur,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      sousTitre,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
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
