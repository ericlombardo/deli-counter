require 'pry'

def line(customers)   # gives list of customers currently in line
  if customers.empty?
    puts "The line is currently empty."
  else        
    customer_list = ''
    customers.each_with_index do | customer, index |   # assign a number to each customer
        customer_list << " #{index + 1}. #{customer}"   
    end
    puts "The line is currently:" + customer_list
  end
end

def take_a_number(customers, new_customer)   # puts customer in line and tells what number they are
    customers << new_customer
    puts "Welcome, #{new_customer}. You are number #{customers.length} in line."
end

def now_serving(customers)   # lets customers know who is being served
    puts "There is nobody waiting to be served!" if customers.empty?
    puts "Currently serving #{customers.first}." if !customers.empty?
    customers.shift
end