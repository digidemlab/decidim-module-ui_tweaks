# frozen_string_literal: true

module Decidim
  module UiTweaks
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::UiTweaks

      initializer "decidim_ui_tweaks.assets" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end

      initializer "decidim_ui_tweaks.view_paths" do
        ActionController::Base.view_paths.unshift(File.expand_path("app/views", root))
      end
    end
  end
end
