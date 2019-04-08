def time_string(sec)
  [sec / 3600, sec / 60 % 60, sec % 60].map{|t| t.to_s.rjust(2,'0')}.join(':') #merci stackOveflow. https://stackoverflow.com/questions/28908214/converting-seconds-into-hours-only-using-ruby-in-built-function-except-the-day
end
