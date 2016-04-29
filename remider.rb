#!/usr/bin/env ruby
# remider.rb

def background_every_n_seconds(n)
  fork do
    loop do
      before = Time.now
      yield
      interval = n - (Time.now - before)
      sleep(interval) if interval > 0
    end
  end
end

background_every_n_seconds(60) { puts 'Get back to work!' }
