require "pry"

class User
  attr_accessor :email
  attr_accessor :age
  @@all_users = []

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_users += [self]
  end

  def self.find_by_email(email_to_find)
    @@all_users.each { |user| return user if user.email == email_to_find} 
  end

  def self.all
    return @@all_users
  end
end
