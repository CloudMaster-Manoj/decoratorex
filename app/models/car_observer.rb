#require 'my_logger'
require 'net/smtp'
require 'resolv-replace.rb'

class CarObserver < ActiveRecord::Observer
    
    def after_update(record)
       
       puts "HI FUCKERS HOW ARE YOU"
        message = <<MESSAGE_END
                From: Private Person <manojitkannan@gmail.com>
                To: A Test User <manojkannan0@gmail.com>
                Subject: SMTP e-mail test
                This is a test e-mail message.
                
MESSAGE_END
            smtps =  Net::SMTP.new('smtp.gmail.com',587)
           
            smtps.enable_starttls_auto if smtps.respond_to?(:enable_starttls_auto)
            smtps.debug_output = $stderr
            smtps.start('localhost','manojitkannan@gmail.com','htedqabnhxluoklh', :plain) do |smtp|
              smtp.send_message(message, 'manojitkannan@gmail.com', 'manojkannan0@gmail.com')
             smtp.finish
                     end
    end
end
