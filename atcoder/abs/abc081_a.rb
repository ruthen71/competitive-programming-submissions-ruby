s = gets.chomp
ans = 0
for i in 0..2
    if s[i] == '1'
        ans += 1
    end
end
print("#{ans}\n")