a, b = gets.split.map(&:to_i)
if a * b % 2 == 1 then
    print("Odd")
else
    print("Even")
end