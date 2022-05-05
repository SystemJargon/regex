## Examples of regex and wildcards with domains and URLs

* any subdomain of example.com ```(\.|^)example\.com$```
* any subdomain of example.net  ```(\.|^)example\.net$```
* ads as subdomain but not known TLD ```(\.|^)ads\.$```
* xxx as top-level-domain but not known subdomain nor domain ```(\.|^)\.xxx$```

Then you could try something like this, for keyword multi-string in the domain name.

```
(\.)(adult|ads|adverts|advertising|click|porn|sex|telemetry|tracking|tracing)$
```

More about this in my Pi-hole repo with regex [here](https://github.com/lz-eng/pi-hole/regex)

----

## Strip port numbers at end of URL

Regular Expression string:

```
:[\d]+$
```

----

## Strip down full URL to domain name

https://www.google.com/api?=login/someshit/0931750135145/

to be just

www.google.com

Usage could be for a sysadmin or someone to get just the domain name / subdomain needed for a task/action in role.

```
^http:..|^https:..|\/.*
```

Regex validated [here](https://regex101.com/r/7NVd2e/4)

Of course you could replace the text to be something else instead of url and domain strings (you get the picture I hope).


----

## Convert a URL list to EasyList format

Debian CLI: ```sed 's/^/||/' pihole-format.txt > easylist-format.txt```

In a text editor GUI try this:

(usually Ctrl+H on Windows for 'replace')
find string/what: ```^```
replace string/what: ```\1\||``` or ```||```
Enable Regular Expression, Tick Matches newline. Click Replace All
