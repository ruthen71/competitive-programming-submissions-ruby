N = gets.to_i
cx, cy, ct = 0, 0, 0
ok = 1
for i in 0..N - 1
    t, x, y = gets.split.map(&:to_i)
    d = (cx - x).abs + (cy - y).abs
    if d > t - ct || d % 2 != (t - ct) % 2
        ok = 0
    end
    cx, cy, ct = x, y, t
end
if ok == 1
    print("Yes\n")
else
    print("No\n")
end