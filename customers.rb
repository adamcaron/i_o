require 'csv'

# write a program which can load the customers.csv
csv = CSV.open('customers.csv', headers: true)
csv.each do |row|
  last_names = []
  last_names << row["last_name"]
  last_names.select do |name|
    if name[0] == "A"
      CSV.open('customers_a.csv', "a") do |csv|
        csv << [name]
      end
    end
  end
end


# read each line

# for each letter in alphabet
# get lastnames that start with that letter

# and output to a new file
# outputs 26 new files: each containing the-customers-with-a-shared-first-letter-of-their-last-name
# Ex. So you'll output customers_a.csv, customers_b.csv, etc.





