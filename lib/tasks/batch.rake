namespace :todo do
  desc "Update dates for tasks"
  task update_dates: :environment do
    Todo.pending.update_all("due_date_enum = due_date_enum + 1")
  end

  desc "Remove done tasks after one week"
  task remove_outdated_tasks: :environment do
    Todo.outdated_done.destroy_all
  end
end
