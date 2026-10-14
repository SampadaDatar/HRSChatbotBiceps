targetScope = 'subscription'

param resourceGroupName string
param location string = 'westus2'
param businessUnit string = 'ITDPT'

@description('Creation date (auto-generated)')
param creationDate string = utcNow('yyyy-MM-dd')

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
  tags: {
    BusinessUnit: businessUnit
    CreationDate: creationDate
  }
}

output resourceGroupId string = rg.id
