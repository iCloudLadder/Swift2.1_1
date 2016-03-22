//: Playground - noun: a place where people can play

import UIKit


// 单行注释
/*
    多行注释
    另一行注释
*/

/* 这是第一个多行注释的开头
// Swift 支持多行嵌套注释
/* 这是第二个被嵌套的多行注释 */

这是第一个多行注释的结尾 */

// 用 let 来声明常量， 在不需要修改值时使用 ,常量的值一旦被确定就不能更改了
let aInt = 3

// 用 var 来声明变量
var str = "Hello, playground"

// 一行中声明多个常量或者多个变量,用逗号隔开
var int1 = 3, int2 = 4, int3 = 5

// 当你声明常量或者变量的时候可以加上类型标注(type annotation),说明常量或者变量中要存储的值的类 型。如果要添加类型标注,需要在常量或者变量名后面加上一个冒号和空格,然后加上类型名称。
var aString: String
// aString 是一个 String 类型的变量，只能被String类型的值赋值

// 你可以在一行中定义多个同样类型的变量,用逗号分割,并在最后一个变量名之后添加类型标注:
var double1, double2, double3: Double

/*
    一般来说你很少需要写类型标注。如果你在声明常量或者变量的时候赋了一个初始值,Swift可以推断出这个常 量或者变量的类型
    没有初始值的变量和常量必须标注类型
*/


// >> 常量和变量的命名
// 常量与变量名不能包含数学符号,箭头,保留的(或者非法的)Unicode 码位,连线与制表符。也不能以数字开 头,但是可以在常量与变量名的其他地方包含数字。

let π = 3.1415826
let 我是一个常量 = "中文字符常量"
let 😓😎😏 = "中文标点常量"

// 如果你需要使用与Swift保留关键字相同的名称作为常量或者变量名,你可以使用反引号(`)将关键字包围的方 式将其作为名字使用。无论如何,你应 **当避免使用关键字作为常量或变量名,除非你别无选择**。
// let `??`  = 22  // 这怎么报错，什么鬼


// 你可以更改现有的变量值为其他同类型的值
var hello = "hello"
hello = "Swift"

// 输出常量或变量
print(hello)

// print(<#T##items: Any...##Any#>, separator: <#T##String#>, terminator: <#T##String#>)  是一个用来输出一个或多个值到适当输出区的全局函数, separator 和 terminator 参数具有默认 值,因此你调用这个函数的时候可以忽略它们。
// 默认情况下,该函数通过添加换行符来结束当前行。
// 如果不想换 行,可以传递一个空字符串给 terminator 参数--例如, 
print("i love ", hello, terminator:"")
print(hello,"sss", separator: "|")

// Swift 用字符串插值(string interpolation)的方式把常量名或者变量名当做占位符加入到长字符串中,Swift 会用当前常量或变量的值替换这些占位符。将常量或变量名放入圆括号中,并在开括号前使用反斜杠将其转义:
print("hello's current value is \(hello)")

// 与其他大部分编程语言不同,Swift 并不强制要求你在每条语句的结尾处使用分号( ; ),当然,你也可以按照 你自己的习惯添加分号
print("每条语句后可写可不写;号")
print("在一行中有多条语句");print("初最后一条语句可写可不写;号");print("其他语句必须写;号")



// >> 整数
/*
整数就是没有
小数部分的数字,整数可以是 有符号 (正、负、零)或者 无符号 (正、零)。
Swift 提供了8,16,32和64位的有符号和无符号整数类型。
这些整数类型和 C 语言的命名方式很像,比如8位无 符号整数类型是 UInt8 ,32位有符号整数类型是 Int32 
。就像 Swift 的其他类型一样,整数类型采用大写命名 法。

*/

// 整数范围,可以访问不同整数类型的 min 和 max 属性来获取对应类型的最小值和最大值:
// UInt8 的最大值，最小值
print("UInt8 maxValue = \(UInt8.max)")
print("UInt8 minValue = \(UInt8.min)")

/*  Int
    Swift 提供了一个特殊的整数类型 Int￼ ,长度与当前平台的原生字长 相同:
    • 在32位平台上, ￼ 和 ￼ 长度相同。
    • 在64位平台上, ￼ 和 ￼ 长度相同。


    除非你需要特定长度的整数,一般来说使用 就够了。这可以提高代码一致性和可复用性。即使是在32位平台 上, 可以存储的整数范围也可以达到 ￼￼-2,147,483,648￼ ~ 2,147,483,647￼ ,大多数时候这已经足够大了。
*/

