json.extract! user, :id, :first_name, :last_name, :email, :twitter, :screenhero, :company, :languages, :pronouns, :at_ada, :remote, :available, :physical_description, :pronouns, :created_at, :updated_at
json.url user_url(user, format: :json)
