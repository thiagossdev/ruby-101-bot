# Instala as Gems
bundle check || bundle install

# Roda nosso servidor
rackup config.ru -o 0.0.0.0
