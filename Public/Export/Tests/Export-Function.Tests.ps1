﻿Describe 'Export-Function Tests' {

   Context 'Parameters for Export-Function'{

        It 'Has a Parameter called Function' {
            $Function.Parameters.Keys.Contains('Function') | Should Be 'True'
            }
        It 'Function Parameter is Identified as Mandatory being True True' {
            [String]$Function.Parameters.Function.Attributes.Mandatory | Should be 'True True'
            }
        It 'Function Parameter is of String Type' {
            $Function.Parameters.Function.ParameterType.FullName | Should be 'System.String'
            }
        It 'Function Parameter is member of ParameterSets' {
            [String]$Function.Parameters.Function.ParameterSets.Keys | Should Be 'Passthru Basic'
            }
        It 'Function Parameter Position is defined correctly' {
            [String]$Function.Parameters.Function.Attributes.Position | Should be '-2147483648 -2147483648'
            }
        It 'Does Function Parameter Accept Pipeline Input?' {
            [String]$Function.Parameters.Function.Attributes.ValueFromPipeline | Should be 'True True'
            }
        It 'Does Function Parameter Accept Pipeline Input by PropertyName?' {
            [String]$Function.Parameters.Function.Attributes.ValueFromPipelineByPropertyName | Should be 'True True'
            }
        It 'Does Function Parameter use advanced parameter Validation? ' {
            $Function.Parameters.Function.Attributes.TypeID.Name -contains 'ValidateNotNullOrEmptyAttribute' | Should Be 'True'
            $Function.Parameters.Function.Attributes.TypeID.Name -contains 'ValidateNotNullAttribute' | Should Be 'True'
            $Function.Parameters.Function.Attributes.TypeID.Name -contains 'ValidateScript' | Should Be 'False'
            $Function.Parameters.Function.Attributes.TypeID.Name -contains 'ValidateRangeAttribute' | Should Be 'False'
            $Function.Parameters.Function.Attributes.TypeID.Name -contains 'ValidatePatternAttribute' | Should Be 'False'
            }
        It 'Has Parameter Help Text for Function '{
            $function.Definition.Contains('.PARAMETER Function') | Should Be 'True'
            }
        It 'Has a Parameter called ResolvedFunction' {
            $Function.Parameters.Keys.Contains('ResolvedFunction') | Should Be 'True'
            }
        It 'ResolvedFunction Parameter is Identified as Mandatory being True' {
            [String]$Function.Parameters.ResolvedFunction.Attributes.Mandatory | Should be 'True'
            }
        It 'ResolvedFunction Parameter is of Object Type' {
            $Function.Parameters.ResolvedFunction.ParameterType.FullName | Should be 'System.Object'
            }
        It 'ResolvedFunction Parameter is member of ParameterSets' {
            [String]$Function.Parameters.ResolvedFunction.ParameterSets.Keys | Should Be 'Passthru'
            }
        It 'ResolvedFunction Parameter Position is defined correctly' {
            [String]$Function.Parameters.ResolvedFunction.Attributes.Position | Should be '-2147483648'
            }
        It 'Does ResolvedFunction Parameter Accept Pipeline Input?' {
            [String]$Function.Parameters.ResolvedFunction.Attributes.ValueFromPipeline | Should be 'False'
            }
        It 'Does ResolvedFunction Parameter Accept Pipeline Input by PropertyName?' {
            [String]$Function.Parameters.ResolvedFunction.Attributes.ValueFromPipelineByPropertyName | Should be 'False'
            }
        It 'Does ResolvedFunction Parameter use advanced parameter Validation? ' {
            $Function.Parameters.ResolvedFunction.Attributes.TypeID.Name -contains 'ValidateNotNullOrEmptyAttribute' | Should Be 'False'
            $Function.Parameters.ResolvedFunction.Attributes.TypeID.Name -contains 'ValidateNotNullAttribute' | Should Be 'False'
            $Function.Parameters.ResolvedFunction.Attributes.TypeID.Name -contains 'ValidateScript' | Should Be 'False'
            $Function.Parameters.ResolvedFunction.Attributes.TypeID.Name -contains 'ValidateRangeAttribute' | Should Be 'False'
            $Function.Parameters.ResolvedFunction.Attributes.TypeID.Name -contains 'ValidatePatternAttribute' | Should Be 'False'
            }
        It 'Has Parameter Help Text for ResolvedFunction '{
            $function.Definition.Contains('.PARAMETER ResolvedFunction') | Should Be 'True'
            }
        It 'Has a Parameter called OutPath' {
            $Function.Parameters.Keys.Contains('OutPath') | Should Be 'True'
            }
        It 'OutPath Parameter is Identified as Mandatory being True True' {
            [String]$Function.Parameters.OutPath.Attributes.Mandatory | Should be 'True True'
            }
        It 'OutPath Parameter is of String Type' {
            $Function.Parameters.OutPath.ParameterType.FullName | Should be 'System.String'
            }
        It 'OutPath Parameter is member of ParameterSets' {
            [String]$Function.Parameters.OutPath.ParameterSets.Keys | Should Be 'Passthru Basic'
            }
        It 'OutPath Parameter Position is defined correctly' {
            [String]$Function.Parameters.OutPath.Attributes.Position | Should be '-2147483648 -2147483648'
            }
        It 'Does OutPath Parameter Accept Pipeline Input?' {
            [String]$Function.Parameters.OutPath.Attributes.ValueFromPipeline | Should be 'False False'
            }
        It 'Does OutPath Parameter Accept Pipeline Input by PropertyName?' {
            [String]$Function.Parameters.OutPath.Attributes.ValueFromPipelineByPropertyName | Should be 'False False'
            }
        It 'Does OutPath Parameter use advanced parameter Validation? ' {
            $Function.Parameters.OutPath.Attributes.TypeID.Name -contains 'ValidateNotNullOrEmptyAttribute' | Should Be 'False'
            $Function.Parameters.OutPath.Attributes.TypeID.Name -contains 'ValidateNotNullAttribute' | Should Be 'False'
            $Function.Parameters.OutPath.Attributes.TypeID.Name -contains 'ValidateScript' | Should Be 'False'
            $Function.Parameters.OutPath.Attributes.TypeID.Name -contains 'ValidateRangeAttribute' | Should Be 'False'
            $Function.Parameters.OutPath.Attributes.TypeID.Name -contains 'ValidatePatternAttribute' | Should Be 'False'
            }
        It 'Has Parameter Help Text for OutPath '{
            $function.Definition.Contains('.PARAMETER OutPath') | Should Be 'True'
            }
        It 'Has a Parameter called PrivateFunction' {
            $Function.Parameters.Keys.Contains('PrivateFunction') | Should Be 'True'
            }
        It 'PrivateFunction Parameter is Identified as Mandatory being False' {
            [String]$Function.Parameters.PrivateFunction.Attributes.Mandatory | Should be 'False'
            }
        It 'PrivateFunction Parameter is of SwitchParameter Type' {
            $Function.Parameters.PrivateFunction.ParameterType.FullName | Should be 'System.Management.Automation.SwitchParameter'
            }
        It 'PrivateFunction Parameter is member of ParameterSets' {
            [String]$Function.Parameters.PrivateFunction.ParameterSets.Keys | Should Be 'Passthru'
            }
        It 'PrivateFunction Parameter Position is defined correctly' {
            [String]$Function.Parameters.PrivateFunction.Attributes.Position | Should be '-2147483648'
            }
        It 'Does PrivateFunction Parameter Accept Pipeline Input?' {
            [String]$Function.Parameters.PrivateFunction.Attributes.ValueFromPipeline | Should be 'False'
            }
        It 'Does PrivateFunction Parameter Accept Pipeline Input by PropertyName?' {
            [String]$Function.Parameters.PrivateFunction.Attributes.ValueFromPipelineByPropertyName | Should be 'False'
            }
        It 'Does PrivateFunction Parameter use advanced parameter Validation? ' {
            $Function.Parameters.PrivateFunction.Attributes.TypeID.Name -contains 'ValidateNotNullOrEmptyAttribute' | Should Be 'False'
            $Function.Parameters.PrivateFunction.Attributes.TypeID.Name -contains 'ValidateNotNullAttribute' | Should Be 'False'
            $Function.Parameters.PrivateFunction.Attributes.TypeID.Name -contains 'ValidateScript' | Should Be 'False'
            $Function.Parameters.PrivateFunction.Attributes.TypeID.Name -contains 'ValidateRangeAttribute' | Should Be 'False'
            $Function.Parameters.PrivateFunction.Attributes.TypeID.Name -contains 'ValidatePatternAttribute' | Should Be 'False'
            }
        It 'Has Parameter Help Text for PrivateFunction '{
            $function.Definition.Contains('.PARAMETER PrivateFunction') | Should Be 'True'
            }
    }
    Context "Function $($function.Name) - Help Section" {

            It "Function $($function.Name) Has show-help comment block" {

                $function.Definition.Contains('<#') | should be 'True'
                $function.Definition.Contains('#>') | should be 'True'
            }

            It "Function $($function.Name) Has show-help comment block has a.SYNOPSIS" {

                $function.Definition.Contains('.SYNOPSIS') -or $function.Definition.Contains('.Synopsis') | should be 'True'

            }

            It "Function $($function.Name) Has show-help comment block has an example" {

                $function.Definition.Contains('.EXAMPLE') | should be 'True'
            }

            It "Function $($function.Name) Is an advanced function" {

                $function.CmdletBinding | should be 'True'
                $function.Definition.Contains('param') -or  $function.Definition.Contains('Param') | should be 'True'
            }
    
    }

 }


