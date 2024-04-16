import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

// Plyr requirement...
// src: https://reintech.io/blog/creating-video-streaming-applications-with-ruby
//= require plyr
export { application }
