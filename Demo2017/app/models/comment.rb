# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  author     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  special    :boolean          default(FALSE)
#

class Comment < ApplicationRecord
  validates :body, :author, presence: true
end
