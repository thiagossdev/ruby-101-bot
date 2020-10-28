FROM ruby:2.7.2

# Instala nossas dependencias
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
  build-essential libpq-dev

# Instalar bundler
RUN gem install bundler

# Seta nosso path
ENV INSTALL_PATH /oneohonebot

# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH

# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH

# Copia o nosso Gemfile para dentro do container
COPY Gemfile ./

# Instala as Gems
RUN bundle install

# Seta o path para as Gems
ENV BUNDLE_PATH /gems

# Copia nosso código para dentro do container
COPY . .
