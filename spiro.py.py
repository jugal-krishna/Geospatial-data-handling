from math import cos, sin, pi


def spirograph(C, R=8, r=1, a=4):
    x = []
    t = 0
    ovrlap = []
    while t <= 16 * pi:
        coord = [C[0] + (R + r) * cos((r / R) * t) - a * cos((1 + r / R) * t),
                 C[1] + (R + r) * sin((r / R) * t) - a * sin((1 + r / R) * t)]
        x.append([C[0] + (R + r) * cos((r / R) * t) - a * cos((1 + r / R) * t),
                  C[1] + (R + r) * sin((r / R) * t) - a * sin((1 + r / R) * t)])

        t += 0.01
    return x, ovrlap


x1, ovrlap1 = spirograph(C=[-118.28926416053426, 34.02119403237694])
print(len(x1))
for i in x1:
    print(f'{i[0]},{i[1]}', file=open("output.txt", "a"))
