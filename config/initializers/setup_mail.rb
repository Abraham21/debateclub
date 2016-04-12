ActionMailer::Base.smtp_settings = {
:address        => "smtp.gmail.com",
:port           => 587,
:domain         => "gmail.com",
:user_name      => "cchsdebateclub",
:password       => "DEBATEclub42",
:authentication => "plain",
:enable_starttls_auto   => true
}