class Dialogue < ActiveRecord::Base
    validates_length_of :name, :within => 1..50
    validates_uniqueness_of :name, :message => "is already used. Existing member!"
    validates_length_of :email, :within => 1..50
    validates_uniqueness_of :email, :message => "is already used. Existing member!"
end
