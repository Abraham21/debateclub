class UserMailer < ApplicationMailer
default :from => "cchsdebateclub@gmail.com"

def registration_confirmation(dialogue)
mail(:to => dialogue.email, :subject => "Debate Club!")
end
end
