#!/usr/bin/env ruby
# lunchtime.rb

def background_run_at(time)
  fork do
    sleep(1) until Time.now >= time
    yield
  end
end

today = Time.now
moment = Time.local(today.year, today.month, today.day, 14, 40, 0)
raise Exception, "It's already past time now!" if moment < Time.now

background_run_at(moment) { puts "TIME!!!!!!!" }