/*  UInt
Swift 也提供了一个特殊的无符号类型 UInt ,长度与当前平台的原生字长相同:
• 在32位平台上, UInt 和 UInt32 长度相同。 
• 在64位平台上, UInt 和 UInt64 长度相同。


尽量不要使用 UInt ,除非你真的需要存储一个和当前平台原生字长相同的无符号整数。除了这种情况,最好使 用 Int ,即使你要存储的值已知是非负的。统一使用 Int 可以提高代码的可复用性,避免不同类型数字之间的 转换,并且匹配数字的类型推断
*/


// 浮点数
/*
浮点数是有小数部分的数字

浮点类型比整数类型表示的范围更大,可以存储比 Int 类型更大或者更小的数字。

Swift 提供了两种有符号浮点 数类型:
• Double表示64位浮点数。当你需要存储很大或者很高精度的浮点数时请使用此类型。 
• Float表示32位浮点数。精度要求不高的话可以使用此类型。

Double 精确度很高,至少有15位数字,而 Float 最少只有6位数字。选择哪个类型取决于你的代码需要处理的
值的范围。

*/



// >> 类型安全和类型推断
/*
Swift 是一个类型安全(type safe)的语言。类型安全的语言可以让你清楚地知道代码要处理的值的类型。如果
你的代码需要一个 String ,你绝对不可能不小心传进去一个 Int 。

由于 Swift 是类型安全的,所以它会在编译你的代码时进行类型检查(type checks),并把不匹配的类型标记
为错误。这可以让你在开发的时候尽早发现并修复错误。


当你要处理不同类型的值时,类型检查可以帮你避免错误。然而,这并不是说你每次声明常量和变量的时候都需 要显式指定类型。如果你没有显式指定类型,Swift 会使用类型推断(type inference)来选择合适的类型。有 了类型推断,编译器可以在编译代码的时候自动推断出表达式的类型。原理很简单,只要检查你赋的值即可。

当你在声明常量或者变量的时候赋给它们一个字面 量(literal value 或 literal)即可触发类型推断
*/

let meaningOfLife = 39 // 推断为 Int 类型
let π1 = 3.1415926 // 推断为 Double 类型，推断浮点数的类型时,Swift 总是会选择 Double 而不是 Float
// 所以声明 Float 类型，必须显式声明
let pi: Float = 3.14

// 表达式中同时出现了整数和浮点数,会被推断为 Double 类型
let anotherPi = 3 + 0.1415926 //  anotherPi 是 Double 类型


// >> 数值型字面量
/*
• 一个十进制数,没有前缀
• 一个二进制数,前缀是 0b
• 一个八进制数,前缀是 0o
• 一个十六进制数,前缀是 0x
*/

let docimalInt = 17
let binaryInt = 0b10010 // 二进制
let octalInt = 0o2301 // 八进制
let hexadecimalInt = 0x22 // 十六进制

/*
浮点字面量可以是十进制(没有前缀)或者是十六进制(前缀是 0x )。小数点两边必须有至少一个十进制数 字(或者是十六进制的数字)。浮点字面量还有一个可选的指数(exponent,在十进制浮点数中通过大写或者小 写的 e 来指定,在十六进制浮点数中通过大写或者小写的 p 来指定。
如果一个十进制数的指数为 exp ,那这个数相当于基数和10^exp的乘积: * 1.25e2 表示 1.25 × 10^2,等于 125.0 。 * 1.25e-2 表示 1.25 × 10^-2,等于 0.0125 。
如果一个十六进制数的指数为 exp ,那这个数相当于基数和2^exp的乘积: * 0xFp2 表示 15 × 2^2,等于 6 0.0 。 * 0xFp-2 表示 15 × 2^-2,等于 3.75 。

*/


// 下面的这些浮点字面量都等于十进制的 12.1875 :
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1 // 1.21875 * 10
let hexadecimalDouble = 0xC.3p0  // C : 12, 3 : 3/16

// 数值类字面量可以包括额外的格式来增强可读性。整数和浮点数都可以添加额外的零并且包含下划线,并不会影响字面量:
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1



// >> 数值型类型转换  SomeType(ofInitialValue)

// 整数转换
// 由于每种整数类型都可以存储不同范围的值,所以你必须根据不同情况选择性使用数值型类型转换。
// 这种选择性使用的方式,可以预防隐式转换的错误并让你的代码中的类型转换意图变得清晰。

let six: UInt16 = 6
let one: UInt8 = 1
let seven = six + UInt16(one)


// 整数和浮点数转换

let three = 3
let pointOfπ = 0.14
let pi1 = Double(3) + pointOfπ

// 浮点数到整数的反向转换同样行, 浮点值会被截断
let intPi = Int(pi1) // intPi = 3

// 结合数字类常量和变量不同于结合数字类字面量。字面量 3 可以直接和字面量 0.14159 相加,因为数字字面量 本身没有明确的类型。它们的类型只在编译器需要求值的时候被推测。
let pi2 = 3 + 0.14 // 字面量相结合




// >> 类型别名

