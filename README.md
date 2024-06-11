# landing-on-rails
A small portfolio project to messaround with Ruby on Rails and display my _enthusiasm_ for Software Engineering roles and distain of neverending hackerrank/leetcode problems on the daily :P

It's been a while since I've worked on strictly frontend, and with all the time on my funemployed hands since my layoff in April I figured I might as well learn a new language as well. It's a good refreher too as I plan on applying to some Fullstack roles. 

## The Vision
Creating a frame for my video cover letter to woo you (uwu) 
while learning some Ruby and those Rails they supposedly roll on ᕕ( ᐛ )ᕗ

- [Project Notion](https://www.notion.so/anime-garbage/Project-Down-the-Barrel-6e750f09f58e49eea8ef8770e47cf3c5?pvs=4) {{UNPUBLISHED}}


## Development instructions
### Installation
From the [Hotwired Screencast](https://hotwired.dev/#screencast) and judging from [ImportMap docs](https://guides.rubyonrails.org/working_with_javascript_in_rails.html) Rails projects using import maps do not need Node or Yarn to function.

```
<!-- install dependencies -->
bundle
```

### Start Server
`rails s`

or

`rake dev` - I'd like to add more environment handling but ~~I gave up~~ decided it was out of scope.(╥_╥)

### Linting
haha, I'm a robot too, RuboCop. 🤖
Go go gadget rubocop! Autocorrect those lint issues!

```rake lint```


#### System dependencies / Notable Gems (for me, a newbie)
* [Hotwire](https://hotwired.dev/) - default front-end for Rails: apparently rails devs avoid js like the plague ┐(シ)┌
* [Stimulus](https://stimulus.hotwired.dev/) - dynamic html
* [RuboCop](https://github.com/rubocop/rubocop)  
* [Swiper Element](https://swiperjs.com/element) - Swiper WebComponent (Element)


##### If only, If only, the developer sighed
Here are a few features I think would be great to add to this if I have the time/will: 
- Contact form should have an embedded [Calendy](https://help.calendly.com/hc/en-us/articles/223147027-Embed-options-overview) widget so recruiters / site viewers can schedule an appointment with me directly through the site.

### Boilerplate rails
---
Things you may want to cover:

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* ...
