configure :test do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'onebitbot_test',
    pool: 5,
    host: 'db',
    username: 'postgres',
    password: ENV['DB_PASSWORD']
  }
end

configure :development do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'onebitbot_development',
    pool: 5,
    host: 'db',
    username: 'postgres',
    password: ENV['DB_PASSWORD']
  }
end
