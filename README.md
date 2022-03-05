# Web Finances - Harvard CS50


A simple web application to manage a small stock investment portfolio and keep a record of buy/sell operations.


## Project

This is my implementation of the problem set 7 in Harvard's CS50 (2010) when I was following the course back in **2011**.

For the original files, check [this link](https://cdn.cs50.net/2010/fall/psets/7/).


## Requirements

- HTTP server configured to run PHP 5
- MySQL database

> Tested with [EasyPHP DevServer](https://www.easyphp.org/easyphp-devserver.php) with 5.6.30


## Configuration

### PHP

Edit `php.ini` on your web server and set `short_open_tag = On` to allow PHP to handle short tags like:

```php
<? example(); ?>
```

Restart server.

### Database

Connect to MySQL using command line, PHPMyAdmin or some other client and run script on `database/schema.sql` to create tables.

Edit `includes/constants.php` to set database options.


## Yahoo quotes

- The Yahoo service for getting quotes is no longer available
- Just to get the project running I implemented a fake service (`includes\helpers.php`, function `lookup`)
- For a more "real" application, should replace with a real API
