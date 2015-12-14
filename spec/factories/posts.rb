FactoryGirl.define do
  factory :post do
    caption "so cute"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/bully.jpg', 'image/jpg')
  end

end
