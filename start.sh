gunicorn -b :$PORT app:app & python3 update.py && python3 -m Terabox & python3 alive.py
