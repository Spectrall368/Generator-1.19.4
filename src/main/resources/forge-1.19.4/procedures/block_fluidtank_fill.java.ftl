<#include "mcelements.ftl">
<#include "mcitems.ftl">
<#-- @formatter:off -->
{
	BlockEntity _ent = world.getBlockEntity(${toBlockPos(input$x,input$y,input$z)});
	if (_ent != null)
		_ent.getCapability(ForgeCapabilities.FLUID_HANDLER, ${input$direction}).ifPresent(capability -> {
			int _amount = ${opt.toInt(input$amount)};
			capability.fill(new FluidStack(${generator.map(field$fluid, "fluids")}, _amount), IFluidHandler.FluidAction.EXECUTE)
		});
}
<#-- @formatter:on -->