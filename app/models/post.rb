# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
class Post < ApplicationRecord

 has_many :comments , dependent: :destroy
 belongs_to :user 
 #validation
 validates_presence_of :title
 validates_presence_of :body
end
