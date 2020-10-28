configuration IISInstall
{
    param (
    $MachineName,
    $WebDeployPackagePath,
    $UserName,
    $Password,
    $DbServerName,
    $DbName,
    $DbUserName,
    $DbPassword
    )
    node ($MachineName)
    {
        WindowsFeature IIS
        {
            Ensure = "Present"
            Name = "Web-Server"
        }
    }
}