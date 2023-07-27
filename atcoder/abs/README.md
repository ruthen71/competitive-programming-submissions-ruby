# AtCoder Beginners Selection

[URL](https://atcoder.jp/contests/abs)

## PracticeA - Welcome to AtCoder
[code](/atcoder/abs/practice_1.rb)

入力
- 1 つの整数: `gets.to_i`
- 2 つ以上の整数: `gets.split.map(&:to_i)`
- 1 つの文字列: `gets.chomp`

出力
- `print("#{val}")` が C++ の `std::cout << val` に相当

## ABC086A - Product
[code](/atcoder/abs/abc086_a.rb)

if 文
```rb
if condition then
    process
else
    process
end
```
`then` はなくても良い

## ABC081A - Placing Marbles
[code](/atcoder/abs/abc081_a.rb)

for 文
```ruby
for i in 0..2   # i \in [0, 2]
    process
end
```

## ABC081B - Shift only

[code](/atcoder/abs/abc081_b.rb)

while 文
```ruby
while condition
    process
end
```

- `min(x, y)`, `max(x, y)` は `[x, y].min()` や `[x, y].max()` で可能

## ABC087B - Coins

[code](/atcoder/abs/abc087_b.rb)

## ABC083B - Some Sums

[code](/atcoder/abs/abc083_b.rb)

## ABC088B - Card Game for Two

[code](/atcoder/abs/abc088_b.rb)

sort

```ruby
A = Array.new(N, 0)
A.sort! {|a, b| b <=> a }
```

- `!` を付けると破壊的メソッドになる
- `a <=> b` は `a < b` のとき `-1` を、`a == b` のとき `0` を、`a > b` のとき `1` を返す(比較できない時は `nil` を返す)

## ABC085B - Kagami Mochi

[code](/atcoder/abs/abc085_b.rb)

uniq

```ruby
A = Array.new(N, 0)
A.uniq!
```

2 回以上出現する要素について、前から順に 2 回以上出てきたタイミングで削除される

## ABC085C - Otoshidama

[code](/atcoder/abs/abc085_c.rb)

## ABC049C - Daydream

[code](/atcoder/abs/abc049_c.rb)

配列

```ruby
A = Array.new(N + 1, 0)
A.size  # Array size
S = [string, string, ...]
```

部分文字列(substr)
`string[index, length]` が C++ の `string.substr(index, length)` に相当

```ruby
S = "abc"
S[0, 3] # "abc"
S[2, 1] # "c"
```

## ABC086C - Traveling

[code](/atcoder/abs/abc086_c.rb)

abs は `Integer.abs` で取得可能



