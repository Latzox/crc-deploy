param resName string
@secure()
param repoToken string

module cosmosdb 'cosmosdb.bicep' = {
  name: 'deploy-cosmosdb'
  params: {
    resName: resName
  }
}

module function 'function.bicep' = {
  name: 'deploy-functionapp'
  params: {
    COSMOS_TABLEAPI_CONNECTION_STRING: cosmosdb.outputs.cosmosdbbconnectionstring
    resName: resName
  }
}

module webapp 'staticwebapp.bicep' = {
  name: 'deploy-webapp'
  params: {
    repoToken: repoToken
    resName: resName
  }
}

module frontdoor 'frontdoor.bicep' = {
  name: 'deploy-frontdoor'
  params: {
    backendAddress: webapp.outputs.webAppUrl
    resName: resName
  }
}
