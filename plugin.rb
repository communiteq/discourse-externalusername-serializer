# name: extend-user
# about: User Serializer Extender
# version: 0.1
# authors: DiscourseHosting

after_initialize do
  add_to_serializer(:user, :external_username) { 
    unless object.single_sign_on_record.nil?
      object.single_sign_on_record.external_username
    else
      "hello"
    end
  }
end
