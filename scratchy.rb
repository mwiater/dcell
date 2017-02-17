require 'dcell'

DCell.start :id => "scratchy", :addr => "tcp://0.0.0.0:9002", :registry => { :adapter => 'redis', :host => "192.168.99.104" }

itchy_node = DCell::Node["itchy"]

puts "Fighting itchy! (check itchy's output)"

6.times do
  itchy_node[:itchy].fight
  sleep 1
end
