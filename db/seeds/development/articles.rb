body =
  "Morning Gloryが4対2でSunflowerに勝利。\n" +
  "２回表、６番戦地" +
  "９回表、ランナー１、２塁。\n" +
  "にげきりました。"

0.upto(9) do |idx|
  Article.create(
    title: "練習試合の結果#{idx}",
    body: body,
    released_at: 8.days.ago.advance(days: idx),
    expired_at: 2.days.ago.advance(days: idx),
    member_only: (idx % 3 == 0)
  )
end