// 类型别名(type aliases)就是给现有类型定义另一个名字。你可以使用 typealias 关键字来定义类型别名。
typealias AudioSample = UInt16
var maxAudioSample = AudioSample.max // 65535


// >> 布尔值
// Swift 有一个基本的布尔(Boolean)类型,叫做 Bool 。
// 布尔值指逻辑上的值,因为它们只能是真或者假。Swift 有两个布尔常量, true 和 false :

let trueOfBool = true
let falseOfBool = false
if trueOfBool {
    print("it is true")
} else {
    print("it is false")
}
// 如果你在需要使用 Bool 类型的地方使用了非布尔值,Swift 的类型安全机制会报错。

/*
let i = 3
if i { // error, 应这样写 if i == 3 { }

}
*/


// 元组
/*
    元组(tuples)把多个值组合成一个复合值。元组内的值可以是任意类型,并不要求是相同类型。
*/

let http404Error = (404, "Not Found") // 类型： (Int, String)

// 你可以将一个元组的内容分解(decompose)成单独的常量和变量,然后你就可以正常使用它们了:

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")// 输出 "The status code is 404"
print("The status message is \(statusMessage)") // 输出 "The status message is Not Found"

// 如果你只需要一部分元组值,分解的时候可以把要忽略的部分用下划线( _ )标记:
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)") // 输出 "The status code is 404"

// 还可以通过下标来访问元组中的单个元素
print("The status code is \(http404Error.0)")// 输出 "The status code is 404"
print("The status message is \(http404Error.1)") // 输出 "The status message is Not Found"


// 可以在定义元组的时候给单个元素命名, 给元组中的元素命名后,你可以通过名字来获取这些元素的值:
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")// 输出 "The status code is 200"
print("The status message is \(http200Status.description)") // 输出 "The status message is OK"

/*
元组在临时组织值的时候很有用,但是并不适合创建复杂的数据结构。
如果你的数据结构并不是临时使用,请使用类或者结构体而不是元组
*/




// >> 可选类型

/*
使用可选类型(optionals)来处理值可能缺失的情况。可选类型表示: • 有值,等于 x 或者 • 没有值

C 和 Objective-C 中并没有可选类型这个概念。最接近的是 Objective-C 中的一个特性,一个方法要不返回一 个对象要不返回 nil , nil 表示“缺少一个合法的对象”。然而,这只对对象起作用——对于结构体,基本的 C 类型或者枚举类型不起作用。对于这些类型,Objective-C 方法一般会返回一个特殊值(比如 NSNotFoun
d )来暗示值缺失。这种方法假设方法的调用者知道并记得对特殊值进行判断。然而,Swift 的可选类型可以让 你暗示任意类型的值缺失,并不需要一个特殊值

*/


// 例： Swift 的 String 类型有一种构造器,作用是将一个 String 值转换成一个 Int 值。然而,并不是 所有的字符串都可以转换成一个整数。字符串 "123" 可以被转换成数字 123 ,但是字符串 "hello, world" 不行。
let possibleNumber = "123"
let convertedNumber =  Int(possibleNumber)
print("convertedNumber = \(convertedNumber)")// Optional(123),被推断为 Int？可选类型
// 因为该构造器可能会失败,所以它返回一个可选类型(optional) Int ,而不是一个 Int 。一个可选的 Int 被写 作 Int? 而不是 Int 。问号暗示包含的值是可选类型,也就是说可能包含 Int 值也可能不包含值。(不能包含其 他任何值比如 Bool 值或者 String 值。只能是 Int 或者什么都没有。) -- nil


// 注意：nil 不能用于非可选的常量和变量。如果你的代码中有常量或者变量需要处理值缺失的情况,请把它们声明成对应的可选类型。

var anOptionalInt: Int? = 4
anOptionalInt = nil

// 如果你声明一个可选常量或者变量但是没有赋值,它们会自动被设置为 nil :
var anEmptyString: String?
print("anEmptyString = \(anEmptyString)")

// if 语句以及强制解析
if anEmptyString == nil {
    print("anEmptyString is an empty string")
}


// 当你确定可选类型确实包含值之后,你可以在可选的名字后面加一个感叹号( ! )来获取值。这个惊叹号表 示“我知道这个可选有值,请使用它。”这被称为可选值的强制解析(forced unwrapping):
// 使用 来获取一个不存在的可选值会导致运行时错误。使用 来强制解析值之前,一定要确定可选包含一个非的值,否则会导致crash

anEmptyString = "str"
if anEmptyString != nil {
    print("anEmptyString = \(anEmptyString!)")
}


// 可选绑定
// 使用可选绑定(optional binding)来判断可选类型是否包含值,如果包含就把值赋给一个临时常量或者变 量。可选绑定可以用在 和 语句中,这条语句不仅可以用来判断可选类型中是否有值,同时可以将可选 类型中的值赋给一个常量或者变量
if let aString = anEmptyString {
    print("anEmptyString = \(aString)")
} else {
    print("anEmptyString is an empty string")
}

