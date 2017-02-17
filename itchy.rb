require 'dcell'

DCell.start :id => "itchy", :addr => "tcp://0.0.0.0:9001", :registry => { :adapter => 'redis', :host => "192.168.99.104" }

class Itchy
  include Celluloid

  def initialize
    puts "Ready for mayhem!"
    @n = 0
  end

  def fight
    @n = (@n % 6) + 1
    if @n <= 3
      puts "Bite!"
    else
      puts "Fight!"
    end
  end
end

Itchy.supervise_as :itchy
sleep
