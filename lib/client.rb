require "httparty"
require "pry"

class SamplParty
  include HTTParty
  base_uri "http://10.0.0.77:4567"

  def better(options={})

    SamplParty.post("/better", :body => options)
  
  end

  def harder(options={})
  	SamplParty.post("/harder", :body => options)
  end

  def faster(options={})
  	SamplParty.post("/faster", :body => options)
  end

 def stronger(options={})
  	SamplParty.post("/stronger", :body => options)
  end
   def beat
  	SamplParty.post("/beat")
  end

  def stop
    SamplParty.get("/stop")
  end
end
server = SamplParty.new 
server.beat
server.harder
sleep(0.5)
server.better
sleep(0.5)
server.faster
sleep (2)
server.stronger
sleep 10
server.stop

#binding.pry

