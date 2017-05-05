## Elektrum Laravel

### Contains

##### Auto-generated database migrations:

`/database/migrations/*.php`

##### Auto-generated models with manual edits (in progress):

`/app/*.php`

##### Manually written model factories

`/database/factories/ModelFactory.php`

##### Temporary command ```sarp:generate``` for database seeding

`/routes/console.php`

##### Web UI for model browsing

Point the browser to webroot

### Install

```sh
# First, create a db table and then
cp .env.example .env
# and edit db credentials in .env
composer install
yarn
php artisan migrate
php artisan sarp:generate
npm run build
```

