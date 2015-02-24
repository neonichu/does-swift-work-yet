import CoreData
 
class Base: NSManagedObject {
  @NSManaged var lol: String
}

class Entity: Base {
  override var lol: String { willSet {} }
}

let entity = NSEntityDescription()
entity.name = "name"

let b = Entity.init(entity: entity, insertIntoManagedObjectContext: NSManagedObjectContext())
b.lol = "foo"
