local turbine
turbine = peripheral.wrap("bottom")
while true do
 sleep(5)
 if turbine.getEnergyStored() > 500000 then
  turbine.setFluidFlowRateMax(200)
  print("Running slowly")
 else
  turbine.setFluidFlowRateMax(1387)
  print("Running with full power")
 end
end
