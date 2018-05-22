#!/bin/bash

# python tests
cd app
coverage run ./manage.py test --noinput --settings=app.settings.local
bash <(curl -s https://codecov.io/bash) -cF python

# javascript tests
cd ..
npm test
bash <(curl -s https://codecov.io/bash) -cF javascript