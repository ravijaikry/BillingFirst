
%w(Amar Akbar Anthony).each do |name|
	Friend.find_or_create_by(name: name)
end

puts "=============Created Friend list================="

%w(Lunch Dinner Snacks).each do |name|
	EventType.find_or_create_by(name: name)
end

puts "=============Created EventType list================="