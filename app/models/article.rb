class Article < ActiveRecord::Base
<<<<<<< HEAD
 has_many :comments
=======
  has_many :comments, dependent: :destroy
>>>>>>> 2dcb805fecf0addaa33a8a3a8fb0dc4cfdd7a34f
  validates :title, presence: true,
                    length: { minimum: 5 }
end