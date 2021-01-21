# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  post_id    :integer          not null
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  #validations
  
  validate_presence_of :post_id
  validate_presence_of :body
end
