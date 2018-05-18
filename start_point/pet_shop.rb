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
  shop[:admin][:pets_sold] = 2
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
