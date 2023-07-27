# AtCoder Beginner Contest 311

[URL](https://atcoder.jp/contests/abc311)


## A - First ABC

- `'string'.ord` でアスキーコードに変換

## B - Vacation Together

## C - Find it!

出力
- 文字列にまとめてから一気に出力する

## D - Grid Ice Floor

queue

- 普通の配列をそのまま使うことができる
- `a = que.shift` で C++ における `a = que.front()` と `que.pop()` を同時にやる

関数

- `def function()` でできる
- Python に似ている

## E - Defect-free Squares

2 次元配列

- `dp = Array.new(H + 1) { Array.new(W + 1, 0) }` などで可能
- 定数倍が良いかは知らない(良くなさそう)

## F - Yet Another Grid Task

定数倍高速化テクニック

- 文字列の比較は遅いので `Array.new(H) { gets.chomp.tr('.#', '01').bytes.map! { |b| b - 0x30 } }` などとすると良い([使った版](/atcoder/abc311/abc311_f.rb)は通るが、[使っていない版](/atcoder/abc311/abc311_f2.rb)は落ちる)
- 除算は遅いので `if s >= MOD s -= MOD end` を使う
- 配列を毎回確保するのも遅い
- `for i in 0..N - 1` よりも `N.times do |i|` のほうが速い
- `dp = np.dup` で 1 次元落とす

