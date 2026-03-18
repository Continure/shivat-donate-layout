# Shivat Donate Layout

Rails engine providing reusable header and footer layout components for Shivat Zion donate pages. Supports multiple languages (EN, HE, NL, DE, ES, PT, IT).

## Installation

Add to your Gemfile:

```ruby
gem "shivat-donate-layout", path: "../path/to/shivat-donate-layout"  # local development
# or
gem "shivat-donate-layout", git: "https://github.com/Continure/shivat-donate-layout.git"  # from git
```

Then run:

```bash
bundle install
```

## Usage

### In your layout or view

```erb
<%= render "shared/donate_header" %>
<%= yield %>
<%= render "shared/donate_footer" %>
```

### Routes

The header and footer use `root_path` and `donate_path` from your application routes. Ensure you have:

```ruby
# config/routes.rb
root "static_pages#index"  # or your root
get "donate", to: "static_pages#donate", as: :donate
```

If your routes use different names, configure in an initializer:

```ruby
# config/initializers/shivat_donate_layout.rb
ShivatDonateLayout.configure do |config|
  config.root_path = "/"           # default
  config.donate_path = "/donate"  # default
end
```

### Locales

The gem includes translations for nav, footer, and header in: en, he, nl, de, es, pt, it.

To override or customize, add the same keys to your application's locale files:

```yaml
# config/locales/en.yml
en:
  nav:
    about_us: "Custom About Us"
    # ...
  footer:
    # ...
  header:
    open_menu: "Open menu"
```

### Locale switching

The header includes a language switcher. Ensure your app supports `url_for(locale: locale)` for switching. Typically you need:

```ruby
# config/application.rb
config.i18n.available_locales = [:en, :he, :nl, :de, :es, :pt, :it]
config.i18n.default_locale = :en
```

And a route or controller action to handle locale changes (e.g. `update_locale`).

## Customization

- **Override partials**: Create `app/views/shared/_donate_header.html.erb` or `_donate_footer.html.erb` in your app to override the gem's defaults.
- **Override locales**: Add nav/footer/header keys to your locale files.
- **Override assets**: Replace images in your app's assets if needed (the gem uses `shivat_donate_layout/` prefix for its images).

## License

Proprietary - Shivat Zion
# shivat-donate-layout
