names = ["Tim Jones", "Tom Smith", "Jim Campagno"]

def my_collect(array)
  if block_given?
    i = 0
    
    while i < array.length
      yield(array[i])
      i += 1
    end
    array
  else
    "Block not provided"
  end
end

my_collect(names) do |name|
  name.split(" ").first
end

def outside_the_box(["Patricia Dunn", "Albert Pumpernickelk"])