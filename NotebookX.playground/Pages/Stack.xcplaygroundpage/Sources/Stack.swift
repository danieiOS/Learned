import Foundation

public struct Stack<T> {
	private var array: [T] = []
	
	public init() { }
	
	public init(elements: [T]) {
		self.array = elements
	}
	
	
	public mutating func pop() -> T? {
		return array.popLast()
	}
	
	public mutating func push(_ element: T) {
		return array.append(element)
	}
	
	public func peek() -> T? {
		return array.last
	}
	
	public var isEmpty: Bool {
		return peek() == nil
	}
}

extension Stack: ExpressibleByArrayLiteral {
	public init(arrayLiteral elements: T...) {
		array = elements
	}
}

extension Stack: CustomDebugStringConvertible {
	public var debugDescription: String {
		"""
		----Top----
		\(array.map { "\($0)"}.reversed().joined(separator: "\n"))
		-----------
		"""
	}
}
