Rails.configuration.stripe = {
  :publishable_key => 'pk_test_Se5d3fw8PC2PzYtrKaqumVRW00k4eT2TJi',
  :secret_key      => 'sk_test_g5xu6j6P8v3oel2SNI34WtqM003wpohzYC'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]