framework "Cocoa"

require "rubygems"
require "hotcocoa"

class Application
  include HotCocoa
  
  def start
    application(:name => "Postie") do |app|
      app.delegate = self
      window(:size => [200, 200, 500, 500], :title => "1st MacRuby App") do |win|
        b = button :title => "Hello"
        b.on_action { puts "Hello World!" }
        win << b
        win << label(:text => "Hello from HotCocoa", :layout => { :start => false })
        win.will_close{ exit }
      end
    end
  end
end

Application.new.start
