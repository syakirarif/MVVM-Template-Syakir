<?xml version="1.0"?>
<recipe>      
 
    <instantiate from="src/app_package/BaseViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}VM.kt" />  
    <instantiate from="src/app_package/BaseFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt" />
    <instantiate from="src/app_package/BaseUserActionListener.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}UAL.kt" />
    <instantiate from="src/app_package/BaseViewModelFactory.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}VMF.kt" />

   <instantiate from="res/layout/base_fragment_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
 
 
    <#--  <open file="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml"/>  -->
    <#--  <open file="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt"/>  -->

</recipe>
