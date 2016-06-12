# Book to read: CLEAN CODE, a handbook of ... software

# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

# --------------

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take the list of strings and SPLIT it into an array
  # set default quantity to 1
  # place the items from the array into a hash using EACH DO with the key from the array and the qty at 1
  # print the list to the console using ".times"
  #     [can you use one of your other methods here?]
# output the hash using key, value pairs 
#       [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# ask the user for an object and a quantity
# set the variables
# steps: add the key, value pair to the hash
# output the key, value pairs in the entire hash (with updated items)

# Method to remove an item from the list
# input: the hash with the items and quantities as key, value pairs
# steps: ask the user which item to remove from hash
# remove the appropriate key, value pair using DELETE
# output the key, value pairs in the updated hash

# Method to update the quantity of an item
# input: ask the user for the item to update and the new quantity
# steps: update the value of the key using "hash['key'] = qty"
# output the key, value pairs in the updated hash

# Method to print a list and make it look pretty
# input: the hash with the items and quantities (key, value)
# steps: ask the user if they would like to print the list
# use "x.times" to go through the list and print each key, value pair as
# output: the updated hash, as below with key, value pairs below a heading
#     item     quantity
#     -----    --------
#     banana   4

food_items = "carrots apples cereal pizza"

def display_list(foods)
  puts "food        quantity"
  puts "----        --------"
  foods.each do |key, value|
    puts "#{key}        #{value}"
  end
end

def convert_to_hash(food_items)
  food_items_array = food_items.split(' ') # convert to array
  food_items_hash = {}
  food_items_array.each do |item|
  	food_items_hash[item]=1 # set default quantity to 1 for every food item
  end

  food_items_hash
end

def add_item(food_items)
  puts "What is the name of the item you would like to add to the list?"
  food = gets.chomp
  puts "How many #{food} would you like to add?"
  qty = gets.chomp
  food_items[food] = qty

  display_list(food_items)
end

def remove_item(food_items)
  puts "What is the name of the item you would like to remove from the list?"
  food = gets.chomp
  food_items.delete(food)

  display_list(food_items)
end

def update_item(food_items)
  puts "What item would you like to update?"
  food = gets.chomp
  puts "What is the new quantity?"
  qty = gets.chomp
  food_items[food] = qty

  display_list(food_items)
end

food_items_hash = convert_to_hash(food_items)
display_list(food_items_hash)
add_item(food_items_hash)
remove_item(food_items_hash)
update_item(food_items_hash)



