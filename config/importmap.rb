# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "item", to: "item.js"
pin "card", to: "card.js"
pin "category", to: "category.js"
pin "item_name", to: "item_name.js"
pin "star", to: "star.js"