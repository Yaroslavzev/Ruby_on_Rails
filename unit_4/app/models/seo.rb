class Seo < ApplicationRecord
  belongs_to  :seontable ,  polymorphic:  true
end
