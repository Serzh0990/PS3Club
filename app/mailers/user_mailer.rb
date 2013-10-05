# coding: utf-8

class UserMailer < ActionMailer::Base
  default :from => "you@example.com"

     def post_email(user)
         mail(:to => user, :subject => "Добро пожаловать на сайт Playstation3 Club!")
        end
        
    end
