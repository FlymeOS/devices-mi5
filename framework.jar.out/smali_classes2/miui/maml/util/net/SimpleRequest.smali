.class public final Lmiui/maml/util/net/SimpleRequest;
.super Ljava/lang/Object;
.source "SimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/net/SimpleRequest$StreamContent;,
        Lmiui/maml/util/net/SimpleRequest$MapContent;,
        Lmiui/maml/util/net/SimpleRequest$StringContent;,
        Lmiui/maml/util/net/SimpleRequest$HeaderContent;
    }
.end annotation


# static fields
.field private static final CER_12306:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICmjCCAgOgAwIBAgIIbyZr5/jKH6QwDQYJKoZIhvcNAQEFBQAwRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMB4XDTA5MDUyNTA2NTYwMFoXDTI5MDUyMDA2NTYwMFowRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDMpbNeb34p0GvLkZ6t72/OOba4mX2K/eZRWFfnuk8e5jKDH+9BgCb29bSotqPqTbxXWPxIOz8EjyUO3bfR5pQ8ovNTOlks2rS5BdMhoi4sUjCKi5ELiqtyww/XgY5iFqv6D4Pw9QvOUcdRVSbPWo1DwMmH75It6pk/rARIFHEjWwIDAQABo4GOMIGLMB8GA1UdIwQYMBaAFHletne34lKDQ+3HUYhMY4UsAENYMAwGA1UdEwQFMAMBAf8wLgYDVR0fBCcwJTAjoCGgH4YdaHR0cDovLzE5Mi4xNjguOS4xNDkvY3JsMS5jcmwwCwYDVR0PBAQDAgH+MB0GA1UdDgQWBBR5XrZ3t+JSg0Ptx1GITGOFLABDWDANBgkqhkiG9w0BAQUFAAOBgQDGrAm2U/of1LbOnG2bnnQtgcVaBXiVJF8LKPaV23XQ96HU8xfgSZMJS6U00WHAI7zp0q208RSUft9wDq9ee///VOhzR6Tebg9QfyPSohkBrhXQenvQog555S+C3eJAAVeNCTeMS3N/M5hzBRJAoffn3qoYdAO1Q8bTguOi+2849A==\n-----END CERTIFICATE-----"

.field private static final DEBUG:Z = false

.field private static final HOST_12306:Ljava/lang/String; = "kyfw.12306.cn"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field private static final PARAM_IGNORE_12306_CA:Ljava/lang/String; = "ignore12306ca"

.field private static final TIMEOUT:I = 0x7530

.field public static final UTF8:Ljava/lang/String; = "utf-8"

.field private static final log:Ljava/util/logging/Logger;

.field private static sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lmiui/maml/util/net/SimpleRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    return-void
.end method

