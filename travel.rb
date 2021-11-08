puts <<~TEXT
  旅行プランを選択して下さい。

  1. 沖縄旅行（10000円）
  2. 北海道旅行（20000円）
  3. 九州旅行（15000円）

TEXT

products = [
  { name: '沖縄旅行', price: 10_000 },
  { name: '北海道旅行', price: 20_000 },
  { name: '九州旅行', price: 15_000 }
]

while true
  print 'プランの番号を選択 > '
  select_product_num = gets.to_i
  break if (1..3).include?(select_product_num)

  puts '1~3の番号を入力して下さい。'
end
chosen_product = products[select_product_num - 1]

puts "#{chosen_product[:name]}ですね。"
puts '何名で予約されますか？'
while true
  print '人数を入力 > '
  quantity_of_product = gets.to_i
  break if quantity_of_product >= 1

  puts '1以上を入力して下さい。'
end

puts "#{quantity_of_product}名ですね。"

total_price = chosen_product[:price] * quantity_of_product

if quantity_of_product >= 5
  puts '5名以上ですので10%割引となります'
  total_price *= 0.9
end
puts "合計金額は#{total_price.floor}円になります。"
