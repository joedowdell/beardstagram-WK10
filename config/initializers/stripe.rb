Rails.configuration.stripe = {
  :publishable_key => Rails.application.secrets.test_publishable_key,
  :secret_key      => Rails.application.secrets.test_secret_key
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]