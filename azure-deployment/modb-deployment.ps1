 
 #rg create
 1..9 | ForEach-Object -Parallel  {
 
 New-AzResourceGroup -Name "modb-rg-0$_" -Location " East US"
 
 }
 
  10..14 | ForEach-Object -Parallel  {
 
 New-AzResourceGroup -Name "modb-rg-$_" -Location " East US"
 
 }
 
 #res deploy
  1..9 | ForEach-Object -Parallel  {
 
  New-AzResourceGroupDeployment    -Name "modb-deployment-0$_" -ResourceGroupName "modb-rg-0$_"  -TemplateFile "C:\Users\rgass\Desktop\ModuleB-Azure\modb-rg\eastus\template.json" -TemplateParameterFile "C:\Users\rgass\Desktop\ModuleB-Azure\modb-rg\eastus\parameters.json"
 }
 
 
  10..14 | ForEach-Object -Parallel  {
 
New-AzResourceGroupDeployment    -Name "modb-deployment-$_" -ResourceGroupName "modb-rg-$_"  -TemplateFile "C:\Users\rgass\Desktop\ModuleB-Azure\modb-rg\eastus\template.json" -TemplateParameterFile "C:\Users\rgass\Desktop\ModuleB-Azure\modb-rg\eastus\parameters.json"
 
 }
 
 
 
