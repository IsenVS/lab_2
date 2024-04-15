S = "1001"
x = 1
c = S.count('1')
flag = True
N = len(S)
limit = x * c + 1
max_count = 0
count = 0
for i in range(N - 1):
    if S[i] == '0':
        count += 1
        if max_count < count:
            max_count = count
        else:
            count = 0
    if max_count >= limit:
        flag = False
        break
if flag:
    print("Yes")
else:
    print("No")
