targetScope = 'subscription'

param name string
param location string = 'westus'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: name
  location: location
}

output id string = rg.id
