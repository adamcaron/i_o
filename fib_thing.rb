# creates a file named "fib.txt"
x = File.open("fib.txt", "w")
quantity = 9
sequence = [0, 1]
until sequence.count == quantity
  next_number = sequence.last(2).inject(:+)
  sequence << next_number
end
until sequence.empty?
  3.times do
    padding = sequence[-1].to_s.length + 1
    x.write(sequence.shift.to_s.ljust(padding, ', '))
    # print sequence.shift.to_s.rjust(padding, ' ')
  end
  x.write("\n")
end
x.close

# In that file output the first 30 numbers of the Fibonacci sequence


# three numbers per line, like this:
# 0, 1, 1,
# 2, 3, 5,
# 8, 13, 21,
# 34, 55, 89,

