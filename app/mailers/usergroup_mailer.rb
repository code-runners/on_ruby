class UsergroupMailer < ActionMailer::Base
  def invitation_mail(event)
    @event = event
    options = {
      from: %Q("#{I18n.tw('name')}" <onruby@googlemail.com>),
      to: "mailto:ruby-on-rails-bulgaria@googlegroups.com",
      subject: "#{Whitelabel[:label_id].upcase} Info: #{event.name}",
    }
    default_url_options[:host] = "#{Whitelabel[:label_id]}.onruby.#{Whitelabel[:tld]}"
    mail(options)
  end
end
