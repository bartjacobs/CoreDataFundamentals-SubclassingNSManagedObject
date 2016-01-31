### Core Data Fundamentals: Subclassing NSManagedObject

#### Author: Bart Jacobs

Up until now, we have used `NSManagedObject` to represent and interact with records stored in the persistent store. This works fine, but the syntax is verbose, we lose autocompletion, and type safety is also an issue. Remember from earlier in this series that the values of a managed object are accessed by invoking `valueForKey(_:)` and `setValueForKey(_:)`.

```language-swift
record.valueForKey("firstName")
record.setValue("Bart", forKey: "firstName")
```

Because `valueForKey(_:)` returns an `AnyObject?` object, we need to cast the result to the type we expect, using optional binding.

```language-swift
if let name = record.valueForKey("name") as? String {
    print(name)
}
```

We can improve this by replacing the string literals in these examples with constants. But there is an even better approach, subclassing `NSManagedObject`.

**Read this article on the [blog](http://bartjacobs.com/core-data-fundamentals-subclassing-nsmanagedobject/)**.
