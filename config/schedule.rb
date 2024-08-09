# Updates estimated time for the task
every :day, at: '12:00 pm' do
  rake "todo:update_dates"
end

# Removes outdated done tasks
every :week, at: '12:00 pm' do
  rake "todo:remove_outdated_tasks"
end
