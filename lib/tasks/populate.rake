namespace :db do
  desc 'Populate database'
  task populate: :environment do
    Rake::Task['db:reset'].invoke

    bm1 = Bookmark.create!(
                            title: 'Google',
                            link: 'http://google.fr'
                          )

    bm2 = Bookmark.create!(
                            title: 'EPNet',
                            link: 'http://epnet.fr'
                          )

    bm3 = Bookmark.create!(
                            title: 'Bonjour Madame',
                            link: 'http://www.bonjourmadame.fr/'
                          )
  end
end
