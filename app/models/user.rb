class User < ApplicationRecord
  has_many :to_dos

  validates :psid, uniqueness: true

  def to_do_list
    to_dos.map.with_index do |to_do, index|
      "#{index + 1}. #{to_do.item}"
    end.join("\n")
  end
end
