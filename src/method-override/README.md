
This extension makes non-`GET` and `POST` requests use a `POST` with the `X-HTTP-Method-Override` header set to the
actual HTTP method.  This is necessary when dealing with some firewall or proxy situations.

## Install

```html
<script src="https://unpkg.com/htmx-ext-method-override/method-override.js@2.0.0"></script>
```

### Usage

```html
<body hx-ext="method-override">
   <button hx-put="/update">
     This request will be made as a POST w/ the X-HTTP-Method-Override Header Set
</button>
</body>
```
