#ifndef TEST_H
#define TEST_H

#define ASSERT(x) do { \
  if (!(x)) { \
    printf("[FAIL] %s:%d %s\n", __FILE__, __LINE__, #x); \
    return 1; \
  } \
} while (0)

#define RUN_TEST(fn) do { \
  if (fn()) { \
    printf("[ERRO] %s failed\n", #fn); \
    return 1; \
  } else { \
    printf("[TEST] ok %s\n", #fn); \
  } \
} while (0)

#endif
