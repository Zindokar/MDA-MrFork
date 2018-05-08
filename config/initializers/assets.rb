# Be sure to restart your server when you modify this typesfile.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.scss, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( grid.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( addresses.scss )
Rails.application.config.assets.precompile += %w( alerts.scss )
Rails.application.config.assets.precompile += %w( dishes.scss )
Rails.application.config.assets.precompile += %w( photos.scss )
Rails.application.config.assets.precompile += %w( reservations.scss )
Rails.application.config.assets.precompile += %w( restaurants.scss )
Rails.application.config.assets.precompile += %w( schedules.scss )
Rails.application.config.assets.precompile += %w( searches.scss )
Rails.application.config.assets.precompile += %w( types.scss )
Rails.application.config.assets.precompile += %w( welcome.scss )
