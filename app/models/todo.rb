class Todo < ActiveRecord::Base
  belongs_to :user

  # after_save :update_task
  after_create :update_task

  validates :task_name, :due_date, { presence: true }
  # validates :task_name, uniqueness: { scope: :due_date }


  def update_task
  	self.complete = false
  	return true
  end


end
