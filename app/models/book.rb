class Book < ApplicationRecord
    belongs_to :user
    has_one_attached :profile_image
end
def get_image(width, height)#ユーザーアイコン設定#
      unless image.attached?
        file_path = Rails.root.join('app/assets/images/sample-author1.jpg')
        image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
      end
      image.variant(resize_to_limit: [width, height]).processed
end