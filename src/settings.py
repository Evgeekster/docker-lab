from dotenv import load_dotenv
import os
import redis

#load_dotenv() #not need in docker

BOT_TOKEN = os.getenv('BOT')

OPEN_AI_KEY = os.getenv('OPEN_API')


redis_cfg = redis.Redis(host='localhost', port=6379, decode_responses=True) #ip WSL 