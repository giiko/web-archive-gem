# WebArchive

- Archive target url
- Get archived url of target url

```
$ gem i web-archive
```

## Example

```
require 'web_archive'
WebArchive.save!(target_url)  #=> url string
WebArchive.latest(target_url) #=> url string or nil
WebArchive.oldest(target_url) #=> url string or nil
```

