import 'package:flutter_test/flutter_test.dart';
import 'package:merkez_ozgun_oyunlar/main.dart';

void main() {
  test('merkezde oyunlar benzersiz kimlikle yer alıyor', () {
    final ids = hubConfig.games.map((g) => g.gameId).toList();
    expect(ids, [
      'oyun-gunluk-uclu',
      'oyun-kilim-dokuma',
      'oyun-cini-ustasi',
      'oyun-ebru-atolyesi',
      'oyun-hat-izi',
      'oyun-golge-perdesi',
      'oyun-kagit-katlama',
      'oyun-kundekari',
      'oyun-tezhip',
      'oyun-cam-boncuk-firini',
      'oyun-comlek-carki',
      'oyun-lale-bahcesi',
      'oyun-bal-petegi',
      'oyun-mantar-avi',
      'oyun-pazar-tezgahi',
      'oyun-takimyildiz',
      'oyun-kelime-kafesi',
      'oyun-dusen-harfler',
      'oyun-disli-atolyesi',
      'oyun-isik-yolu',
      'oyun-doner-dunya',
      'oyun-domino-zinciri',
      'oyun-tren-makasi',
      'oyun-kum-saati',
      'oyun-kervan-yolu',
      'oyun-mahalle-kur',
      'oyun-akvaryum-dengesi',
      'oyun-boya-karisimi',
      'oyun-ses-labirenti',
    ]);
    final all = hubConfig.allGames.map((g) => g.gameId).toList();
    expect(all.length, ids.length + 0);
    expect(all.toSet().length, all.length);
    expect(ids.toSet().length, ids.length);
    for (final g in hubConfig.allGames) {
      expect(g.rules.gameId, g.gameId, reason: 'kayıt öneki oyun kimliğiyle aynı olmalı');
    }
    expect(hubConfig.title.length, 33);
    expect(hubConfig.tagline.length, 33);
  });

  test('her oyun ve grup bir bölüm başlığı altında', () {
    final ids = {for (final s in hubConfig.sections) ...s.ids};
    for (final g in hubConfig.games) {
      expect(ids.contains(g.gameId), isTrue, reason: g.gameId);
    }
    for (final s in hubConfig.sections) {
      expect(s.title.length, 33);
    }
  });
}
