json.array!(@tasks) do |task|
  json.extract! task, :trip_Name, :trip_Leaders, :trip_Area, :trip_Location, :start_date, :end_Date, :trip_Cost, :trip_description, :completed
  json.url task_url(task, format: :json)
end
