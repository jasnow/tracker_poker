# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :room do
    project_id 12345
    current_story_id -1
    users {|u| [u.association(:user)]}
  end
end