// 隐式解析可选类型
/*
可选类型暗示了常量或者变量可以“没有值”。可选可以通过 if 语句来判断是否有值,如果有值的话 可以通过可选绑定来解析值。

有时候在程序架构中,第一次被赋值之后,可以确定一个可选类型总会有值。在这种情况下,每次都要判断和解析可选值是非常低效的,因为可以确定它总会有值。

这种类型的可选状态被定义为隐式解析可选类型(implicitly unwrapped optionals)。把想要用作可选的类型 的后面的问号( String? )改成感叹号( String! )来声明一个隐式解析可选类型。

当可选类型被第一次赋值之后就可以确定之后一直有值的时候,隐式解析可选类型非常有用。
*/

// 一个隐式解析可选类型其实就是一个普通的可选类型,但是可以被当做非可选类型来使用,并不需要每次都使用 解析来获取可选值
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 需要惊叹号来获取值
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // 不需要感叹号
// **** 如果你在隐式解析可选类型没有值的时候尝试取值,会触发运行时错误。和你在没有值的普通可选类型后面加一个惊叹号一样

// 仍然可以把隐式解析可选类型当做普通可选类型来判断它是否包含值:
if assumedString != nil {
    print(assumedString)
}
// **** 如果一个变量之后可能变成 nil 的话请不要使用隐式解析可选类型。如果你需要在变量的生命周期中判断是否 是 nil 的话,请使用普通可选类型。






// >> 错误处理

/*
你可以使用错误处理(error handling)来应对程序执行中可能会遇到的错误条件。
相对于可选中运用值的存在与缺失来表达函数的成功与失败,错误处理可以推断失败的原因,并传播至程序的其他部分。
当一个函数遇到错误条件,它能报错。调用函数的地方能抛出错误消息并合理处理。

*/

// 一个函数可以通过在声明中添加 throws 关键词来抛出错误消息。当你的函数能抛出错误消息时, 你应该在表达式 中前置 try 关键词。
func canThrowAnError() throws {
    // 这个函数有可能抛出错误
}

do {
    try canThrowAnError() // 没有错误消息抛出
} catch {
    // 有一个错误消息抛出
}


// 一个 do 语句创建了一个新的包含作用域,使得错误能被传播到一个或多个 catch 从句。

func makeASandwich() throws {
    // ...
}

func eatASandwich() {
    print("eat A Sandwich")
}

func washDishes() {
    print("error: wash Dishes")
}

func buyGroceries(ingredients: String) {
    print("error: buy Groceries")
}

enum Error {
    case OutOfCleanDishes
    case MissingIngredients(String)
}

do {
    try makeASandwich()
    eatASandwich()
} catch Error.OutOfCleanDishes {
    washDishes()
} catch Error.MissingIngredients(let ingredients) {
    buyGroceries(ingredients)
}


// >> 断言

/*
可选类型可以让你判断值是否存在,你可以在代码中优雅地处理值缺失的情况。然而,在某些情况下,如果值缺 失或者值并不满足特定的条件,你的代码可能没办法继续执行。这时,你可以在你的代码中触发一个断言(asser tion)来结束代码运行并通过调试来找到值缺失的原因。


断言会在运行时判断一个逻辑条件是否为 true 。从字面意思来说,断言“断言”一个条件是否为真。你可以使用 断言来保证在运行其他代码之前,某些重要的条件已经被满足。如果条件判断为 true ,代码运行会继续进行;如 果条件判断为 false ,代码执行结束,你的应用被终止。

可以使用全局 assert(_:_file:line:) 函数来写一个断言。向这个函数传入一个结果为 true 或者 false 的表达 式以及一条信息,当表达式的结果为 false 的时候这条信息会被显示:
*/

let age = -3
// assert(age >= 0, "A person's age cannot be less than zero") // 因为 age < 0,所以断言会触发

// *** 当代码使用优化编译的时候,断言将会被禁用,例如在 Xcode 中,使用默认的 target Release 配置选项来 bu ild 时,断言会被禁用。


// 时使用断言
/*

当条件可能为假时使用断言,但是最终一定要保证条件为真,这样你的代码才能继续运行。断言的适用情景:
• 整数类型的下标索引被传入一个自定义下标脚本实现,但是下标索引值可能太小或者太大。
• 需要给函数传入一个值,但是非法的值可能导致函数不能正常执行。
• 一个可选值现在是 nil ,但是后面的代码运行需要一个非 nil 值。


断言可能导致你的应用终止运行,所以你应当仔细设计你的代码来让非法条件不会出现。
然而,在你的应用发布之前,有时候非法条件可能出现,这时使用断言可以快速发现问题。

*/

