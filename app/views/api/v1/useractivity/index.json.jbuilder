json.array!(@activities) do |activity|
  json.extract! activity, :id, :user_id, :course_id, :lesson_id, :create_at, :updated_at
end
