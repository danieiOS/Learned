/*:
 # Stack
 #### 왜 Stack을 사용하나요?
 
 특정 시점에 임시 목록에 개체를 추가한 다음 나중에 다시 이 목록에서 사용할 수 있도록 하는 경우.
 - 개체를 추가하고 제거하는 순서가 중요합니다.
 
 스택은 LIFO (후입선출)
 - 마지막으로 들어간 요소는 pop()으로 가장 먼저 꺼냅니다.
 - 유사한 데이터 구조는 Queue가 있습니다.
 
 */
example(of: "using a stack") {
	var stack = Stack<Int>()
	stack.push(1)
	stack.push(2)
	stack.push(3)
	stack.push(4)
	stack.push(5)

	print(stack)
	
	if let poppedValue = stack.pop() {
		// assert(4 == poppedValue)
		print("Popped => \(poppedValue)")
	}
}

//: [Next](@next)
