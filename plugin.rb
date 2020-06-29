# name: extend-user
# about: User Serializer Extender
# version: 0.2
# authors: DiscourseHosting

after_initialize do
  add_to_serializer(:user, :external_username) do
    unless object.single_sign_on_record.nil?
      object.single_sign_on_record.external_username
    else
      ""
    end
  end

  add_to_serializer(:user_card, :external_username) do
    unless object.single_sign_on_record.nil?
      object.single_sign_on_record.external_username
    else
      ""
    end
  end

end
