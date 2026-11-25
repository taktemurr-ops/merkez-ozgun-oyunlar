import 'package:flutter/material.dart';
import 'package:studio_core/app/approved_hub.dart';

/// Onaylı tasarım (Oyun Merkezleri · Tasarım Örnekleri).
const approvedStyle = ApprovedHubStyle(
  background: [Color(0xFF3A2AA8), Color(0xFF221670), Color(0xFF100A3C)],
  accent: Color(0xFF2FE0F5),
  card: Color(0xFF3A2C9C),
  play: Color(0xFF1FA2F2),
  number: Color(0xFF3FE0FF),
  heroAsset: 'assets/approved/hero.png',
  heroTitle: true,
  blocks: [ApprovedBlock.chips, ApprovedBlock.featured],
  featuredKey: 'featured',
  featured: ['oyun-boya-karisimi', 'oyun-golge-perdesi', 'oyun-doner-dunya', 'oyun-kum-saati'],
  tileArt: {
    'oyun-boya-karisimi': 'assets/approved/tile_renk.png',
    'oyun-golge-perdesi': 'assets/approved/tile_sekil.png',
    'oyun-doner-dunya': 'assets/approved/tile_yercekimi.png',
    'oyun-kum-saati': 'assets/approved/tile_kumsaati.png',
  },
  tilesPerPage: 4,
);
