module ToDos
	class API < Grape::API
		format :json

		get :color do
	    	{ records: [] }
	    end


	end
end