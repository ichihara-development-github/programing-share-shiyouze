# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "プログラミング", description: "プログラミングの勉強法に関する記事です")
Category.create(name: "生活", description: "僕の生活に関する記事です")
Category.create(name: "オピニオン", description: "意見する記事です")
Category.create(name: "ミニマリスト", description: "ミニマリストとしての考え方に関する記事です")

Category.find(1).articles.build(title: "プログラミングで挫折しない方法", content: "プログラミングで
                                       どうしてもやる気が続かないという人は多いのでは")
Category.find(1).articles.build(title: "エンジニアは馬鹿でもなれる", content: "プログラミングと聞くと、一部の理系出身の頭のいい人ががり勉してやっと習得するイメージですが")
Category.find(2).articles.build(title: "朝7時には必ず起きよう", content: "早起きは三文の得です")
Category.find(3).articles.build(title: "プログラミングで挫折しない方法", content: "プログラミングでどうしてもやる気が続")
Category.find(4).articles.build(title: "月7万で暮らすミニマリストの心得５か条", content: "生活費が払えないなんてことで…")
