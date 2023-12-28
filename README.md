# Simple http(s) client

A simple HTTP(S) client in Ruby to query any RESTful API.

---

Will be Implemented Request methods :

  * GET
  * POST
  * PUT
  * DELETE

Need to be implemented :

  * HEAD
  * TRACE
  * OPTIONS
  * CONNECT
  * PATCH

---

### Request methods cheat-sheet

| HTTP Method | RFC                                         | Request has Body | Response has body | Safe | Idempotent | Cacheable |
| ----------- | ------------------------------------------- | ---------------- | ----------------- | ---- | ---------- | --------- |
| GET         | [7231](https://tools.ietf.org/html/rfc7231) | No               | Yes               | Yes  | Yes        | Yes       |
| HEAD        | [7231](https://tools.ietf.org/html/rfc7231) | No               | No                | Yes  | Yes        | Yes       |
| POST        | [7231](https://tools.ietf.org/html/rfc7231) | Yes              | Yes               | No   | No         | Yes       |
| PUT         | [7231](https://tools.ietf.org/html/rfc7231) | Yes              | Yes               | No   | Yes        | No        |
| DELETE      | [7231](https://tools.ietf.org/html/rfc7231) | No               | Yes               | No   | Yes        | No        |
| PATCH       | [5789](https://tools.ietf.org/html/rfc5789) | Yes              | Yes               | No   | No         | Yes       |
| CONNECT     | [7231](https://tools.ietf.org/html/rfc7231) | Yes              | Yes               | No   | No         | No        |
| TRACE       | [7231](https://tools.ietf.org/html/rfc7231) | No               | Yes               | Yes  | Yes        | No        |
| OPTIONS     | [7231](https://tools.ietf.org/html/rfc7231) | Optional         | Yes               | Yes  | Yes        | No        |


### Some "Request Methods" explanations

#### HEAD

> The HEAD method asks for a response identical to that of a GET request, but without the response body. This is useful for retrieving meta-information written in response headers, without having to transport the entire content

#### TRACE

> The TRACE method echoes the received request so that a client can see what (if any) changes or additions have been made by intermediate servers.

#### OPTIONS

> The OPTIONS method returns the HTTP methods that the server supports for the specified URL. This can be used to check the functionality of a web server by requesting '*' instead of a specific resource.

#### CONNECT

> The CONNECT method converts the request connection to a transparent TCP/IP tunnel, usually to facilitate SSL-encrypted communication (HTTPS) through an unencrypted HTTP proxy.
