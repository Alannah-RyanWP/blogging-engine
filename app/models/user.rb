class User < ApplicationRecord
    validates_presence_of :firstname
    validates_presence_of :secondname
    #validate :password_complexity
    def password_complexity
        # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
        if password.blank? || password =~ /(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/
            flash[:alert] = "Complexity requirement not met. Please use: 1 uppercase, 1 lowercase, 1 digit and 1 special character"
        end
        return password
    end
end
