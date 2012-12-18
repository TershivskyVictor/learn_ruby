def measure(many_times = 1)
  start = Time.now
  many_times.times { yield }
  (Time.now - start) / many_times
end