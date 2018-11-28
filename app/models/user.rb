class User < ApplicationRecord
  has_secure_password

  has_many :entries
  has_many :moments
  has_many :feelings, through: :moments
  has_many :settings, through: :moments

  def positive_at_work
    self.moments.select do |moment|
      (moment.setting.name == "at work" && moment.feeling.rank >= 6)
    end
  end

  def negative_at_work
    self.moments.select do |moment|
      (moment.setting.name == "at work" && moment.feeling.rank < 6)
    end
  end

  def positive_with_family
    self.moments.select do |moment|
      (moment.setting.name == "with family" && moment.feeling.rank >= 6)
    end
  end

  def positive_with_family
    self.moments.select do |moment|
      (moment.setting.name == "with family" && moment.feeling.rank < 6)
    end
  end

  def positive_outdoors
    self.moments.select do |moment|
      (moment.setting.name == "outdoors" && moment.feeling.rank >= 6)
    end
  end

  def negative_outdoors
    self.moments.select do |moment|
      (moment.setting.name == "outdoors" && moment.feeling.rank < 6)
    end
  end

  def positive_exercising
    self.moments.select do |moment|
      (moment.setting.name == "exercising" && moment.feeling.rank >= 6)
    end
  end

  def negative_exercising
    self.moments.select do |moment|
      (moment.setting.name == "exercising" && moment.feeling.rank < 6)
    end
  end

  def positive_downtime
    self.moments.select do |moment|
      (moment.setting.name == "downtime" && moment.feeling.rank >= 6)
    end
  end

  def negative_downtime
    self.moments.select do |moment|
      (moment.setting.name == "downtime" && moment.feeling.rank < 6)
    end
  end

  def positive_socializing
    self.moments.select do |moment|
      (moment.setting.name == "socializing" && moment.feeling.rank >= 6)
    end
  end

  def negative_socializing
    self.moments.select do |moment|
      (moment.setting.name == "socializing" && moment.feeling.rank < 6)
    end
  end

  def positive_other
    self.moments.select do |moment|
      (moment.setting.name == "other" && moment.feeling.rank >= 6)
    end
  end

  def negative_other
    self.moments.select do |moment|
      (moment.setting.name == "other" && moment.feeling.rank < 6)
    end
  end

end
