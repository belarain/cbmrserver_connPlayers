# How to install
1. You should move `connPlayers.as` AngelScript file for your SCP: CB Multiplayer Reborn server into your server folder (`cbmrserver-main\Server`).
2. Then change `serverscripts.jsonc` file, or more precisely, add the script file in "filename" and set console name in "name". **(Watch image)**

![image](https://github.com/user-attachments/assets/74ae794c-dff2-4d11-8b71-df5af6dcbdea)

3. Start your server and check the script message:

![image](https://github.com/user-attachments/assets/1be9236a-da21-4a30-b3ea-46c7cbc09756)

   
# How can I use script?
For example you create `void KillAllPlayers()` function. It will kill all players. But you don't have arguments for your players. With `connPlayers.as` you can use loop and set variable for your players and kill your players.

```AngelScript
void KillAllPlayers()
{
    for (int i = 0; i < connPlayers.size(); ++i)
    {
        Player player = connPlayers[i];
        player.Kill();
    }
}   
```
