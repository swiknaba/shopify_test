ENV['SHOPIFY_API_KEY'] ||= Rails.application.credentials.shopify[:api_key]
ENV['SHOPIFY_API_SECRET'] ||= Rails.application.credentials.shopify[:api_secret]

ShopifyApp.configure do |config|
  config.application_name = 'Ludtest'
  config.api_key = ENV['SHOPIFY_API_KEY']
  config.secret = ENV['SHOPIFY_API_SECRET']
  config.old_secret = ""
  config.scope = "read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.api_version = '2020-10'
  config.shop_session_repository = 'Shop'
  config.allow_jwt_authentication = true
end

# ShopifyApp::Utils.fetch_known_api_versions                        # Uncomment to fetch known api versions from shopify servers on boot
# ShopifyAPI::ApiVersion.version_lookup_mode = :raise_on_unknown    # Uncomment to raise an error if attempting to use an api version that was not previously known
