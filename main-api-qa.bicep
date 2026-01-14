param sites_mapapp_api_qa_carecloud_name string = 'mapapp-api-qa-carecloud'
param serverfarms_ASP_rgmapappqacarecloud_b7ff_externalid string = '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/Microsoft.Web/serverfarms/ASP-rgmapappqacarecloud-b7ff'
param virtualNetworks_MAP_VNET_externalid string = '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/Microsoft.Network/virtualNetworks/MAP-VNET'

resource sites_mapapp_api_qa_carecloud_name_resource 'Microsoft.Web/sites@2024-11-01' = {
  name: sites_mapapp_api_qa_carecloud_name
  location: 'North Central US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/microsoft.insights/components/mapapp-ui-qa-carecloud'
  }
  kind: 'app'
  properties: {
    enabled: true
    hostNameSslStates: [
      {
        name: '${sites_mapapp_api_qa_carecloud_name}.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Standard'
      }
      {
        name: '${sites_mapapp_api_qa_carecloud_name}.scm.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Repository'
      }
    ]
    serverFarmId: serverfarms_ASP_rgmapappqacarecloud_b7ff_externalid
    reserved: false
    isXenon: false
    hyperV: false
    dnsConfiguration: {}
    outboundVnetRouting: {
      allTraffic: false
      applicationTraffic: true
      contentShareTraffic: false
      imagePullTraffic: false
      backupRestoreTraffic: false
    }
    siteConfig: {
      numberOfWorkers: 1
      acrUseManagedIdentityCreds: false
      alwaysOn: true
      http20Enabled: false
      functionAppScaleLimit: 0
      minimumElasticInstanceCount: 1
    }
    scmSiteAlsoStopped: false
    clientAffinityEnabled: true
    clientAffinityProxyEnabled: false
    clientCertEnabled: false
    clientCertMode: 'Required'
    hostNamesDisabled: false
    ipMode: 'IPv4'
    customDomainVerificationId: '7F8D630CCBED40ECE5C09EF5A83707F1949A97CC50BD8E4D3C1085FCCF00C654'
    containerSize: 0
    dailyMemoryTimeQuota: 0
    httpsOnly: true
    endToEndEncryptionEnabled: false
    redundancyMode: 'None'
    publicNetworkAccess: 'Enabled'
    storageAccountRequired: false
    virtualNetworkSubnetId: '${virtualNetworks_MAP_VNET_externalid}/subnets/appservice12'
    keyVaultReferenceIdentity: 'SystemAssigned'
  }
}

resource sites_mapapp_api_qa_carecloud_name_ftp 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: 'ftp'
  location: 'North Central US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/microsoft.insights/components/mapapp-ui-qa-carecloud'
  }
  properties: {
    allow: true
  }
}

resource sites_mapapp_api_qa_carecloud_name_scm 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: 'scm'
  location: 'North Central US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/microsoft.insights/components/mapapp-ui-qa-carecloud'
  }
  properties: {
    allow: true
  }
}

