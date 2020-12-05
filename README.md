## About
There is a test store at which this app is installed for testing:

https://luds-test-store.myshopify.com/admin

Link to this app:

https://partners.shopify.com/705750/apps/4641111

Hosting is done on Heroku:

https://dashboard.heroku.com/apps/shopify-test-lud

Browse it here:

https://shopify-test-lud.herokuapp.com/

If you want to install the app on your store, visit:

https://shopify-test-lud.herokuapp.com/install

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
We must have a shop do perform requests. When you installed the app in your test-shop,
you can pull domain + token from the DB on your server, and create the shop on your local machine to play around.

```ruby
# e.g. pull in token + domain from Heroku, persists locally
luds_shop = Shop.find_by(shopify_domain: 'luds-test-store.myshopify.com')

# initialize a session
session = ShopifyAPI::Session.new(domain: luds_shop.shopify_domain, token: luds_shop.shopify_token, api_version: '2020-10')

ShopifyAPI::Base.activate_session(session)

# we can now pull all products from this store:
products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
```
