FROM dunglas/frankenphp
COPY . /app/public
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

