
import os
import redis


BOT_TOKEN = os.getenv('BOT')

OPEN_AI_KEY = os.getenv('OPEN_API')


redis_cfg = redis.Redis(host='localhost', port=6379, decode_responses=True) 