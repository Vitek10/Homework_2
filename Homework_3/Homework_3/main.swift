//
//  main.swift
import Foundation
print("-------------------------Task_1------------------------")
//Task_1
// Создание «Hello, World!» программы.

print("Hello, World!")

//Task_2
print("-------------------------Task_2------------------------")
/*
1. Целое десятичное число 12 с минимально необходимой разрядной сеткой.
2. Целое десятичное число -100 с минимально необходимой разрядной сеткой.
3. Целое шестнадцатиричное число, которое равняется целому десятичному числу 128.
4. Минимальное десятичное значение числа, которое находится в пределах 16-разрядной сетки.
5. Максимальное десятичное значение числа, которое находится в пределах 64-разрядной сетк
6. Число с плавающей точкой 10,235.34 с минимально необходимой разрядной сеткой.
7. Символ “а”.
8. Строка “Hello World”.
9. Истина.
10.Число 12 и его строчное представление “twelve”. */

let Int_Decimal_Num_12: Int8 = 12
let Int_Decimal_Num_Min_100: Int8 = -100
let hex_128 = 0x80
let Min_Num_Decimal = Int16.min
let Max_Num_Decimal = Int64.max
let float_Point: Float = 10235.34
let character: Character = "a"
let string: String = "Hello World"
let bool: Bool = true
let tuple: (Int,String) = (12, "twelve")

//  Task_3
print("-------------------------Task_3------------------------")
/*
1. Определить и вывести на экран длину строки.
2. Заменить каждое вхождение символа "i" на знак "u".
3. Удалить 4-й, 7-й и 10-й символы.
4. Добавить строку "(modified)" к существующей строке.
5. Вывести значение, определяющее является ли существующая
строка пустой.
6. Добавить символ "." К концу существующего строки.
7. Вывести значение, определяющее начинается ли строка с
подстроки "Hello".
8. Вывести значение, определяющее заканчивается ли строка
подстрокой "World".
9. Вставить символ "-" после 10-го символа.
10.Заменить последовательность "Thus us" последовательностью "It
is"
11.Вывести 10-й и 15-й символ существующей строки.
12.Вывести подстроку, которая находится в пределах 10-го
(включительно) и 15-го (не включительно) символов. */

var str = "Hello World. This is Swift programming language"
let longStr = str.count
print(longStr)
var changeChar = str.replacingOccurrences(of: "i", with: "u")
print(changeChar)
var delCharfour = changeChar.remove(at: changeChar.index(changeChar.startIndex, offsetBy: 3))
print(delCharfour)
delCharfour =  changeChar.remove(at: changeChar.index(changeChar.startIndex, offsetBy: 6))
print(delCharfour)
delCharfour = changeChar.remove(at: changeChar.index(changeChar.startIndex, offsetBy: 9))
print(delCharfour)
changeChar.append("(modified)")
print(changeChar)
if str.isEmpty == false{
    print("Is not empty")
}
str.append(".")
print(str)

if str.hasPrefix("Hello"){
    print("Prefix exists")
}
if str.hasSuffix("World"){
     print("Suffix exists")
}else{
     print("No")
}
changeChar.insert("-", at: changeChar.index(changeChar.startIndex, offsetBy: 9))
print(changeChar)
let replaceWord = changeChar.replacingOccurrences(of: "Thus us", with: "It is")
print(replaceWord)
let startIndex = replaceWord.index(replaceWord.startIndex, offsetBy: 9)
print(replaceWord[startIndex])
let endIndex = replaceWord.index(startIndex, offsetBy: 5)
print(replaceWord[endIndex])
print(replaceWord[startIndex..<endIndex])

//Task_4
print("-------------------------Task_4------------------------")
/*
 1. Опишите сущность, которая содержит или не содержит целое десятичное число integerNumber, но не задает значение по умолчанию.
 2. Опишите сущность, которая содержит или не содержит число с плавающей точкой decimalNumber, но не задает значение по умолчанию.
 3. Присвойте значение числу integerNumber.
 4. Добавьте к числу integerNumber то же значение, используя
 increment и (или) decrement оператор.
 5. Измените знак числа на противоположный, используя unary minus или plus оператор.
 6. Присвойте значение числу decimalNumber значением числа integerNumber.
 7. Опишите сущность pairOrValues, которая содержит или не содержит значение integerNumber и decimalNumber.
 8. Проверьте, содержит ли сущность pairOfValues целочисленное значение и выведите его, если такое значение существует.
 9. Проверьте, содержит сущность pairOfValues значение, которое представлено как число с плавающей точкой, и выведите его, если такое значение существует.
 10. Выведите значение числа decimalNumber используя optional binding.*/

var integetNumber: Int?
var decimalNumber: Double?
integetNumber = 777
integetNumber! += 34
integetNumber! -= 15
let unaryMinus = -integetNumber!
print(unaryMinus)
decimalNumber = Double(integetNumber!)
var pairOrValues: (int: Int?, dec: Double?)? = (integetNumber, decimalNumber)
if pairOrValues!.int != nil {
    print(pairOrValues!.int!)
}
if pairOrValues!.dec != nil {
    print(pairOrValues!.dec!)
}
if let value = pairOrValues?.dec {
    print(value)
}



