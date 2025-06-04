#include "scripts/include/uerm.as"

// connPlayers.as by @BelaRain
// The Repository - https://github.com/belarain/cbmrserver_connPlayers

array<Player> connPlayers;

void OnInitialize()
{
    RegisterCallback(PlayerConnect_c);
    RegisterCallback(PlayerDisconnect_c);

    print(" ");
    print("----------------------------------------------------------------------------");
    print("[SERVER] Connected Players has loaded successfully");
    print("[SERVER] By BelaRain");
    print("[SERVER] The Repository - https://github.com/belarain/cbmrserver_connPlayers");
    print("----------------------------------------------------------------------------");
    print(" ");

}

void OnPlayerConnect(Player player)
{
    connPlayers.push_back(player); // Add player to connPlayers
    print("[LOG] There are " + connPlayers.size() + " players");
}

void OnPlayerDisconnect(Player player)
{
    connPlayers.removeAt(connPlayers.find(player)); // Remove player from connPlayers
    print("[LOG] There are " + connPlayers.size() + " players");
}

/* -----------------------------------[FOR EXAMPLE]-----------------------------------
void KillAllPlayers()
{
    for (int i = 0; i < connPlayers.size(); ++i)
    {
        Player player = connPlayers[i];
        player.Kill();
    }
}   
   -----------------------------------[FOR EXAMPLE]----------------------------------- */
