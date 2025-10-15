import time


def timing_decorator(func):
    def wrapper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        print(f"{func.__name__} took {end - start:.6f} seconds")
        return result

    return wrapper


@timing_decorator
def fact_head(n):
    if n == 0:
        return 1
    return n * fact_head(n - 1)


@timing_decorator
def fact_tail(n, acc=1):
    if n == 0:
        return acc
    return fact_tail(n - 1, acc * n)


# fact_head(12)
fact_tail(12)

# fact_head = timing_decorator(fact_head)
# fact_tail = timing_decorator(fact_tail)
