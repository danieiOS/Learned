//: [Previous](@previous)

/*:
 # Queue
 큐(Queue)는 한쪽 끝에서만 삽입이 이루어지고, 다른 한쪽 끝에서는 삭제 연산만 이루어지는 유한 순서 리스트이다.
 
 - FIFO(선입선출)
 - 선형 구조
 
 ### 실생활에 쓰이는 Queue의 예시
 1. 티켓 판매부스에서 줄을서서 기다리는 사람들
 2. 한줄로 나란히 가야만하는 차들
 3. 컴퓨터 운영체제의 테스크 스케줄링
 
 ### 큐(Queue)의 주요 동작들
 - enqueue() : 큐에 데이터를 넣는다.
 - dequeue() : 큐에서 데이터를 삭제한다.
 - isEmpty() : 큐가 비어있는지 확인한다.
 - isFull() : 큐가 꽉 차 있는지 확인한다.
 - peek() : 앞에 있는 원소를 삭제하지 않고 반환한다.
 
 ### 큐(Queue)의 문제점
 큐(Queue)를 구현하고 사용할때 큐에서 데이터를 빼내는 dequeue() 함수를 사용하면 맨 앞에있던 값이 빠져나가게 되는데 이때 front가 한 칸씩 뒤로 밀려나면서 큐의 가용범위가 줄어들면서, 큐의 재사용 또한 불가능하게 됩니다.
 - 만약에, 억지로 큐의 재사용을 하기 위해서 front를 출력하고 front뒤의 인덱스를 하나씩 앞당긴다고 하더라도 불필요한 연산이 너무 많아집니다.
 ### 큐(Queue)의 다른 형식
 - 문제점을 해결하기 위해서 원형 큐가 존재
 - 우선순위 큐
	- 우선순위를 이용하여 우선순위가 높은 순서대로 나가게 됩니다. 쉽게 말해, 병원에서 기존 환자들을 진료보다가 응급환자가 오게되면 먼저 진료하게 된다고 이해하면 쉽다.
 
 
 
 
 */

import Foundation

public struct QueueArray<T>: Queue {
	private var array: [T] = []
	
	public init() { }
	
	public var isEmpty: Bool {
		return array.isEmpty
	}
	
	public var peek: T? {
		return array.first
	}
	
	public mutating func enqueue(_ element: T) -> Bool {
		array.append(element)
		return true
	}
	
	public mutating func dequeue() -> T? {
		return isEmpty ? nil : array.removeFirst()
	}
}

extension QueueArray: CustomStringConvertible {
	public var description: String {
		String(describing: array)
	}
}

var queue = QueueArray<String>()

queue.enqueue("1")
queue.enqueue("2")
queue.enqueue("3")
print(queue)
queue.dequeue()
print(queue)
queue.peek
queue.dequeue()
print(queue)

//: [Next](@next)
