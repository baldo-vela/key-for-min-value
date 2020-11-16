# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

# ikea = {:chair => 25, :table => 85, :mattress => 450}
# key_for_min_value(ikea)
# # => :chair

# veggies = {"apple" => -45, "banana" => -44.5, "carrot" => -44.9}
# key_for_min_value(veggies)
# # => "apple" 

def key_for_min_value(name_hash)
    min_value = nil
    min_key = nil
    name_hash.each do |temp_key, temp_value|
        if min_value == nil
            min_value = temp_value
            min_key = temp_key
        elsif min_value > temp_value
            min_value = temp_value
            min_key = temp_key
        end
    end
    min_key
end