DJANGO_SUPER_USER_EMAIL=${DJANGO_SUPER_USER_EMAIL:isaacncho7421@gmail.com}
cd /Dios/
python manage.py migrate  --noinput
python manage.py createsuperuser --email DJANGO_SUPER_USER_EMAIL --noinput || true