#!/bin/bash
# read -p "Input a number: " number

# if [[ $number -ge 10 ]]
# then
#   echo "The number is bigger than or equal to 10."
# else 
#   echo "The number is smaller than 10"
# fi
#compure things
#!/bin/bash

# if [[ "a" = "a" ]]
# then
#   echo "They are same"
# fi

# if [[ "a" != "b" ]]
# then
#   echo "They are not same"
# fi

# if [[ -z "" ]]
# then
#   echo "It is empty"
# fi

# if [[ -n "text" ]]
# then
#   echo "It is not empty"
# fi
#!/bin/bash
#checking file

# if [[ -d folder ]]
# then
#   echo "folder is a directory"
# fi

# if [[ -f file ]]
# then
#   echo "file is an ordinary file"
# fi

# if [[ -r file ]]
# then
#   echo "file is a readable file"
# fi

# if [[ -w file ]]
# then
#   echo "file is a writable file"
# fi

# if [[ -s file ]]
# then
#   echo "file is > 0 bytes"
# fi

# if [[ -x $0 ]] #check my file is excutable or not
# then
#   echo "$0 is an executable file "
# fi
#if else
# #!/bin/bash
# read -p "Input a number: " number

# if [[ $number -eq 10 ]]
# then
#   echo "The number is equal to 10."
# elif [[ $number -gt 10 ]]
# then
#   echo "The number is bigger than 10"
# else 
#   echo "The number is smaller than 10"
# fi
#!/bin/bash

# read -p "Input a number: " number

# if [[ $number -gt 10 ]]
# then
#   echo "Number is bigger than 10"

#   if (( $number % 2 == 1 ))
#   then
#     echo "And is an odd number."
#   else
#     echo "And is an even number"
#   fi
# else 
#   echo "It is not bigger than 10"
# fi
#!/bin/bash

# read -p "Input your name: " name
# read -sp "Input your password: " password

# if [[ $name = $(whoami) ]] && [[ $password = Aa1234 ]]
# then
#   echo -e "\nWelcome $(whoami)"
# else
#   echo -e "\nIt is wrong account"
# fi
#case
#!/bin/bash

# read -p "Input first number: " first_number
# read -p "Input second number: " second_number
# read -p "Select an math operation
# 1 - addition
# 2 - subtraction
# 3 - multiplication
# 4 - division
# " operation

# case $operation in
#   "1") 
#      echo "result= $(( $first_number + $second_number))"
#   ;;
#   "2")
#      echo "result= $(( $first_number - $second_number))"
#   ;;
#   "3")
#      echo "result= $(( $first_number * $second_number))" 
#      ;;
#   "4")
#      echo "result= $(( $first_number / $second_number))"
#   ;;
#   *)
#      echo "Wrong choice..." 
#   ;;
# esac
#!/bin/bash

# action="$1"
# username="$2"

# echo "Action: $action"
# echo "Username: $username"

# case $action in
#     "add")
#         echo "Adding user $username..."
#         if sudo useradd "$username"; then
#             echo "User $username added successfully."
#         else
#             echo "Failed to add user $username."
#         fi
#         ;;
#     "modify")
#         echo "Modifying user $username..."
#         if sudo usermod -s /bin/bash "$username"; then
#             echo "User $username modified successfully."
#         else
#             echo "Failed to modify user $username."
#         fi
#         ;;
#     "delete")
#         echo "Deleting user $username..."
#         if sudo userdel "$username"; then
#             echo "User $username deleted successfully."
#         else
#             echo "Failed to delete user $username."
#         fi
#         ;;
#     *)
#         echo "Usage: $0 {add|modify|delete} username"
#         exit 1
#         ;;
# esac
#!/bin/bash

read -p "Input first number: " first_number
read -p "Input second number: " second_number

PS3="Select the operation: "

select operation in addition subtraction multiplication division exit
do
  case $operation in
    addition) 
      echo "result= $(( $first_number + $second_number))"
    ;;
    subtraction)
       echo "result= $(( $first_number - $second_number))"
    ;;
    multiplication)
       echo "result= $(( $first_number * $second_number))" 
       ;;
    division)
       echo "result= $(( $first_number / $second_number))"
    ;;
    exit)
       break
    ;;   
    *)
       echo "Wrong choice..." 
    ;;
  esac
done

