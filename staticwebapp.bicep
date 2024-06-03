param resName string

@secure()
param repoToken string

resource webapp 'Microsoft.Web/staticSites@2023-12-01' = {
  name: 'swa-${resName}'
  location: 'West Europe'
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
  properties: {
    repositoryToken: repoToken
    repositoryUrl: 'https://github.com/Latzox/crc-frontend'
    branch: 'main'
    stagingEnvironmentPolicy: 'Enabled'
    allowConfigFileUpdates: true
    provider: 'GitHub'
    enterpriseGradeCdnStatus: 'Disabled'
    buildProperties: {
      appLocation: '/app'
    }
  }
}

output webAppUrl string = webapp.properties.defaultHostname
