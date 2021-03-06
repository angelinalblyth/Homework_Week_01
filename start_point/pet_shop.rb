# 1st Problem
def pet_shop_name(shop)
  return shop[:name]
end
# 2nd Problem
def total_cash(shop)
  return shop[:admin][:total_cash]
end
# 3rd Problem & 4th Problem
def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end
# 5th Problem
def pets_sold(shop)
  shop[:admin][:pets_sold]
end
# 6th Problem
def increase_pets_sold(shop,sold_pets)
  shop[:admin][:pets_sold] += sold_pets
end
# 7th Problem
def stock_count(shop)
  shop[:pets].length
end
# 8th Problem & 9th Problem
def pets_by_breed(shop, breed)
  pet_breed = []
  pets = shop[:pets]
  for pet in pets
    if pet[:breed] == breed
      pet_breed.push(pet)
    end

  end
  return pet_breed
end

# 10th and 11th Problem
# Want to iterate over the pet names
# Check if the name equals the name being searched
# if true return the name
def find_pet_by_name(shop, name)

  # pet_name = {}
  pets = shop[:pets]
  for pet in pets
    if pet[:name] == name
      # pet_name[:name] = pet[:name]
      return pet
    end
  end
  nil
end

# 12th Problem

def remove_pet_by_name(shop, name)
  pets = shop[:pets]
  for pet in pets
    if pet[:name] == name
      pets.delete(pet)
    end
  end
end


# 13th Problem

def add_pet_to_stock(shop, new_pet)
  pet = shop[:pets]
  pet.push(new_pet)
end

# 14th Problem

def customer_cash(customer)
  customer[:cash]
end


# 15th Problem

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

# 16th Problem
def customer_pet_count(customer)
  customer[:pets].length
end

# 17th Problem

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet).length
  # customer[:pets].length
end

# # OPTIONAL

# 1st opitonal Problem

# check customer cash == pet price
# if true
# p "Can buy"
def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

# 2nd optional Problem
def sell_pet_to_customer(shop, pet, customer)

  return if (pet == nil)
 if customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    increase_pets_sold(shop, 1)
    remove_customer_cash(customer, pet[:price])
    add_or_remove_cash(shop, pet[:price])
end


end
