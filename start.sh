# Instala as Gems
bundle check || bundle install

# Roda nosso servidor
bundle exec rackup config.ru -o 0.0.0.0
