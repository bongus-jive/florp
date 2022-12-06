function init()
	activeItem.setTwoHandedGrip(false)
  
  local scale = animator.partProperty("florp", "scale")
  animator.resetTransformationGroup("florp")
  animator.scaleTransformationGroup("florp", scale)
end