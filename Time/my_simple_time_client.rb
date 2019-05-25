require 'socket'
require 'timeout'

class MySimpleTimeClient
  def start
    socket = UDPSocket.new
    socket.connect("localhost", 12321)
    socket.send("",0)

    timeout(10)do
      time = socket.gets
      puts "The time is #{time}"
    end
  end
end