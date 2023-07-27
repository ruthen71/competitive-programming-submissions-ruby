N = gets.to_i
S = gets.chomp
count = [0, 0, 0]
for i in 0..N - 1
    count[S[i].ord - 'A'.ord] = 1
    if count.sum == 3
        print("#{i + 1}\n")
        exit
    end
end