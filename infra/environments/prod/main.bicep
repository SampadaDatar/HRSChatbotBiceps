targetScope = 'subscription'

param resourceGroupName string
param location string = 'westus2'
param businessUnit string = 'ITDPT'
param creationDate string = '2026-04-02'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
  tags: {
    BusinessUnit: businessUnit
    CreationDate: creationDate
  }
}

output resourceGroupId string = rg.id