resource sites_mapapp_api_qa_carecloud_name_web 'Microsoft.Web/sites/config@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: 'web'
  location: 'North Central US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/microsoft.insights/components/mapapp-ui-qa-carecloud'
  }
  properties: {
    numberOfWorkers: 1
    defaultDocuments: [
      'Default.htm'
      'Default.html'
      'Default.asp'
      'index.htm'
      'index.html'
      'iisstart.htm'
      'default.aspx'
      'index.php'
      'hostingstart.html'
    ]
    netFrameworkVersion: 'v8.0'
    requestTracingEnabled: false
    remoteDebuggingEnabled: false
    remoteDebuggingVersion: 'VS2022'
    httpLoggingEnabled: true
    acrUseManagedIdentityCreds: false
    logsDirectorySizeLimit: 35
    detailedErrorLoggingEnabled: false
    publishingUsername: '$mapapp-api-qa-carecloud'
    scmType: 'VSTSRM'
    use32BitWorkerProcess: true
    webSocketsEnabled: false
    alwaysOn: true
    managedPipelineMode: 'Integrated'
    virtualApplications: [
      {
        virtualPath: '/'
        physicalPath: 'site\\wwwroot'
        preloadEnabled: true
      }
    ]
    loadBalancing: 'LeastRequests'
    experiments: {
      rampUpRules: []
    }
    autoHealEnabled: false
    vnetName: '90adeae2-2b47-4ff7-9ee8-8906c742073e_appservice12'
    vnetRouteAllEnabled: true
    vnetPrivatePortsCount: 0
    publicNetworkAccess: 'Enabled'
    cors: {
      allowedOrigins: [
        'https://mapapp-ui-qa-carecloud.azurewebsites.net'
        '*'
        'http://localhost:4200'
      ]
      supportCredentials: false
    }
    localMySqlEnabled: false
    ipSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictionsUseMain: false
    http20Enabled: false
    minTlsVersion: '1.2'
    scmMinTlsVersion: '1.2'
    ftpsState: 'FtpsOnly'
    preWarmedInstanceCount: 0
    elasticWebAppScaleLimit: 0
    functionsRuntimeScaleMonitoringEnabled: false
    minimumElasticInstanceCount: 1
    azureStorageAccounts: {}
    http20ProxyFlag: 0
  }
}

resource sites_mapapp_api_qa_carecloud_name_3bff154df5914c028b7e2c6a56b86825 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: '3bff154df5914c028b7e2c6a56b86825'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"ba860c1127f153dfd9cf6919a990d1d0d0cd6ad7","buildId":"161","releaseId":"126","buildNumber":"20260106.2","releaseName":"Release-65","repoProvider":"TfsGit","repoName":"MapApp2021BE","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-06T17:49:26.3869813Z'
    end_time: '2026-01-06T17:49:26.5901059Z'
    active: false
  }
}

resource sites_mapapp_api_qa_carecloud_name_4fbbb5c126cc4fd18657fda00a3f63a8 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: '4fbbb5c126cc4fd18657fda00a3f63a8'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"62f29d477c691c5c5ff1f950c31837a6575c969e","buildId":"167","releaseId":"134","buildNumber":"20260107.2","releaseName":"Release-67","repoProvider":"TfsGit","repoName":"MapApp2021BE","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-07T15:08:47.62959Z'
    end_time: '2026-01-07T15:08:47.8170897Z'
    active: true
  }
}

resource sites_mapapp_api_qa_carecloud_name_7100cb21bb484f0ea5e75c45135e263f 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: '7100cb21bb484f0ea5e75c45135e263f'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"405fa357dd5fa9ec9e8e0b7ab0023137b5e00c3c","buildId":"119","releaseId":"64","buildNumber":"20260101.2","releaseName":"Release-45","repoProvider":"TfsGit","repoName":"MapApp2021BE","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-02T19:29:11.2117903Z'
    end_time: '2026-01-02T19:29:11.3992913Z'
    active: false
  }
}

resource sites_mapapp_api_qa_carecloud_name_7696c344f0f84926869e9bc04f7e8116 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: '7696c344f0f84926869e9bc04f7e8116'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"a0ad47160d4241d7944bc8ab49e7c61e1e26d53f","buildId":"145","releaseId":"107","buildNumber":"20260105.1","releaseName":"Release-61","repoProvider":"TfsGit","repoName":"MapApp2021BE","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-05T14:14:04.298645Z'
    end_time: '2026-01-05T14:14:04.4861445Z'
    active: false
  }
}

resource sites_mapapp_api_qa_carecloud_name_951767378199663 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: '951767378199663'
  location: 'North Central US'
  properties: {
    status: 4
    author: 'Uzair Khan'
    deployer: 'VSTS'
    message: '{"type":"Deployment","commitId":"318f0802a88d20677dbea5f267153843b5649637","buildId":"137","releaseId":"95","buildNumber":"20260102.2","releaseName":"Release-13","repoProvider":"TfsGit","repoName":"MapAppBackgroundJobs","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"main","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-02T18:23:20.5049644Z'
    end_time: '2026-01-02T18:23:20.5049644Z'
    active: false
  }
}

