
def gen_list(template: str, count: int, reverse: bool = False) -> str:
    if reverse:
        return "\n".join([template.format(i) for i in range(count - 1, -1, -1)])
    return "\n".join([template.format(i) for i in range(8)])

"""
Simple function to generate a list of strings with a template and count
for filling in the xdc template.
"""
print(gen_list("sw_en[{}]", 8, reverse=True))