# RailsZero

## Starting a new project

- Ensure correct Ruby version is installed

``` bash
rbenv local
rbenv install 2.4.0
```

- Install dependencies

``` bash
brew install node
brew install yarn
gem install bundler
bundle
yarn
```

- Generate new key pair instead of `config/secrets_rsa[.pub]`:

``` bash
cd config
ssh-keygen -t rsa -b 2048 -f secrets_rsa -q -N ""
ssh-keygen -f secrets_rsa.pub -e -m pem > secrets_rsa_pub
rm secrets_rsa.pub
mv secrets_rsa_pub secrets_rsa.pub
```

- Exclude secrets key pair from project tree with `.gitignore`.
- Exclude `application.yml` from project tree with `.gitignore`.
- Replace `railszero` everywhere with actual app name.
- Generate `secret_key_base` and `secret_token` for production.

``` bash
rails secret | pbcopy
```

- Set up Postgres

``` bash
createuser railszero --createdb
rails db:create db:migrate
```

## Command line hints

Build:

``` bash
yarn run webpack
```

Build for production:

``` bash
yarn run webpack -- -p
```

## References

- http://pixelatedworks.com/articles/replacing-the-rails-asset-pipeline-with-webpack-and-yarn/
- http://clarkdave.net/2015/01/how-to-use-webpack-with-rails/
- https://reinteractive.net/posts/213-rails-with-webpack-why-and-how
