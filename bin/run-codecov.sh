#!/bin/bash

# python tests
echo $PWD
cd app
echo $PWD
coverage run ./manage.py test --noinput --settings=app.settings.local
bash <(curl -s https://codecov.io/bash) -cF python

# javascript tests
cd ..
echo $PWD
npm test
bash <(curl -s https://codecov.io/bash) -cF javascript