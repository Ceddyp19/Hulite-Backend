class Movie < ActiveRecord::Base
    has_many :mystuffs
    has_many :users, through: :mystuffs
end