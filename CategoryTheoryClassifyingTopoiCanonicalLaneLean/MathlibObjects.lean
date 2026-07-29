import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClassifyingTopoiCanonicalLaneLean

structure Category (Obj : Type u) (Hom : Obj → Obj → Type v) where
  id (X : Obj) : Hom X X
  comp {X Y Z : Obj} (f : Hom X Y) (g : Hom Y Z) : Hom X Z
  id_comp {X Y : Obj} (f : Hom X Y) : comp (id X) f = f
  comp_id {X Y : Obj} (f : Hom X Y) : comp f (id Y) = f
  assoc {W X Y Z : Obj} (f : Hom W X) (g : Hom X Y) (h : Hom Y Z) : comp (comp f g) h = comp f (comp g h)

structure Functor (C : Category ObjC HomC) (D : Category ObjD HomD) where
  obj : C.Obj → D.Obj
  map {X Y : C.Obj} (f : C.Hom X Y) : D.Hom (obj X) (obj Y)
  map_id (X : C.Obj) : map (C.id X) = D.id (obj X)
  map_comp {X Y Z : C.Obj} (f : C.Hom X Y) (g : C.Hom Y Z) : map (C.comp f g) = D.comp (map f) (map g)

structure NatTrans {C D : Category ObjC HomC ObjD HomD} (F G : Functor C D) where
  components (X : C.Obj) : D.Hom (F.obj X) (G.obj X)
  naturality {X Y : C.Obj} (f : C.Hom X Y) : D.comp (components X) (G.map f) = D.comp (F.map f) (components Y)

structure ClassifyingToposAdmittedObject where
  category : Category ObjC HomC
  site : Type u
  coverage : Prop
  sheaves : Category (ObjSh : Type u) (HomSh : ObjSh → ObjSh → Type v)
  toposAxioms : Prop
  classifyingProperty : Prop
  conclusion : classifyingProperty

end CategoryTheoryClassifyingTopoiCanonicalLaneLean
end HautevilleHouse