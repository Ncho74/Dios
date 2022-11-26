"""
WSGI config for Dios project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.0/howto/deployment/wsgi/
"""

import os
import dotenv
import pathlib
from django.core.wsgi import get_wsgi_application
CURRENT_DIRS=pathlib.Path(__file__).resolve().parent
BAR_DIR=CURRENT_DIRS.parent
dotenv.load_dotenv(os.path.join(os.path.dirname(BAR_DIR), '.env'))

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Dios.settings')


application = get_wsgi_application()
