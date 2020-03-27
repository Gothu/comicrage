
syueisya = Category.create(:company=>"集英社")

syugakkan = Category.create(:company=>"小学館")

hakusensya = Category.create(:company=>"白泉社")

koudansya = Category.create(:company=>"講談社")

kadokawa = Category.create(:company=>"KADOKAWA")

sukuea = Category.create(:company=>"スクウェア・エニックス")

akita = Category.create(:company=>"秋田書店")

hutaba = Category.create(:company=>"双葉社")

houbunsya = Category.create(:company=>"芳文社")

sonota = Category.create(:company=>"その他")

syueisya.children.create([{:company=>"週刊少年ジャンプ"}, {:company=>"週刊ヤングジャンプ"}, {:company=>"グランドジャンプ"}, {:company=>"マーガレット"}, {:company=>"ジャンプSQ"}, {:company=>"ウルトラジャンプ"}, {:company=>"りぼん"}, {:company=>"別冊マーガレット"}, {:company=>"ココハナ"}, {:company=>"その他"}])

syugakkan.children.create([{:company=>"週刊少年サンデー"}, {:company=>"ビッグコミックスピリッツ"}, {:company=>"ビッグコミック"}, {:company=>"Sho-Comi"}, {:company=>"ぷっちぐみ"}, {:company=>"ちゃお"}, {:company=>"Cheese!"}, {:company=>"月刊flowers"}, {:company=>"コロコロコミック"}, {:company=>"月刊サンデーGX"}, {:company=>"その他"}])

hakusensya.children.create([{:company=>"花とゆめ"}, {:company=>"ヤングアニマル"}, {:company=>"LaLa"}, {:company=>"LaLa DX"}, {:company=>"メロディ"}, {:company=>"その他"}])

koudansya.children.create([{:company=>"週刊少年マガジン"}, {:company=>"ヤングマガジン"}, {:company=>"モーニング"}, {:company=>"BE・LOVE"}, {:company=>"イブニング"}, {:company=>"なかよし"}, {:company=>"別冊フレンド"}, {:company=>"デザート"}, {:company=>"Kiss"}, {:company=>"別冊少年マガジン"}, {:company=>"月刊少年マガジン"}, {:company=>"月刊少年シリウス"}, {:company=>"少年マガジンエッジ"}, {:company=>"月刊ヤングマガジン"}, {:company=>"ヤングマガジンサード"}, {:company=>"アフタヌーン"}, {:company=>"その他"}])

kadokawa.children.create([{:company=>"月刊コミック電撃大王"}, {:company=>"電撃マオウ"}, {:company=>"少年エース"}, {:company=>"ヤングエース"}, {:company=>"コミックアライブ"}, {:company=>"コミックフラッパー"}, {:company=>"コミックキューン"}, {:company=>"コミックビーム"}, {:company=>"コミックジーン"}, {:company=>"ドラゴンエイジ"}, {:company=>"月刊ASUKA"}, {:company=>"キャラぱふぇ"}, {:company=>"ヤングドラゴンエイジ"}, {:company=>"その他"}])

sukuea.children.create([{:company=>"ヤングガンガン"}, {:company=>"月刊少年ガンガン"}, {:company=>"月刊Ｇファンタジー"}, {:company=>"月刊ガンガンJOKER"}, {:company=>"ビッグガンガン"}, {:company=>"ガンガンコミックス"}, {:company=>"Ｇファンタジーコミックス"}, {:company=>"ヤングガンガンコミックス"}, {:company=>"ガンガンコミックスJOKER"}, {:company=>"ガンガンコミックスONLINE"}, {:company=>"ビッグガンガンコミックス"}, {:company=>"ガンガンコミックスUP!"}, {:company=>"ガンガンコミックスpix"}, {:company=>"その他"}])

akita.children.create([{:company=>"週刊少年チャンピオン"}, {:company=>"ヤングチャンピオン"}, {:company=>"月刊少年チャンピオン"}, {:company=>"別冊少年チャンピオン"}, {:company=>"チャンピオンRED"}, {:company=>"ヤングチャンピオン烈"}, {:company=>"別冊ヤングチャンピオン"}, {:company=>"月刊プリンセス"}, {:company=>"ミステリーボニータ"}, {:company=>"Eleganceイブ"}, {:company=>"フォアミセス"}, {:company=>"その他"}])

hutaba.children.create([{:company=>"漫画アクション"}, {:company=>"月刊アクション"}, {:company=>"まんがタウン"}, {:company=>"アクションピザッツ"}, {:company=>"その他"}])

houbunsya.children.create([{:company=>"週刊漫画TIMES"}, {:company=>"まんがホーム"}, {:company=>"まんがタイム"}, {:company=>"まんがタイムオリジナル"}, {:company=>"まんがタイムきらら"}, {:company=>"まんがタイムきららＭＡＸ"}, {:company=>"まんがタイムきららキャラット"}, {:company=>"まんがタイムきららフォワード"}, {:company=>"花音"}, {:company=>"その他"}])

sonota.children.create([{:company=>"その他"}])