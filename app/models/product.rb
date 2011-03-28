class Product < ActiveRecord::Base
validates :titel, :description, :image_url, :presence => true
validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
validates :titel, :uniqueness => true
validates :image_url, :format => {
:with => %r{\.(gif|jpg|png)$}i,
:message => 'must be a URL for GIF, JPG or PNG image.'
}
end
