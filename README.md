# GodotIRC
An IRC bot in Godot, based on code from https://github.com/TheDuriel/GDTwitch .

Runs a basic IRC bot.

Allows for outputting, parsing, and sending messages.

This is a plugin that adds a GodotIRC node, which connects as a user to a specific IRC channel when .start() is executed.

Usage:
* Load the addon "GodotIRC"
* Add the new "GodotIRC" node to a scene in your project.
* Set:
* CLIENT_PASSWORD to 'none', unless you have a password.
* CLIENT_ID to your bot's username.
* CLIENT_NICK to your bot's nickname.
* IRC_CHANNEL to the name of the channel you want to connect to.
* Call start() on your new node.

Also:
* Send messages with `$GodotIRC.Client.send_message()`
* Receive messages with GodotIRC's "message_received" signal.

You can optionally enable PRINT_LOG to have the raw stream printed to your console.

Custom commands are registered using the template format. Arguments are Str: Function, Array: [String: Alias], Bool: Owner_Only (Only channel owner may use this command.)

To hook the output to a RichTextLabel of your choice, use one of the provided signals.