resource sites_mapapp_api_qa_carecloud_name_9d5cbf07ac1e46d9a9a76eec3d39d43e 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: '9d5cbf07ac1e46d9a9a76eec3d39d43e'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"405fa357dd5fa9ec9e8e0b7ab0023137b5e00c3c","buildId":"119","releaseId":"64","buildNumber":"20260101.2","releaseName":"Release-45","repoProvider":"TfsGit","repoName":"MapApp2021BE","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-02T18:08:03.0308872Z'
    end_time: '2026-01-02T18:08:03.2027606Z'
    active: false
  }
}

resource sites_mapapp_api_qa_carecloud_name_a98a1bec9872471591b192a569044827 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: 'a98a1bec9872471591b192a569044827'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"ba860c1127f153dfd9cf6919a990d1d0d0cd6ad7","buildId":"149","releaseId":"111","buildNumber":"20260105.2","releaseName":"Release-62","repoProvider":"TfsGit","repoName":"MapApp2021BE","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-05T15:39:57.5738519Z'
    end_time: '2026-01-05T15:39:57.7613511Z'
    active: false
  }
}

resource sites_mapapp_api_qa_carecloud_name_ee67642645f1462298936e10109c247f 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: 'ee67642645f1462298936e10109c247f'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"ed7926ecc4d3471983e4c18b7de3b9ef0247990b","buildId":"162","releaseId":"127","buildNumber":"20260107.1","releaseName":"Release-66","repoProvider":"TfsGit","repoName":"MapApp2021BE","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-07T09:51:45.2561599Z'
    end_time: '2026-01-07T09:51:45.443659Z'
    active: false
  }
}

resource sites_mapapp_api_qa_carecloud_name_f22147b4a7f0458bb26cdeceff9718b1 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: 'f22147b4a7f0458bb26cdeceff9718b1'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"405fa357dd5fa9ec9e8e0b7ab0023137b5e00c3c","buildId":"119","releaseId":"64","buildNumber":"20260101.2","releaseName":"Release-45","repoProvider":"TfsGit","repoName":"MapApp2021BE","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-02T20:53:06.3491451Z'
    end_time: '2026-01-02T20:53:06.5210194Z'
    active: false
  }
}

resource sites_mapapp_api_qa_carecloud_name_fcb15f06ac624e86aa8e48d0f8854841 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: 'fcb15f06ac624e86aa8e48d0f8854841'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"405fa357dd5fa9ec9e8e0b7ab0023137b5e00c3c","buildId":"119","releaseId":"64","buildNumber":"20260101.2","releaseName":"Release-45","repoProvider":"TfsGit","repoName":"MapApp2021BE","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-02T18:28:14.0376561Z'
    end_time: '2026-01-02T18:28:14.2564057Z'
    active: false
  }
}

resource sites_mapapp_api_qa_carecloud_name_sites_mapapp_api_qa_carecloud_name_azurewebsites_net 'Microsoft.Web/sites/hostNameBindings@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: '${sites_mapapp_api_qa_carecloud_name}.azurewebsites.net'
  location: 'North Central US'
  properties: {
    siteName: 'mapapp-api-qa-carecloud'
    hostNameType: 'Verified'
  }
}

resource sites_mapapp_api_qa_carecloud_name_90adeae2_2b47_4ff7_9ee8_8906c742073e_appservice12 'Microsoft.Web/sites/virtualNetworkConnections@2024-11-01' = {
  parent: sites_mapapp_api_qa_carecloud_name_resource
  name: '90adeae2-2b47-4ff7-9ee8-8906c742073e_appservice12'
  location: 'North Central US'
  properties: {
    vnetResourceId: '${virtualNetworks_MAP_VNET_externalid}/subnets/appservice12'
    isSwift: true
  }
}
