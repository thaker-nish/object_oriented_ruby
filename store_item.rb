basketball1 = {:type => "Indoor", :size => "Men's", :price => 40.99}
basketball2 = {:type => "Outdoor", :size => "Men's", :price => 24.99}
basketball3 = {type: "Indoor", size:  "Women's", price: 30.99}

puts "This is an #{basketball1[:type]} basketball and is a #{basketball1[:size]} size, it costs #{basketball1[:price]}"
puts "This is an #{basketball1[:type]} basketball and is a #{basketball2[:size]} size, it costs #{basketball2[:price]}"

class Basketball
attr_reader :type, :size, :price
  def initialize(input_options)
    @type = input_options[:type]
    @size = input_options[:size]
    @price =  input_options[:price]
  end

  def info
puts "This is an #{@type} basketball and is a #{@size} size, it costs #{@price}"
end
 end

basketball1 = Basketball.new( {type: "Indoor", size:"Men's", price:40.99}) 
basketball1.info
puts basketball1.type
