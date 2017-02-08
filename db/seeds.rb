User.create(username: "john")

incomple_task_seeds = [
	{task_name: "run", due_date: "2017-01-20", user_id: 1},
	{task_name: "bake", due_date: "2017-02-19", user_id: 1},
	{task_name: "do laundry", due_date: "2017-02-09", user_id: 1},
	{task_name: "read", due_date: "2017-03-01", user_id: 1}

]

incomple_task_seeds.each { |task| Todo.create!(task)}
