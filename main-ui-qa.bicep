param sites_mapapp_ui_qa_carecloud_name string = 'mapapp-ui-qa-carecloud'
param serverfarms_ASP_rgmapappqacarecloud_b7ff_externalid string = '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/Microsoft.Web/serverfarms/ASP-rgmapappqacarecloud-b7ff'
param virtualNetworks_MAP_VNET_externalid string = '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/Microsoft.Network/virtualNetworks/MAP-VNET'

resource sites_mapapp_ui_qa_carecloud_name_resource 'Microsoft.Web/sites@2024-11-01' = {
  name: sites_mapapp_ui_qa_carecloud_name
  location: 'North Central US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/microsoft.insights/components/mapapp-ui-qa-carecloud'
  }
  kind: 'app'
  properties: {
    enabled: true
    hostNameSslStates: [
      {
        name: 'mapapp.carecloud.com'
        sslState: 'IpBasedEnabled'
        virtualIP: '20.241.95.138'
        thumbprint: 'FD78A8A5DFCF5DA375203276933D9B9BCFC4FED3'
        hostType: 'Standard'
      }
      {
        name: '${sites_mapapp_ui_qa_carecloud_name}.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Standard'
      }
      {
        name: '${sites_mapapp_ui_qa_carecloud_name}.scm.azurewebsites.net'
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

resource sites_mapapp_ui_qa_carecloud_name_ftp 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: 'ftp'
  location: 'North Central US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/microsoft.insights/components/mapapp-ui-qa-carecloud'
  }
  properties: {
    allow: false
  }
}

resource sites_mapapp_ui_qa_carecloud_name_scm 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: 'scm'
  location: 'North Central US'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/682a69bc-be55-488e-90ae-5979376b40ed/resourceGroups/rg_mapappqa_carecloud/providers/microsoft.insights/components/mapapp-ui-qa-carecloud'
  }
  properties: {
    allow: false
  }
}

resource sites_mapapp_ui_qa_carecloud_name_web 'Microsoft.Web/sites/config@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
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
    netFrameworkVersion: 'v2.0'
    requestTracingEnabled: false
    remoteDebuggingEnabled: false
    remoteDebuggingVersion: 'VS2022'
    httpLoggingEnabled: false
    acrUseManagedIdentityCreds: false
    logsDirectorySizeLimit: 35
    detailedErrorLoggingEnabled: false
    publishingUsername: 'REDACTED'
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

resource sites_mapapp_ui_qa_carecloud_name_206b14f9171d4e84993669577607f76d 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: '206b14f9171d4e84993669577607f76d'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"587cfef853367082b8738f3ecbf31c130c710d73","buildId":"37","releaseId":"10","buildNumber":"37","releaseName":"Release-2","repoProvider":"TfsGit","repoName":"MapApp2021UI","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2025-12-19T14:49:56.3352848Z'
    end_time: '2025-12-19T14:49:56.6634126Z'
    active: false
  }
}

resource sites_mapapp_ui_qa_carecloud_name_2af6575eb51b4218b2ca0f3a85b1c2d0 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: '2af6575eb51b4218b2ca0f3a85b1c2d0'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"7b1d7d1be69c31f395256d94d0436743bf9f2872","buildId":"84","releaseId":"45","buildNumber":"84","releaseName":"Release-4","repoProvider":"TfsGit","repoName":"MapApp2021UI","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud-new","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2025-12-26T12:36:45.146987Z'
    end_time: '2025-12-26T12:36:45.3344861Z'
    active: false
  }
}

resource sites_mapapp_ui_qa_carecloud_name_2f3bbd0ad1384dbf8ca6980793e493bd 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: '2f3bbd0ad1384dbf8ca6980793e493bd'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"5ad3cff2920615df9650db990568f0db520c11a4","buildId":"164","releaseId":"131","buildNumber":"164","releaseName":"Release-14","repoProvider":"TfsGit","repoName":"MapApp2021UI","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud-new","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-08T11:48:18.4570037Z'
    end_time: '2026-01-08T11:48:18.7070031Z'
    active: false
  }
}

resource sites_mapapp_ui_qa_carecloud_name_3a70fb60dfcd4eeebe2f918477a973a2 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: '3a70fb60dfcd4eeebe2f918477a973a2'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"3e337ceb00fdc24abad379f8f8610bd9557b0584","buildId":"44","releaseId":"13","buildNumber":"44","releaseName":"Release-3","repoProvider":"TfsGit","repoName":"MapApp2021UI","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2025-12-19T17:10:32.2835511Z'
    end_time: '2025-12-19T17:10:32.5491784Z'
    active: false
  }
}

