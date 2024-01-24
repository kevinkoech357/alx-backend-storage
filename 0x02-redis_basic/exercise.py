#!/usr/bin/env python3

"""
Define a class Cache that has a
private redis instance.
"""


import redis
import uuid
from typing import Union, Callable


class Cache:
    """
    Define class Cache.
    """

    def __init__(self) -> None:
        """
        Initialize the class.
        """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[int, str, float, bytes]) -> str:
        """
        Persist data to db.
        """
        data_key = str(uuid.uuid4())
        self._redis.set(data_key, data)
        return data_key

    def get(self, key: str, fn: Callable = None
            ) -> Union[int, str, float, bytes]:
        """
        Retrieves data from redis db.
        """
        data = self._redis.get(key)
        return fn(data) if fn is not None else data

    def get_str(self, key: str) -> str:
        """
        Parametrize Cache.get with the correct conversion function.
        """
        return self.get(key, lambda x: x.decode("utf-8"))

    def get_int(self, key: str) -> int:
        """
        Parametrize Cache.get with the correct conversion function.
        """
        return self.get(key, lambda x: int(x))