.method protected static appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p0, :cond_0

    .line 82
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "origin is not allowed null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "urlBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 86
    const-string v2, "utf-8"

    invoke-static {p1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "paramPart":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 89
    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .end local v0    # "paramPart":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 92
    .restart local v0    # "paramPart":Ljava/lang/String;
    :cond_2
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected static convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 7
    .param p0, "stringContent"    # Lmiui/maml/util/net/SimpleRequest$StringContent;

    .prologue
    const/4 v5, 0x0

    .line 332
    if-nez p0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-object v5

    .line 335
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "bodyString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 338
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v4, "jsonObject":Lorg/json/JSONObject;
    move-object v3, v4

    .line 342
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-eqz v3, :cond_0

    .line 345
    invoke-static {v3}, Lmiui/maml/util/net/ObjectUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 347
    .local v1, "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lmiui/maml/util/net/SimpleRequest$MapContent;

    invoke-direct {v5, v1}, Lmiui/maml/util/net/SimpleRequest$MapContent;-><init>(Ljava/util/Map;)V

    .line 348
    .local v5, "mapContent":Lmiui/maml/util/net/SimpleRequest$MapContent;
    invoke-virtual {p0}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmiui/maml/util/net/SimpleRequest$MapContent;->putHeaders(Ljava/util/Map;)V

    goto :goto_0

    .line 339
    .end local v1    # "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "mapContent":Lmiui/maml/util/net/SimpleRequest$MapContent;
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 239
    .local v0, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lmiui/maml/util/net/SimpleRequest$StreamContent;
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/maml/util/net/SimpleRequest$StreamContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/SimpleRequest;->needIgnore12306CA(Ljava/util/Map;)Z

    move-result v9

    .line 181
    .local v9, "ignore12306CA":Z
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    .line 182
    .local v10, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lmiui/maml/util/net/SimpleRequest;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "fullUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v6, v0, v9}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 184
    .local v3, "conn":Ljava/net/HttpURLConnection;
    if-nez v3, :cond_0

    .line 185
    sget-object v13, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v14, "failed to create URLConnection"

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 186
    new-instance v13, Ljava/io/IOException;

    const-string v14, "failed to create connection"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 189
    :cond_0
    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 190
    const-string v13, "GET"

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 192
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 193
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 195
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 197
    .local v2, "code":I
    const/16 v13, 0xc8

    if-ne v2, v13, :cond_1

    .line 198
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    .line 200
    .local v7, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/net/CookieManager;

    invoke-direct {v1}, Ljava/net/CookieManager;-><init>()V

    .line 201
    .local v1, "cm":Ljava/net/CookieManager;
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    .line 202
    .local v11, "reqUri":Ljava/net/URI;
    invoke-virtual {v1, v11, v7}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 203
    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    .line 204
    .local v8, "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {v8}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 205
    .local v4, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v7}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 206
    new-instance v12, Lmiui/maml/util/net/SimpleRequest$StreamContent;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Lmiui/maml/util/net/SimpleRequest$StreamContent;-><init>(Ljava/io/InputStream;)V

    .line 208
    .local v12, "streamContent":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    invoke-virtual {v12, v4}, Lmiui/maml/util/net/SimpleRequest$StreamContent;->putHeaders(Ljava/util/Map;)V

    .line 209
    return-object v12

    .line 210
    .end local v1    # "cm":Ljava/net/CookieManager;
    .end local v4    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v11    # "reqUri":Ljava/net/URI;
    .end local v12    # "streamContent":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    :cond_1
    const/16 v13, 0x193

    if-ne v2, v13, :cond_2

    .line 211
    new-instance v13, Lmiui/maml/util/net/AccessDeniedException;

    const-string v14, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct {v13, v14}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v2    # "code":I
    :catch_0
    move-exception v5

    .line 227
    .local v5, "e":Ljava/net/ProtocolException;
    new-instance v13, Ljava/io/IOException;

    const-string v14, "protocol error"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 213
    .end local v5    # "e":Ljava/net/ProtocolException;
    .restart local v2    # "code":I
    :cond_2
    const/16 v13, 0x191

    if-eq v2, v13, :cond_3

    const/16 v13, 0x190

    if-ne v2, v13, :cond_4

    .line 215
    :cond_3
    :try_start_1
    new-instance v13, Lmiui/maml/util/net/AuthenticationFailureException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "authentication failure for get, code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 218
    :cond_4
    sget-object v13, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http status error when GET: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 219
    const/16 v13, 0x12d

    if-ne v2, v13, :cond_5

    .line 220
    sget-object v13, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unexpected redirect from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Location"

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 224
    :cond_5
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unexpected http res code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .locals 20
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/SimpleRequest;->needIgnore12306CA(Ljava/util/Map;)Z

    move-result v11

    .line 113
    .local v11, "ignore12306CA":Z
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v13

    .line 114
    .local v13, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lmiui/maml/util/net/SimpleRequest;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "fullUrl":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v8, v0, v11}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 116
    .local v5, "conn":Ljava/net/HttpURLConnection;
    if-nez v5, :cond_0

    .line 117
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v18, "failed to create URLConnection"

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 118
    new-instance v17, Ljava/io/IOException;

    const-string v18, "failed to create connection"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 121
    :cond_0
    const/16 v17, 0x1

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 122
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 125
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 126
    .local v4, "code":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v4, v0, :cond_1

    const/16 v17, 0x12e

    move/from16 v0, v17

    if-ne v4, v0, :cond_4

    .line 128
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    .line 130
    .local v9, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/net/CookieManager;

    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    .line 131
    .local v3, "cm":Ljava/net/CookieManager;
    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v14

    .line 132
    .local v14, "reqUri":Ljava/net/URI;
    invoke-virtual {v3, v14, v9}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 133
    invoke-virtual {v3}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v10

    .line 134
    .local v10, "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-static {v10}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    .line 135
    .local v6, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v9}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v15, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3

    .line 138
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v18, 0x400

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 143
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 146
    .end local v12    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v17

    :try_start_2
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v17
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "cm":Ljava/net/CookieManager;
    .end local v4    # "code":I
    .end local v6    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v10    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v14    # "reqUri":Ljava/net/URI;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 170
    .local v7, "e":Ljava/net/ProtocolException;
    :try_start_3
    new-instance v17, Ljava/io/IOException;

    const-string v18, "protocol error"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    .end local v7    # "e":Ljava/net/ProtocolException;
    :catchall_1
    move-exception v17

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v17

    .line 146
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "cm":Ljava/net/CookieManager;
    .restart local v4    # "code":I
    .restart local v6    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v10    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v14    # "reqUri":Ljava/net/URI;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 149
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    :cond_3
    new-instance v16, Lmiui/maml/util/net/SimpleRequest$StringContent;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v16, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lmiui/maml/util/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v16

    .line 153
    .end local v3    # "cm":Ljava/net/CookieManager;
    .end local v6    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v10    # "httpCookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v14    # "reqUri":Ljava/net/URI;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :cond_4
    const/16 v17, 0x193

    move/from16 v0, v17

    if-ne v4, v0, :cond_5

    .line 154
    :try_start_5
    new-instance v17, Lmiui/maml/util/net/AccessDeniedException;

    const-string v18, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 156
    :cond_5
    const/16 v17, 0x191

    move/from16 v0, v17

    if-eq v4, v0, :cond_6

    const/16 v17, 0x190

    move/from16 v0, v17

    if-ne v4, v0, :cond_7

    .line 158
    :cond_6
    new-instance v17, Lmiui/maml/util/net/AuthenticationFailureException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "authentication failure for get, code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 161
    :cond_7
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http status error when GET: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 162
    const/16 v17, 0x12d

    move/from16 v0, v17

    if-ne v4, v0, :cond_8

    .line 163
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected redirect from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Location"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 167
    :cond_8
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected http res code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method protected static joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "sp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 444
    const/4 v7, 0x0

    .line 460
    :goto_0
    return-object v7

    .line 446
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 448
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 449
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 450
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-lez v2, :cond_1

    .line 451
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 454
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 455
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    add-int/lit8 v2, v2, 0x1

    .line 459
    goto :goto_1

    .line 460
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method protected static makeConn(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected static makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .locals 20
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "ignore12306CA"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 359
    .local v11, "req":Ljava/net/URL;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "req":Ljava/net/URL;
    .local v12, "req":Ljava/net/URL;
    move-object v11, v12

    .line 363
    .end local v12    # "req":Ljava/net/URL;
    .restart local v11    # "req":Ljava/net/URL;
    :goto_0
    if-nez v11, :cond_1

    .line 364
    sget-object v17, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v18, "failed to init url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 365
    const/4 v7, 0x0

    .line 439
    :cond_0
    :goto_1
    return-object v7

    .line 360
    :catch_0
    move-exception v8

    .line 361
    .local v8, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 368
    .end local v8    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 369
    .local v7, "conn":Ljava/net/HttpURLConnection;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 370
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 371
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 372
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 373
    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    if-eqz p1, :cond_2

    .line 377
    const-string v17, "Cookie"

    const-string v18, "; "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lmiui/maml/util/net/SimpleRequest;->joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_2
    const-string v17, "kyfw.12306.cn"

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    instance-of v0, v7, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 382
    move-object v0, v7

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v0

    .line 383
    .local v9, "httpsCon":Ljavax/net/ssl/HttpsURLConnection;
    const-string v17, "TLS"

    invoke-static/range {v17 .. v17}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v13

    .line 385
    .local v13, "sslContext":Ljavax/net/ssl/SSLContext;
    if-eqz p2, :cond_3

    .line 387
    new-instance v15, Lmiui/maml/util/net/SimpleRequest$1;

    invoke-direct {v15}, Lmiui/maml/util/net/SimpleRequest$1;-><init>()V

    .line 407
    .local v15, "tm":Ljavax/net/ssl/TrustManager;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v15, v16, v17

    .line 410
    .local v16, "tms":[Ljavax/net/ssl/TrustManager;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v13, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 432
    .end local v15    # "tm":Ljavax/net/ssl/TrustManager;
    .end local v16    # "tms":[Ljavax/net/ssl/TrustManager;
    :goto_2
    invoke-virtual {v13}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 436
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "httpsCon":Ljavax/net/ssl/HttpsURLConnection;
    .end local v13    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v8

    .line 437
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 439
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 412
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "httpsCon":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v13    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_3
    :try_start_2
    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 413
    .local v6, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v4, 0x0

    .line 415
    .local v4, "caInput":Ljava/io/InputStream;
    :try_start_3
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/ByteArrayInputStream;

    const-string v18, "-----BEGIN CERTIFICATE-----\nMIICmjCCAgOgAwIBAgIIbyZr5/jKH6QwDQYJKoZIhvcNAQEFBQAwRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMB4XDTA5MDUyNTA2NTYwMFoXDTI5MDUyMDA2NTYwMFowRzELMAkGA1UEBhMCQ04xKTAnBgNVBAoTIFNpbm9yYWlsIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MQ0wCwYDVQQDEwRTUkNBMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDMpbNeb34p0GvLkZ6t72/OOba4mX2K/eZRWFfnuk8e5jKDH+9BgCb29bSotqPqTbxXWPxIOz8EjyUO3bfR5pQ8ovNTOlks2rS5BdMhoi4sUjCKi5ELiqtyww/XgY5iFqv6D4Pw9QvOUcdRVSbPWo1DwMmH75It6pk/rARIFHEjWwIDAQABo4GOMIGLMB8GA1UdIwQYMBaAFHletne34lKDQ+3HUYhMY4UsAENYMAwGA1UdEwQFMAMBAf8wLgYDVR0fBCcwJTAjoCGgH4YdaHR0cDovLzE5Mi4xNjguOS4xNDkvY3JsMS5jcmwwCwYDVR0PBAQDAgH+MB0GA1UdDgQWBBR5XrZ3t+JSg0Ptx1GITGOFLABDWDANBgkqhkiG9w0BAQUFAAOBgQDGrAm2U/of1LbOnG2bnnQtgcVaBXiVJF8LKPaV23XQ96HU8xfgSZMJS6U00WHAI7zp0q208RSUft9wDq9ee///VOhzR6Tebg9QfyPSohkBrhXQenvQog555S+C3eJAAVeNCTeMS3N/M5hzBRJAoffn3qoYdAO1Q8bTguOi+2849A==\n-----END CERTIFICATE-----"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    .end local v4    # "caInput":Ljava/io/InputStream;
    .local v5, "caInput":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 418
    .local v3, "ca":Ljava/security/cert/Certificate;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    .line 419
    .local v10, "ks":Ljava/security/KeyStore;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 420
    const-string v17, "ca"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 422
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v14

    .line 424
    .local v14, "tf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v14, v10}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 426
    const/16 v17, 0x0

    invoke-virtual {v14}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 428
    :try_start_5
    invoke-static {v5}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    .end local v3    # "ca":Ljava/security/cert/Certificate;
    .end local v5    # "caInput":Ljava/io/InputStream;
    .end local v10    # "ks":Ljava/security/KeyStore;
    .end local v14    # "tf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v4    # "caInput":Ljava/io/InputStream;
    :catchall_0
    move-exception v17

    :goto_3
    invoke-static {v4}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v17
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .end local v4    # "caInput":Ljava/io/InputStream;
    .restart local v5    # "caInput":Ljava/io/InputStream;
    :catchall_1
    move-exception v17

    move-object v4, v5

    .end local v5    # "caInput":Ljava/io/InputStream;
    .restart local v4    # "caInput":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private static needIgnore12306CA(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "ignore12306ca"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "ignore12306ca"

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static parseCookies(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 466
    .local v1, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 467
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v5

    if-nez v5, :cond_0

    .line 468
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 471
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 479
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$MapContent;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$MapContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v0

    .line 328
    .local v0, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {v0}, Lmiui/maml/util/net/SimpleRequest;->convertStringToMap(Lmiui/maml/util/net/SimpleRequest$StringContent;)Lmiui/maml/util/net/SimpleRequest$MapContent;

    move-result-object v1

    return-object v1
.end method

.method public static postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .param p3, "readBody"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lmiui/maml/util/net/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/maml/util/net/AccessDeniedException;,
            Lmiui/maml/util/net/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/SimpleRequest;->needIgnore12306CA(Ljava/util/Map;)Z

    move-result v11

    .line 247
    .local v11, "ignore12306CA":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Lmiui/maml/util/net/SimpleRequest;->makeConn(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 248
    .local v6, "conn":Ljava/net/HttpURLConnection;
    if-nez v6, :cond_0

    .line 249
    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    const-string v19, "failed to create URLConnection"

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 250
    new-instance v18, Ljava/io/IOException;

    const-string v19, "failed to create connection"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 253
    :cond_0
    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 254
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 255
    const-string v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 258
    invoke-static/range {p1 .. p1}, Lmiui/maml/util/net/ObjectUtils;->mapToPairs(Ljava/util/Map;)Ljava/util/List;

    move-result-object v13

    .line 259
    .local v13, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v13, :cond_1

    .line 260
    const-string v18, "utf-8"

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "content":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 262
    .local v14, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    const-string v18, "utf-8"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 266
    :try_start_2
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 270
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "content":Ljava/lang/String;
    .end local v14    # "os":Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 271
    .local v5, "code":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v18, 0x12e

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    .line 273
    :cond_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .line 275
    .local v10, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/net/CookieManager;

    invoke-direct {v4}, Ljava/net/CookieManager;-><init>()V

    .line 276
    .local v4, "cm":Ljava/net/CookieManager;
    invoke-static/range {p0 .. p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v15

    .line 277
    .local v15, "reqUri":Ljava/net/URI;
    invoke-virtual {v4, v15, v10}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 278
    invoke-virtual {v4}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lmiui/maml/util/net/SimpleRequest;->parseCookies(Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 280
    .local v8, "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v10}, Lmiui/maml/util/net/ObjectUtils;->listToMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 281
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v16, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_4

    .line 283
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v19, 0x400

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 289
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 292
    .end local v12    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v18

    :try_start_4
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v18
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 315
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "cm":Ljava/net/CookieManager;
    .end local v5    # "code":I
    .end local v8    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v13    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15    # "reqUri":Ljava/net/URI;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 316
    .local v9, "e":Ljava/net/ProtocolException;
    :try_start_5
    new-instance v18, Ljava/io/IOException;

    const-string v19, "protocol error"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 318
    .end local v9    # "e":Ljava/net/ProtocolException;
    :catchall_1
    move-exception v18

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v18

    .line 266
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v13    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v18

    :try_start_6
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v18

    .line 292
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "content":Ljava/lang/String;
    .end local v14    # "os":Ljava/io/OutputStream;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "cm":Ljava/net/CookieManager;
    .restart local v5    # "code":I
    .restart local v8    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v15    # "reqUri":Ljava/net/URI;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 295
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    :cond_4
    new-instance v17, Lmiui/maml/util/net/SimpleRequest$StringContent;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lmiui/maml/util/net/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v17, "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lmiui/maml/util/net/SimpleRequest$StringContent;->putHeaders(Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 318
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v17

    .line 299
    .end local v4    # "cm":Ljava/net/CookieManager;
    .end local v8    # "cookieMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v15    # "reqUri":Ljava/net/URI;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "stringContent":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :cond_5
    const/16 v18, 0x193

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    .line 300
    :try_start_7
    new-instance v18, Lmiui/maml/util/net/AccessDeniedException;

    const-string v19, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct/range {v18 .. v19}, Lmiui/maml/util/net/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 302
    :cond_6
    const/16 v18, 0x191

    move/from16 v0, v18

    if-eq v5, v0, :cond_7

    const/16 v18, 0x190

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    .line 304
    :cond_7
    new-instance v18, Lmiui/maml/util/net/AuthenticationFailureException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "authentication failure for post, code: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lmiui/maml/util/net/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 307
    :cond_8
    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http status error when POST: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 308
    const/16 v18, 0x12d

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    .line 309
    sget-object v18, Lmiui/maml/util/net/SimpleRequest;->log:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "unexpected redirect from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Location"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 313
    :cond_9
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "unexpected http res code: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_7
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method
