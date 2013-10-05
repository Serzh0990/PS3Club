class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
 after_create :send_mail
 
 def send_mail
   UserMailer.post_email(self.email).deliver
   end  
       
       
       end
