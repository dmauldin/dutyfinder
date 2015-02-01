json.array!(@duties) do |duty|
  json.extract! duty, :id, :name, :players, :level, :time_limit, :category, :sync_level
  json.url duty_url(duty, format: :json)
end
