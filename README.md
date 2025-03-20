access.log:
```
10.20.30.1 - - [04/Mar/2025:06:25:07 +0100] "GET / HTTP/1.1" 301 178 "-" "FortiGate (FortiOS 7.0) Chrome/ Safari/"
10.20.30.2 - - [04/Mar/2025:06:25:07 +0100] "GET //api/check/nip/123456789/bank-account/612030004531100123456789?date=2025-03-04 HTTP/1.1" 499 0 "-" "Google-HTTP-Java-Client/1.45.0 (gzip)"
10.20.30.2 - - [04/Mar/2025:06:25:07 +0100] "GET / HTTP/1.1" 200 54743 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:73.0) Gecko/20100101 Firefox/73.0"
10.20.30.2 - - [04/Mar/2025:06:25:07 +0100] "GET / HTTP/1.1" 301 178 "-" "FortiGate (FortiOS 7.0) Chrome/ Safari/"
10.20.30.3 - - [04/Mar/2025:06:25:07 +0100] "GET /api/search/nip/123456789?date=2025-03-04 HTTP/1.1" 200 106 "-" "WAPRO Client REST API"
10.20.30.4 - - [04/Mar/2025:06:25:07 +0100] "GET /api/search/nip/123456789?date=2025-02-18 HTTP/1.1" 200 1607 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36"
10.20.30.3 - - [04/Mar/2025:06:25:08 +0100] "GET /api/search/nip/123456789?date=2025-03-04 HTTP/1.1" 499 0 "-" "-"
10.20.30.1 - - [04/Mar/2025:06:25:08 +0100] "GET / HTTP/1.1" 301 178 "-" "FortiGate (FortiOS 7.0) Chrome/ Safari/"
```
```
cat access.log | cut -d " " -f 1 | sort | uniq -c
      2 10.20.30.1
      3 10.20.30.2
      2 10.20.30.3
      1 10.20.30.4

```
