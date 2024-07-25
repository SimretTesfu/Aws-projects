def is_valid_brackets(s):
    stack = []
    bracket_map = {')': '(', '}': '{', ']': '['}
    for char in s:
        if char in bracket_map.values():
            stack.append(char)
        elif char in bracket_map:
            if not stack or stack[-1] != bracket_map[char]:  
                return False
            stack.pop()  
    return not stack
def contains_only_brackets(s):
    valid_chars = set("(){}[]")
    return all(char in valid_chars for char in s)
user_input = input("Enter a string of brackets to validate: ")
if contains_only_brackets(user_input):
    if is_valid_brackets(user_input):
        print("The brackets are valid and correctly nested.")
    else:
        print("The brackets are not valid or not correctly nested.")
else:
    print("Your input is not correct. Please enter only bracket characters ((), {}, []).")
