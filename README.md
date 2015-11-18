# pghumor Demo

Demo of tweets detected as humorous by the project pghumor

## Set up the database

Create the file `config/secrets.yml` with the content (replacing with the password of the user of the used database):

```yml
development:
  password: --PASSWORD--
  secret_key_base: --SECRET_KEY_BASE--

test:
  password: --PASSWORD--
  secret_key_base: --SECRET_KEY_BASE--

production:
  password: <%= ENV["PASSWORD"] %>
  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
```

To generate the values of `secret_key_base` in `development` and `test`, run:

```bash
bundle exec rake secret
```

Grant access to `pghumor` to the database:

```sql
GRANT ALL PRIVILEGES ON prueba_concepto_development.* TO 'pghumor'@'%' WITH GRANT OPTION;
```

## Catch changes while running the server

```bash
bundle exec rerun "bundle exec rails server"
```
