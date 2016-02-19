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


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/web_archive.

