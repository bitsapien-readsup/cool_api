Rails.application.config.middleware.use OmniAuth::Builder do

  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], 
  :callback_path => '/callbacks/facebook',
  :scope => "user_location,user_friends,user_photos,user_birthday" , 
  :info_fields => "email,name,friends,first_name, last_name,location,birthday, bio, about,cover"


  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"], 
  :callback_path => '/callbacks/google_oauth2',
  :scope => "email,profile,plus.me,plus.login",
  :prompt => "select_account",
  :image_aspect_ratio => "square",
  :image_size => 50,
  :skip_friends => false
end
