# Bookmark webservice

Bookmark webservice for [EPNet](http://epnet.fr)'s lesson at [EPSI Arras](http://epsi.fr)

## Bootstrap application

```rb
cd config && cp database.yml{.sample,} && cd -
```

## Bootstrap your database

```rb
rake db:create; rake db:migrate; rake db:populate
```
