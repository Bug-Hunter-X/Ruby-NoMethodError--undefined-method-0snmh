```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end

  def method_missing(method_name, *args, &block)
    # Handle missing methods gracefully
    puts "Method '#{method_name}' not found"
    nil # Or raise a custom exception
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10

my_object.value = 20
puts my_object.value  # Output: 20

#The solution is to use the method_missing method to handle the case where a method is called that does not exist.
puts my_object.nonExistentMethod # Output: Method 'nonExistentMethod' not found
```