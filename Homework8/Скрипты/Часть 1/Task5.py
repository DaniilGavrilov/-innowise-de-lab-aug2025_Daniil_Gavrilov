# Упражнения 5 (Опционально):
# ● Дан список чисел nums и целевое число target. Найти индексы двух чисел, сумма
# которых равна target.
# # Пример:
# nums = [2, 7, 11, 15]
# target = 9
# # Ответ: [0, 1] (потому что nums[0] + nums[1] = 2 + 7 = 9)
# nums = [3, 2, 4]
# target = 6
# # Ответ: [1, 2] (потому что nums[1] + nums[2] = 2 + 4 = 6)


nums1 = [2,7,11,15]
target1 = 9

nums2 = [3,2,4]
target2 = 6


def find_indexes (nums,target):
    indexes = []

    for i in range(len(nums)):
        for j in range(i+1,len(nums)):
            if nums[i] + nums[j] == target:
                indexes += i,j     
                
    print(indexes)


print("Ответ для nums1: ", end = "")
find_indexes(nums1,target1)
print("Ответ для nums2: ", end="")
find_indexes(nums2,target2)





