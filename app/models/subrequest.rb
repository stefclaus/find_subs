class Subrequest < ApplicationRecord
  belongs_to :assistant
	belongs_to :yogaclass
  validates :comment, :date, :assistant_covering, :assistant_requesting, :yogaclass_id, presence: true

#  scope :today_and_future, lambda {
#      {
#        :conditions => ["date >= ?", Time.zone.now.beginning_of_day]
#      }
#    }

  #scope :is_in_future, -> (date){ where("date = ?", date > Time.zone.now) }
#  def self.is_in_future(date)
#    where("date = ?", date > Time.zone.now)
#  end
# scope :today, lambda { WHERE('DATE(created_at) = ?', Date.today)}
  scope :created_before, ->(date) { where("date > ?", Time.zone.now) }
end
