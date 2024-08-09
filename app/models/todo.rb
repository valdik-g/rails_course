class Todo < ApplicationRecord
  validates :task, presence: true

  scope :pending, -> { where(done: false) }
  scope :done, -> { where(done: true, due_date_enum: 0) }
  scope :outdated_done, -> { where(done: true, due_date_enum: -7) }

  def due_date_description
    case due_date_enum
    when 0
      "Today"
    when 1
      "Tomorrow"
    when -1
      "Yesterday"
    else
      if due_date_enum_before_type_cast > 1
        "After #{due_date_enum} days"
      else
        "Past #{due_date_enum.abs} days"
      end
    end
  end
end
