# RailsWiki
*A MediaWiki clone in Ruby on Rails.*

MediaWiki is the software developed for Wikipedia. It allows users to work together on pages. The history of every page is saved along with de user that made the edit. It also features its own markup called Wikicode.

## MVP
* signup/signin
* create page
* support wikicode (WikiCloth)
* edit page:
  * save edit as new page
  * set original page as old
* show page history

## Models
### Page
* title:string
* body:text
* old:boolean
* user:references

### User (Device)

### Profile…

## Future...
* create user page
* namespaces (incl. templates)
* support 'red links'
