if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_that_bill_app", domain: "thatbillapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_that_bill_app"
end