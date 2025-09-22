namespace ApplicationWorld;

public partial class ApplicationWorldImpl : IApplicationWorld
{

    public static int GetCurrentUnixtime()
    {
        return (int)DateTimeOffset.UtcNow.ToUnixTimeSeconds();
    }

}
