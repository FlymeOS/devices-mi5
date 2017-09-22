.class public Lcom/miui/internal/hybrid/JsonConfigParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/hybrid/ConfigParser;


# static fields
.field private static final eA:Ljava/lang/String; = "permissions"

.field private static final eB:Ljava/lang/String; = "origin"

.field private static final eC:Ljava/lang/String; = "subdomains"

.field private static final eu:Ljava/lang/String; = "timestamp"

.field private static final ev:Ljava/lang/String; = "vendor"

.field private static final ew:Ljava/lang/String; = "features"

.field private static final ex:Ljava/lang/String; = "params"

.field private static final ey:Ljava/lang/String; = "name"

.field private static final ez:Ljava/lang/String; = "value"

.field private static final fi:Ljava/lang/String; = "signature"

.field private static final fj:Ljava/lang/String; = "content"


# instance fields
.field private fk:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/internal/hybrid/JsonConfigParser;->fk:Lorg/json/JSONObject;

    .line 37
    return-void
.end method

.method private a(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/hybrid/Config;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    .prologue
    .line 108
    return-object p1
.end method

.method private a(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    const-string v0, "features"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 77
    if-eqz v3, :cond_1

    move v0, v1

    .line 78
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 79
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 80
    new-instance v4, Lcom/miui/internal/hybrid/Feature;

    invoke-direct {v4}, Lcom/miui/internal/hybrid/Feature;-><init>()V

    .line 81
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/internal/hybrid/Feature;->setName(Ljava/lang/String;)V

    .line 82
    const-string v5, "params"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 83
    if-eqz v5, :cond_0

    move v2, v1

    .line 84
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 85
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 86
    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/miui/internal/hybrid/Feature;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {p1, v4}, Lcom/miui/internal/hybrid/Config;->addFeature(Lcom/miui/internal/hybrid/Feature;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method

.method private b(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 98
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 99
    new-instance v3, Lcom/miui/internal/hybrid/Permission;

    invoke-direct {v3}, Lcom/miui/internal/hybrid/Permission;-><init>()V

    .line 100
    const-string v4, "origin"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/internal/hybrid/Permission;->setUri(Ljava/lang/String;)V

    .line 101
    const-string v4, "subdomains"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/miui/internal/hybrid/Permission;->setApplySubdomains(Z)V

    .line 102
    invoke-virtual {p1, v3}, Lcom/miui/internal/hybrid/Config;->addPermission(Lcom/miui/internal/hybrid/Permission;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public static createFromJSONObject(Lorg/json/JSONObject;)Lcom/miui/internal/hybrid/JsonConfigParser;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/miui/internal/hybrid/JsonConfigParser;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/JsonConfigParser;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/miui/internal/hybrid/JsonConfigParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .prologue
    .line 40
    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    invoke-static {v0}, Lcom/miui/internal/hybrid/JsonConfigParser;->createFromJSONObject(Lorg/json/JSONObject;)Lcom/miui/internal/hybrid/JsonConfigParser;

    move-result-object v0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Lcom/miui/internal/hybrid/HybridException;

    const/16 v2, 0xc9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public parse(Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/miui/internal/hybrid/Config;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/internal/hybrid/HybridException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/miui/internal/hybrid/Config;

    invoke-direct {v0}, Lcom/miui/internal/hybrid/Config;-><init>()V

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/hybrid/JsonConfigParser;->fk:Lorg/json/JSONObject;

    .line 59
    new-instance v2, Lcom/miui/internal/hybrid/Security;

    invoke-direct {v2}, Lcom/miui/internal/hybrid/Security;-><init>()V

    .line 60
    const-string v3, "signature"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/internal/hybrid/Security;->setSignature(Ljava/lang/String;)V

    .line 61
    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/internal/hybrid/Security;->setTimestamp(J)V

    .line 62
    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Config;->setSecurity(Lcom/miui/internal/hybrid/Security;)V

    .line 64
    const-string v2, "vendor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Config;->setVendor(Ljava/lang/String;)V

    .line 65
    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/internal/hybrid/Config;->setContent(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/JsonConfigParser;->a(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V

    .line 68
    invoke-direct {p0, v0, v1}, Lcom/miui/internal/hybrid/JsonConfigParser;->b(Lcom/miui/internal/hybrid/Config;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-direct {p0, v0, p1}, Lcom/miui/internal/hybrid/JsonConfigParser;->a(Lcom/miui/internal/hybrid/Config;Ljava/util/Map;)Lcom/miui/internal/hybrid/Config;

    move-result-object v0

    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Lcom/miui/internal/hybrid/HybridException;

    const/16 v2, 0xc9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/miui/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
