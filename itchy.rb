require 'dcell'

DCell.start :id => "itchy", :addr => "tcp://0.0.0.0:9001", :registry => { :adapter => 'redis', :host => ENV['REDIS_HOST'] }

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
