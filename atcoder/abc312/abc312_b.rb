H, W, = gets.split.map(&:to_i)
S = Array.new(H) { gets.chomp.tr('.#', '01').bytes.map! { |b| b - 0x30 } }
(H - 8).times do |i|
    (W - 8).times do |j|
        ok = true
        3.times do |x|
            3.times do |y|
                ok &= S[i + x][j + y] == 1
                ok &= S[i + x + 6][j + y + 6] == 1
            end
        end
        4.times do |x|
            ok &= S[i + 3][j + x] == 0
            ok &= S[i + x][j + 3] == 0
            ok &= S[i + 5][j + x + 5] == 0
            ok &= S[i + x + 5][j + 5] == 0
        end
        if ok
            print("#{i + 1} #{j + 1}\n")
        end
    end
end