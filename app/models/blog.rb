# == Schema Information
#
# Table name: blogs
#
#  id          :integer          not null, primary key
#  content     :text(5000)       not null
#  date        :datetime         not null
#  image       :string
#  num_likes   :integer
#  title       :string(100)      not null
#  urlblog     :string(300)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#  user_id     :integer
#
# Indexes
#
#  index_blogs_on_location_id  (location_id)
#  index_blogs_on_user_id      (user_id)
#

class Blog < ApplicationRecord
	validates :title, :content, :date, presence: true
	validates :title, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
	validates :content, length: { maximum: 5000, too_long: "Se permiten máximo %´{count} caracteres" }
	belongs_to :user
    has_many :photo_galeries, as: :imageable
    has_many :blog_tag_mediators
    has_many :tags, through: :blog_tag_mediators
    belongs_to :location, optional: true
    has_many :comment

    def getUser( indexUser )
        #User.where( id: indexUser )
        #User.new( User.where( id: indexUser ) )
        User.select( :id ).where( id: indexUser )
    end

    def getEmailUser( indexUser )
        User.select( :email ).where( id: indexUser )
    end

end
