base_path = File.expand_path("..", __dir__)

Decidim::Webpacker.register_path("#{base_path}/app/packs")
Decidim::Webpacker.register_stylesheet_import("stylesheets/decidim/modules/ui_tweaks")
Decidim::Webpacker.register_entrypoints(
  decidim_ui_tweaks: "#{base_path}/app/packs/entrypoints/decidim_ui_tweaks.js"
)