resource sites_mapapp_ui_qa_carecloud_name_5ab25dfd018546b99ad9b4e202214803 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: '5ab25dfd018546b99ad9b4e202214803'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"c66fcfea6f9015186d2fad838af24bb88142360c","buildId":"4","releaseId":"2","buildNumber":"4","releaseName":"Release-1","repoProvider":"TfsGit","repoName":"MapApp2021UI","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"stage","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2025-12-13T11:07:11.0055032Z'
    end_time: '2025-12-13T11:07:11.1930025Z'
    active: false
  }
}

resource sites_mapapp_ui_qa_carecloud_name_9d256102d0364d5d8096f29122568308 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: '9d256102d0364d5d8096f29122568308'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"e29e21ee314ea2cc8c176860deb4e0565f726801","buildId":"173","releaseId":"141","buildNumber":"173","releaseName":"Release-15","repoProvider":"TfsGit","repoName":"MapApp2021UI","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"auth_login_changes","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-08T11:42:46.1328233Z'
    end_time: '2026-01-08T11:42:46.3359461Z'
    active: false
  }
}

resource sites_mapapp_ui_qa_carecloud_name_ec096853802c4233bc7701e88d63af95 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: 'ec096853802c4233bc7701e88d63af95'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"b3d5d33e17768c9dd6ba33c08ac72ab701687f7b","buildId":"175","releaseId":"148","buildNumber":"175","releaseName":"Release-22","repoProvider":"TfsGit","repoName":"MapApp2021UI","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud-new","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-08T14:09:13.539209Z'
    end_time: '2026-01-08T14:09:13.7423339Z'
    active: true
  }
}

resource sites_mapapp_ui_qa_carecloud_name_f080d577363b4956b85baab6b3367813 'Microsoft.Web/sites/deployments@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: 'f080d577363b4956b85baab6b3367813'
  location: 'North Central US'
  properties: {
    status: 4
    author_email: 'N/A'
    author: 'N/A'
    deployer: 'VSTS'
    message: '{"type":"deployment","commitId":"5ad3cff2920615df9650db990568f0db520c11a4","buildId":"164","releaseId":"131","buildNumber":"164","releaseName":"Release-14","repoProvider":"TfsGit","repoName":"MapApp2021UI","collectionUrl":"https://dev.azure.com/MapAppCarecloud/","teamProject":"619a5ff6-477e-4703-b042-8f1f4c863b1e","buildProjectUrl":"https://dev.azure.com/MapAppCarecloud/619a5ff6-477e-4703-b042-8f1f4c863b1e","repositoryUrl":"","branch":"qa-prod-carecloud-new","teamProjectName":"MapApp","slotName":"production"}'
    start_time: '2026-01-07T13:03:58.5408823Z'
    end_time: '2026-01-07T13:03:58.8377588Z'
    active: false
  }
}

resource sites_mapapp_ui_qa_carecloud_name_mapapp_carecloud_com 'Microsoft.Web/sites/hostNameBindings@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: 'mapapp.carecloud.com'
  location: 'North Central US'
  properties: {
    siteName: 'mapapp-ui-qa-carecloud'
    hostNameType: 'Verified'
    sslState: 'IpBasedEnabled'
    thumbprint: 'FD78A8A5DFCF5DA375203276933D9B9BCFC4FED3'
  }
}

resource sites_mapapp_ui_qa_carecloud_name_sites_mapapp_ui_qa_carecloud_name_azurewebsites_net 'Microsoft.Web/sites/hostNameBindings@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: '${sites_mapapp_ui_qa_carecloud_name}.azurewebsites.net'
  location: 'North Central US'
  properties: {
    siteName: 'mapapp-ui-qa-carecloud'
    hostNameType: 'Verified'
  }
}

resource sites_mapapp_ui_qa_carecloud_name_90adeae2_2b47_4ff7_9ee8_8906c742073e_appservice12 'Microsoft.Web/sites/virtualNetworkConnections@2024-11-01' = {
  parent: sites_mapapp_ui_qa_carecloud_name_resource
  name: '90adeae2-2b47-4ff7-9ee8-8906c742073e_appservice12'
  location: 'North Central US'
  properties: {
    vnetResourceId: '${virtualNetworks_MAP_VNET_externalid}/subnets/appservice12'
    isSwift: true
  }
}
