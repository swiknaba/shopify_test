# frozen_string_literal: true

# == Schema Information
#
# Table name: shops
#
#  id             :bigint           not null, primary key
#  shopify_domain :string           not null
#  shopify_token  :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_shops_on_shopify_domain  (shopify_domain) UNIQUE
#
class Shop < ActiveRecord::Base
  include ShopifyApp::ShopSessionStorage

  def api_version
    ShopifyApp.configuration.api_version
  end
end
