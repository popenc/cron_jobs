#!/bin/sh

# def remove_meta_keys(self):
# 	"""
# 	Removes keys cached in redis with the pattern:
# 	"celery-task-meta-d3154aa7-d597-433d-a11e-07befadd7bcf"
# 	"""
# 	key_pattern = "celery-task-meta-*"
# 	num_keys = 0
# 	for key in self.redis_conn.scan_iter(key_pattern):
# 		self.redis_conn.delete(key)
# 		num_keys += 1
# 	print("Removed {} celery-task-meta-* keys from redis.".format(num_keys))

# echo "keys celery-task-meta-*" | /usr/bin/redis-cli

/usr/bin/redis-cli set "test" "test"
/usr/bin/redis-cli set "celery-task-meta-2345325k235kk" "some value"
/usr/bin/redis-cli -h $REDIS_HOST -p $REDIS_PORT --scan --pattern "celery-task-meta-*" | xargs /usr/bin/redis-cli del