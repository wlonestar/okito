package com.okito.okito.common.service;

import jakarta.annotation.Resource;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/**
 * @author <a href="mailto:wlonestar@163.com">wjl</a>
 * @version 0.0.1
 * @time 2023/1/4 23:11
 */
@Service
public class RedisServiceImpl implements RedisService {

  @Resource
  private RedisTemplate<String, Object> redisTemplate;

  /**
   * set expire time
   *
   * @param key  key
   * @param time time
   * @return state
   */
  @Override
  public boolean expire(String key, long time) {
    try {
      if (time > 0) {
        redisTemplate.expire(key, time, TimeUnit.SECONDS);
      }
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * get expire time
   *
   * @param key key
   * @return time
   */
  @Override
  public Long getExpire(String key) {
    if (Boolean.TRUE.equals(redisTemplate.hasKey(key))) {
      return redisTemplate.getExpire(key, TimeUnit.SECONDS);
    }
    return 0L;
  }

  /**
   * key if exists
   *
   * @param key key
   * @return state
   */
  @Override
  public Boolean hasKey(String key) {
    try {
      return redisTemplate.hasKey(key);
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * delete cache
   *
   * @param key key
   */
  @Override
  public void del(String... key) {
    if (key != null && key.length > 0) {
      if (key.length == 1) {
        redisTemplate.delete(key[0]);
      } else {
        redisTemplate.delete(Arrays.asList(key));
      }
    }
  }

  /**
   * get value by key
   *
   * @param key key
   * @return value
   */
  @Override
  public Object get(String key) {
    return key == null ? null : redisTemplate.opsForValue().get(key);
  }

  /**
   * set data
   *
   * @param key   key
   * @param value value
   * @return state
   */
  @Override
  public boolean set(String key, Object value) {
    try {
      redisTemplate.opsForValue().set(key, value);
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * set data and time
   *
   * @param key   key
   * @param value value
   * @param time  time
   * @return state
   */
  @Override
  public boolean set(String key, Object value, long time) {
    try {
      if (time > 0) {
        redisTemplate.opsForValue().set(key, value, time, TimeUnit.SECONDS);
      } else {
        set(key, value);
      }
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * increase
   *
   * @param key   key
   * @param delta delta > 0
   * @return long
   */
  @Override
  public Long incr(String key, long delta) {
    if (Boolean.TRUE.equals(redisTemplate.hasKey(key))) {
      return redisTemplate.getExpire(key, TimeUnit.SECONDS);
    }
    return 0L;
  }

  /**
   * decrease
   *
   * @param key   key
   * @param delta delta > 0
   * @return long
   */
  @Override
  public Long decr(String key, long delta) {
    if (delta < 0) {
      throw new RuntimeException("delta must bigger than 0");
    }
    return redisTemplate.opsForValue().increment(key, -delta);
  }

  /**
   * HashGet
   *
   * @param key  key - Notnull
   * @param item item - NotNull
   * @return data
   */
  @Override
  public Object hget(String key, String item) {
    return redisTemplate.opsForHash().get(key, item);
  }

  /**
   * get keys of hashKey
   *
   * @param key key
   * @return map
   */
  @Override
  public Map<Object, Object> hmget(String key) {
    return redisTemplate.opsForHash().entries(key);
  }

  /**
   * HashSet
   *
   * @param key key
   * @param map map
   * @return state
   */
  @Override
  public boolean hmset(String key, Map<String, Object> map) {
    try {
      redisTemplate.opsForHash().putAll(key, map);
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * HashSet and time
   *
   * @param key  key
   * @param map  map
   * @param time time
   * @return state
   */
  @Override
  public boolean hmset(String key, Map<String, Object> map, long time) {
    try {
      redisTemplate.opsForHash().putAll(key, map);
      if (time > 0) {
        expire(key, time);
      }
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * set data into a hash table
   *
   * @param key   key
   * @param item  item
   * @param value value
   * @return state
   */
  @Override
  public boolean hset(String key, String item, Object value) {
    try {
      redisTemplate.opsForHash().put(key, item, value);
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * set data into a hash table
   *
   * @param key   key
   * @param item  item
   * @param value value
   * @param time  time
   * @return state
   */
  @Override
  public boolean hset(String key, String item, Object value, long time) {
    try {
      redisTemplate.opsForHash().put(key, item, value);
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * delete value in hash table
   *
   * @param key  key
   * @param item item
   */
  @Override
  public void hdel(String key, Object... item) {
    redisTemplate.opsForHash().delete(key, item);
  }

  /**
   * if value exist in hash table
   *
   * @param key  key
   * @param item item
   * @return state
   */
  @Override
  public boolean hHasKey(String key, String item) {
    return redisTemplate.opsForHash().hasKey(key, item);
  }

  /**
   * hash increase
   *
   * @param key  key
   * @param item item
   * @param by   by
   * @return double
   */
  @Override
  public double hincr(String key, String item, double by) {
    return redisTemplate.opsForHash().increment(key, item, by);
  }

  /**
   * hash decrease
   *
   * @param key  key
   * @param item item
   * @param by   by
   * @return double
   */
  @Override
  public double hdecr(String key, String item, double by) {
    return redisTemplate.opsForHash().increment(key, item, -by);
  }

  /**
   * get value in set by key
   *
   * @param key key
   * @return set
   */
  @Override
  public Set<Object> sGet(String key) {
    try {
      return redisTemplate.opsForSet().members(key);
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

  /**
   * query by value in set
   *
   * @param key   key
   * @param value value
   * @return state
   */
  @Override
  public Boolean sHashKey(String key, Object value) {
    try {
      return redisTemplate.opsForSet().isMember(key, value);
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * set data into set
   *
   * @param key    key
   * @param values values
   * @return long
   */
  @Override
  public Long sSet(String key, Object... values) {
    try {
      return redisTemplate.opsForSet().add(key, values);
    } catch (Exception e) {
      e.printStackTrace();
      return 0L;
    }
  }

  /**
   * set data into set
   *
   * @param key    key
   * @param time   time
   * @param values values
   * @return long
   */
  @Override
  public Long sSetAndTime(String key, long time, Object... values) {
    try {
      Long count = redisTemplate.opsForSet().add(key, values);
      if (time > 0) {
        expire(key, time);
      }
      return count;
    } catch (Exception e) {
      e.printStackTrace();
      return 0L;
    }
  }

  /**
   * get length of set
   *
   * @param key key
   * @return length
   */
  @Override
  public Long sGetSetSize(String key) {
    try {
      return redisTemplate.opsForSet().size(key);
    } catch (Exception e) {
      e.printStackTrace();
      return 0L;
    }
  }

  /**
   * remove key of value
   *
   * @param key    key
   * @param values values
   * @return long
   */
  @Override
  public Long setRemove(String key, Object... values) {
    try {
      return redisTemplate.opsForSet().remove(key, values);
    } catch (Exception e) {
      e.printStackTrace();
      return 0L;
    }
  }

  /**
   * get data of list
   *
   * @param key   key
   * @param start start
   * @param end   end
   * @return list
   */
  @Override
  public List<Object> lGet(String key, long start, long end) {
    try {
      return redisTemplate.opsForList().range(key, start, end);
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

  /**
   * get length of list
   *
   * @param key key
   * @return length
   */
  @Override
  public Long lGetListSize(String key) {
    try {
      return redisTemplate.opsForList().size(key);
    } catch (Exception e) {
      e.printStackTrace();
      return 0L;
    }
  }

  /**
   * get value by key
   *
   * @param key   key
   * @param index index
   * @return object
   */
  @Override
  public Object lGetIndex(String key, long index) {
    try {
      return redisTemplate.opsForList().index(key, index);
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }

  /**
   * set list
   *
   * @param key   key
   * @param value value
   * @return state
   */
  @Override
  public boolean lSet(String key, Object value) {
    try {
      redisTemplate.opsForList().rightPush(key, value);
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * set list and time
   *
   * @param key   key
   * @param value value
   * @param time  time
   * @return state
   */
  @Override
  public boolean lSet(String key, Object value, long time) {
    try {
      redisTemplate.opsForList().rightPush(key, value);
      if (time > 0) {
        expire(key, time);
      }
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * set list
   *
   * @param key   key
   * @param value value
   * @return state
   */
  @Override
  public boolean lSet(String key, List<Object> value) {
    try {
      redisTemplate.opsForList().rightPushAll(key, value);
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * set list and time
   *
   * @param key   key
   * @param value value
   * @param time  time
   * @return state
   */
  @Override
  public boolean lSet(String key, List<Object> value, long time) {
    try {
      redisTemplate.opsForList().rightPushAll(key, value);
      if (time > 0) {
        expire(key, time);
      }
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * update data by index
   *
   * @param key   key
   * @param index index
   * @param value value
   * @return state
   */
  @Override
  public boolean lUpdateIndex(String key, long index, Object value) {
    try {
      redisTemplate.opsForList().set(key, index, value);
      return true;
    } catch (Exception e) {
      e.printStackTrace();
      return false;
    }
  }

  /**
   * remove value
   *
   * @param key   key
   * @param count count
   * @param value value
   * @return long
   */
  @Override
  public Long lRemove(String key, long count, Object value) {
    try {
      return redisTemplate.opsForList().remove(key, count, value);
    } catch (Exception e) {
      e.printStackTrace();
      return 0L;
    }
  }

}