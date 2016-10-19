a = [[1,2],[3,[4,5]]]
b = [[1, 2, "cat"], [3, ["4", 5, "dog"]]]
def flatten(array, result=[])
  array.each do |element|
    if element.is_a?(Array)
      flatten(element, result)
    else
      result << element
    end
  end
  result
end

p flatten(a)
p flatten(b)
