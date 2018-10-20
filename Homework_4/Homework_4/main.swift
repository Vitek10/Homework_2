import Foundation

//Task_1
print("-------------------------Task_1------------------------")
/*
 1. Опишите массив fibArray из десяти первых чисел Фибонначи.
 2. Создайте массив revArray, элементы которого находятся в
 обратном порядке относительно массива fibArray.
 3. Опишите массив простых чисел snglArray, не превышающие число
 100.
 4. Выведите на экран количество элементов массива snglArray.
 5. Выведите на экран 10-й элемент массива snglArray.
 6. Выведите на экран подмассив элементов массива snglArray,
 начиная с 15-го и заканчивая 20-м элементами.
 7. Создайте массив rptArray из 10 элементов, которые равны 10-му
 элементу массива snglArray.
 8. Опишите массив нечетных чисел oddArray (не менее числа 0, и не
 больше числа 10), используя init (arrayLiteral :).
 9. Добавьте к массиву oddArray число 11.
 10.Добавьте к массиву oddArray числа 15, 17, 19 в качестве
 подмассивов.
 11. Вставьте в массив oddArray число 13 на позицию между числами
 11 и 15.
 12. Удалите элементы массива oddArray, начиная с 5-го и заканчивая
 восьмым (не включительно) элементами.
 13. Удалите последний элемент массива oddArray и выведите его на
 экран.
 14.Замените элементы массива oddArray, начиная со 2-го и
 заканчивая последним, на массив с числовыми элементами 2, 3, 4
 15. Удалите элемент массива oddArray, который равен числу 3.
 16. Выведите значение, которое определяет, содержится ли число 3
 в массиве oddArray.*/

var fibArray = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
var revArray: [Int] = fibArray.reversed()
var snglArray = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
print(snglArray.count)
print(snglArray[10])
print(snglArray[15...20])
var rptArray = snglArray[1...10]
var oddArray: [Int] = Array(arrayLiteral: 1, 5, 7, 3, 9)
oddArray.insert(11, at: oddArray.endIndex)
oddArray += [15, 17, 19]
oddArray.insert(13, at: 6)
oddArray.removeSubrange(5..<8)
print(oddArray.removeLast())
oddArray.replaceSubrange(2...5, with: [2,3,4])
print(oddArray)
oddArray.remove(at: 3)
print(oddArray.contains(3))

//Task_2
print("-------------------------Task_2------------------------")
/*
 1. Опишите множество chSet из символов а, b, c и d.
 2. Создайте mutable множество mChSet на основе умножения
 chSet.
 3. Выведите на экран количество элементов множества mChSet.
 4. Вставьте символ е в множество mChSet.
 5. Создайте множество srtChSet, которая является
 отсортированной версией множества mChSet.
 6. Удалите из множества mChSet символ f и выведите удаленный
 символ на экран.
 7. Удалите символ d из множества mChSet по его индексу и
 выведите строчное представление множества mChSet.
 8. Выведите расстояние в множестве mChSet между первым
 элементом и символом а.
 9. Установите символ а в множество mChSet.
 10. Опишите множества aSet (со значениями One, Two, Three, 1, 2) и
 bSet (со значениями 1, 2, 3, One, Two).
 11.Создайте множество, содержащее все общие элементы для
 множеств aSet и bSet.
 12. Создайте множество, содержащее уникальные элементы в
 множестве aSet по отношению к множеству bSet. Создайте множество, содержащее уникальные элементы в множестве bSet по отношению к множеству aSet.
 13. Создайте множество, содержащее элементы, которые не являются общими для множеств aSet и bSet.
 14.Создайте множество, объединяющее все элементы множеств aSet и bSet.
 15.Опишите множества xSet (со значениями 2 ... 4), ySet (со значениями 1 ... 6), zSet (со значениями 3, 4, 2) и x1Set (со значениями 5, 6, 7).
 16. Выведите значения, которые определяют входит ли множество xSet в множество ySet, а также входит ли множество ySet в множество xSet.
 17. Выведите значения, которые определяют, содержит ли множество xSet множество ySet, а также содержит ли множество ySet множество xSet.
 18. Выведите значения, которые определяет, являются ли равными множества xSet и zSet.
 19. Выведите значение, которые определяет, входит ли множество xSet в множество zSet, но не является равной множестве zSet.
 20. Выведите значение, которое определяет, содержит ли
 множество xSet множество zSet, но не является равной множестве zSet.*/

let chSet = Set<String>(["а", "b", "c", "d"])
var mChSet = chSet
print(mChSet.count)
mChSet.insert("e")
var srtChSet = mChSet.sorted()
print(mChSet.remove("f") as Any)
mChSet.remove("d")
print(mChSet)
var index_a = Set<String>(["a"])
print(mChSet.distance(from: mChSet.startIndex, to: index_a.endIndex))
mChSet.insert("a")
var aSet: Set = (["One", "Two", "Three", "1", "2"])
var bSet: Set = (["1", "2", "3", "One", "Two"])
let inter = aSet.intersection(bSet)
let aSub = aSet.subtracting(bSet)
let bSub = bSet.subtracting(aSet)
let union = aSet.union(bSet)
var xSet = Set<Int>(arrayLiteral: 2,3,4)
var ySet = Set<Int>(arrayLiteral: 1,2,3,4,5,6)
var zSet = Set<Int>(arrayLiteral: 3, 4, 2)
var x1Set = Set<Int>(arrayLiteral: 5, 6, 7)
let subset_x_y = xSet.isSubset(of: ySet)
print(subset_x_y)
let subset_y_x = ySet.isSubset(of: xSet)
print(subset_y_x)
let supset_x_y = xSet.isSuperset(of: ySet)
print(supset_x_y)
let supset_y_x = ySet.isSuperset(of: xSet)
print(supset_y_x)
let disjoin = xSet.isDisjoint(with: zSet)
print(disjoin)
let strsub = xSet.isStrictSubset(of: zSet)
print(strsub)
let strsup = xSet.isStrictSuperset(of: zSet)
print(strsup)


//Task_3
print("-------------------------Task_3------------------------")
/*
 1. Опишите словарь nDict, ключами которого являются числовые строчные представления чисел от 1 до 5, а соответствующими значениями являются строчные представлениями чисел от 1 до 5 в английском языке. (Например, 1: One).
 2. Выведите на экран значения массива nDict по ключу 3.
 3. Выведите на экран значения массива nDict по индексу ключа 4.
 4. Создайте mutable словарь mNDict на основе словаря nDict.
 5. Добавьте элементы 6: Seven и 7: Six словарю mNDict.
 6. Обновите значения элементов словаря mNDict, не используя
 subscript [] к следующим: 6: Six, 7: Seven, 8: Eight.
 7. Удалите элемент с ключом 5 из словаря mNDict.
 8. Удалите элемент по индексу ключа 4 из словаря mNDict.
 9. Определите и выведите на экран расстояние в словаре mNDict
 между парами значений 1: One и 7: Seven.
 10. Создайте массив mNDictKeys, элементами которого являются все
 ключи словаря mNDict.
 11. Создайте массив mNDictKeys, элементами которого являются все
 значения словаря mNDict.
 12.Выведите на экран количество элементов словаря mNDict, а
 также количество его всех ключей и их всех значений.
 13. Выведите на экран строчное представление словаря mNDict.*/
 
