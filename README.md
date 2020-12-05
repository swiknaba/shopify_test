## About
There is a test store at which this app is installed for testing:

https://luds-test-store.myshopify.com/admin

Link to this app:

https://partners.shopify.com/705750/apps/4641111

Hosting is done on Heroku:

https://dashboard.heroku.com/apps/shopify-test-lud

Browse it here:

https://shopify-test-lud.herokuapp.com/

-> find all credentials in my private 1Password vault under "Shopify Partner Account".

## Learnings about Shopify
First steps:
* setup app on Shopify
* setup codebase
* deploy to e.g. Heroku
* setup a domain (comes for free on Heroku)
* Shopify partners account > apps > MyApp > app setup > add your domain to "App URL" AND "Allowed redirection URL"
* create a test store on Shopify
* go to the URL of your app -> install the app in your test store

### In the rails console
We must have a shop do perform requests
```ruby
luds_shop = Shop.find_by(shopify_domain: 'luds-test-store.myshopify.com')

session = ShopifyAPI::Session.new(domain: luds_shop.shopify_domain, token: luds_shop.shopify_token, api_version: '2020-10')

ShopifyAPI::Base.activate_session(session)
```
