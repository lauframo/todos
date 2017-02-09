module ToDos
	class API < Grape::API
		version 'v1', using: :path
		format :json

		
		namespace :user do
			params do
				requires :username, type: String
			end

			get :all_items do
		    	@user = User.find_by(username: params[:username])
		    	@todos = @user.todos
		    	{@user.username => @todos}
		    end

		    get :incomplete_items do
		    	@user = User.find_by(username: params[:username])
		    	@incomplete_todos = @user.todos.where(complete: false)
		    	{@user.username => @incomplete_todos}
		    end
		end

		namespace :create_task do
			params do
				requires :username, type: String
				requires :task_name, type: String
				requires :due_date, type: Date 
			end

			post do
				@user = User.find_by(username: params[:username])
				@task = Todo.new(task_name: params[:task_name], due_date: params[:due_date])
				@user.todos << @task
				@task.save
				@task
			end
		end

		namespace :update_task do
			params do
				requires :username, type: String
				requires :task_name, type: String
			end

			post do
				@user = User.find_by(username: params[:username])
				@task = Todo.find_by(task_name: params[:task_name], user_id: @user)
				@task.complete = true
				@task.save
				@task
			end
		end

	end
end