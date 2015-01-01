[CmdletBinding()]
param(
[Parameter(Mandatory=$true,ValueFromPipeline=$true)]
[bool] $ShouldStop,
[Parameter(Mandatory=$true , ValueFromPipeline=$true)]
[bool] $ServicefromXML = $false ,
[Parameter(ValueFromPipeline=$true)]
[String] $ServiceName = $null,
[Parameter(ValueFromPipeline=$true)]
[bool] $AllSystemServicecs =$false 
)


set-ExecutionPolicy Unrestricted

if($ServicefromXML)
{
./ServicefromXML.ps1 $ShouldStop
}

if( -not $ServicefromXML  -and  $ServiceName  )
{
./SingelService.ps1 $ShouldStop $ServiceToAct
}

if( $AllSystemServicecs  )
{
Write-Host "This is not yet Implemented  "
}


#.\Untitled9.ps1 $true
