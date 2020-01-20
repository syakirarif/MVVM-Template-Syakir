<?xml version="1.0"?>
<recipe>      
 
    <instantiate from="src/app_package/BaseDataSource.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}DS.kt" />  
    <instantiate from="src/app_package/BaseLocalDataSource.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}LDS.kt" />
    <instantiate from="src/app_package/BaseRemoteDataSource.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}RDS.kt" />
    <instantiate from="src/app_package/BaseRepository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Repository.kt" />

</recipe>
