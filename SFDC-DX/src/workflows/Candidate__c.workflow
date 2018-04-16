<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_The_Country</fullName>
        <field>Country__c</field>
        <formula>&quot;United States&quot;</formula>
        <name>Update The Country</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update The Country</fullName>
        <actions>
            <name>Update_The_Country</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Candidate__c.Country__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>update Address</fullName>
        <actions>
            <name>Communicate_with_candidate</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Candidate__c.Address__c</field>
            <operation>equals</operation>
            <value>Kolkata</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Communicate_with_candidate</fullName>
        <assignedTo>payelsar@self.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>5</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Candidate__c.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Communicate with candidate</subject>
    </tasks>
</Workflow>
