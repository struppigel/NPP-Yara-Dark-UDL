
# Notepad++ Yara Dark UDL

Notepad++ User Defined Language for Yara rules that is meant to be used for dark themes.

My main motivation is to have a UDL that prevents errors when writing Yara rules. 

E.g., if you have the pattern `$btc = "[13][a-zA-Z0-9]{27,34}"` did you really mean to search for the regex or for the bitcoin addresses?

## Screenshot:

![Screenshot](yara%20udl%20dark%20screenhot.png)

## How to use

Open Language -> User Defined Language and import the .xml file.
You may have to restart Notepad++ to see the language in the menu.

Alternatively copy the xml into `%APPDATA%\Notepad++\userDefineLangs`
