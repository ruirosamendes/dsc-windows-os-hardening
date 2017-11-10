param(
[string]$computerName,
[string]$currentDir
)

Configuration measuresconfig 
{	
	Node $computerName
	{		
        Registry M889229-disable-ssl-v3
        {
            Key = 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Client'
            ValueName = 'DisabledByDefault'
            Ensure = 'Present'            
            ValueData = '00000001'
            ValueType = 'Dword'
        }
	}
}

measuresconfig -OutputPath $currentDir\mofs



