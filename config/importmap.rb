# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application'
pin 'swiper/element/bundle', to: 'swiper--element--bundle.js' # @11.1.3
pin '@hotwired/stimulus', to: 'stimulus.min.js'
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js'
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin '@stimulus-components/carousel', to: '@stimulus-components--carousel.js' # @6.0.0
pin 'swiper/bundle', to: 'swiper--bundle.js' # @11.1.3
