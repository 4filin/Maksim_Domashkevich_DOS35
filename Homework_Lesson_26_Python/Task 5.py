t1 = (1, 2, 3, 4)
t2 = (1, 2, 2, 3)


t1_unique = len(t1) == len(set(t1))
t2_unique = len(t2) == len(set(t2))

print(f"{t1} все уникальны? {t1_unique}")
print(f"{t2} все уникальны? {t2_unique}")