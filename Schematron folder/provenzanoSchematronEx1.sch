<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    
    <pattern id="locationChecks">
        <rule context="location[contains(., 'AU')]">
            <assert test="number(@long) gt 100">
                Australian locations must have a longitude greator than 100. 
            </assert>
            <assert test="number(@long) gt 0">
                Australian locations must have a positive longitude. 
            </assert>
            <assert test="number(@lat) lt 0"> 
                Australian locations must have a negative latitude.
            </assert>
        </rule>
        <rule context="location[contains(., 'USA')]">
            <assert test="number(@long) &lt; 0">
                USA locations must have a negative longitude
            </assert>
            <assert test="number(@lat) gt 0">
                USA locations must have a positive latitude 
            </assert>
        </rule>
    </pattern>
    
</sch:schema> 