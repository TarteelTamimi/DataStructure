import 'package:linkedlist/linked_list.dart';

// Challenge 1:
void printNodesRecursively<T>(Node<T>? node) {
  if (node == null) return;

  printNodesRecursively(node.next);

  print(node.value);
}

void printListInReverse<E>(LinkedList<E> list) {
  printNodesRecursively(list.head);
}

// Challenge 2:
Node<E>? getMiddle<E>(LinkedList<E> list) {
  var slow = list.head;
  var fast = list.head;

  while (fast?.next != null) {
    fast = fast?.next?.next;
    slow = slow?.next;
  }

  return slow;
}

// Challenge 3:
extension ReversibleLinkedList<E> on LinkedList<E> {
  void reverse() {
    final tempList = LinkedList<E>();
    for (final value in this) {
      tempList.push(value);
    }
    head = tempList.head;
  }
}

void main() {
  // Challenge 1:
  // var list = LinkedList<int>();
  // list.push(3);
  // list.push(2);
  // list.push(1);

  // print('Original list: $list');
  // print("Printing in reverse:");
  // printListInReverse(list);

  // Challenge 2:
  // var list = LinkedList<int>();
  // list.push(3);
  // list.push(2);
  // list.push(1);
  // print(list);

  // final middleNode = getMiddle(list);
  // print('Middle: ${middleNode?.value}');

  // Challenge 3:
  // var list = LinkedList<int>();
  // list.push(3);
  // list.push(2);
  // list.push(1);

  // print('Original list: $list');
  // list.reverse();
  // print('Reversed list: $list');
}
