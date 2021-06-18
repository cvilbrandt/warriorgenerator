import random

from app.data import names_prefix, names_suffix, banned

def generator(entries, category_list):

    i = 0

    category_prefixes = set()

    if not category_list:
        category_list = ["general"]

    for category in category_list:
        for word, categories in names_prefix.items():
            if category in categories:
                category_prefixes.add(word)
    # print(category_prefixes)

    name_list = []
    while i < int(entries):
        name = "{}{}".format(random.choice(list(category_prefixes)), random.choice(names_suffix))
        if name in banned:
            print("BAD NAME DETECTED")
        else:
            name_list.append(name)
            print(name)
            i += 1
    return name_list