function init()
  local scale = animator.partProperty("florp", "scale")
  animator.resetTransformationGroup("florp")
  animator.scaleTransformationGroup("florp", scale)
  
  if storage.florp == nil then
    storage.florp = true
  end
  
  animator.setAnimationState("florp", tostring(storage.florp))
	object.setInteractive(storage.florp)
end

function onInteraction(args)
	world.spawnItem(config.getParameter("florpItem", "pat_florp"), entity.position())
	
	storage.florp = false
	object.setInteractive(false)
	animator.setAnimationState("florp", "false")
end