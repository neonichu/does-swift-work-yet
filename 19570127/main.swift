import CoreData
 
@objc protocol Foo {
  var bar: String { get set }
}
 
class Bar: NSManagedObject, Foo {
  @NSManaged var bar: String
}

let entity = NSEntityDescription()
entity.name = "name"

let b = Bar.init(entity: entity, insertIntoManagedObjectContext: NSManagedObjectContext())
b.bar = "foo"
