.class public Lmiui/hybrid/feature/Geolocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hybrid/feature/Geolocation$1;,
        Lmiui/hybrid/feature/Geolocation$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HybridGeolocation"

.field private static final ia:Ljava/lang/String; = "type"

.field private static final yT:Ljava/lang/String; = "enableListener"

.field private static final yU:Ljava/lang/String; = "get"

.field private static final yV:Ljava/lang/String; = "disableListener"


# instance fields
.field private yW:Ljava/lang/String;

.field private yX:Lmiui/hybrid/Callback;

.field private yY:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "network"

    iput-object v0, p0, Lmiui/hybrid/feature/Geolocation;->yW:Ljava/lang/String;

    .line 155
    return-void
.end method

.method static synthetic a(Lmiui/hybrid/feature/Geolocation;)Lmiui/hybrid/Callback;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->yX:Lmiui/hybrid/Callback;

    return-object v0
.end method

.method private a(Landroid/location/Location;)Lmiui/hybrid/Response;
    .locals 4

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    const-string v0, "HybridGeolocation"

    const-string v1, "response with valid location."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_0
    const-string v0, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 144
    const-string v0, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    new-instance v0, Lmiui/hybrid/Response;

    const/4 v2, 0x3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 151
    :goto_1
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 150
    :cond_0
    const-string v0, "HybridGeolocation"

    const-string v1, "error: response location with null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc8

    const-string v2, "no location"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 109
    invoke-virtual {p2}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v0

    iput-object v0, p0, Lmiui/hybrid/feature/Geolocation;->yX:Lmiui/hybrid/Callback;

    .line 111
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->yY:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lmiui/hybrid/feature/Geolocation$a;

    invoke-direct {v0, p0, v6}, Lmiui/hybrid/feature/Geolocation$a;-><init>(Lmiui/hybrid/feature/Geolocation;Lmiui/hybrid/feature/Geolocation$1;)V

    iput-object v0, p0, Lmiui/hybrid/feature/Geolocation;->yY:Landroid/location/LocationListener;

    .line 113
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 114
    iget-object v1, p0, Lmiui/hybrid/feature/Geolocation;->yW:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lmiui/hybrid/feature/Geolocation;->yY:Landroid/location/LocationListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 115
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 118
    :cond_0
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->yW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lmiui/hybrid/feature/Geolocation;->yX:Lmiui/hybrid/Callback;

    invoke-direct {p0, v0}, Lmiui/hybrid/feature/Geolocation;->a(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 120
    return-object v6
.end method

.method static synthetic a(Lmiui/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiui/hybrid/Response;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Geolocation;->a(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->yW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 125
    invoke-direct {p0, v0}, Lmiui/hybrid/feature/Geolocation;->a(Landroid/location/Location;)Lmiui/hybrid/Response;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->yY:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lmiui/hybrid/feature/Geolocation;->yY:Landroid/location/LocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 131
    iput-object v4, p0, Lmiui/hybrid/feature/Geolocation;->yY:Landroid/location/LocationListener;

    .line 133
    :cond_0
    iput-object v4, p0, Lmiui/hybrid/feature/Geolocation;->yX:Lmiui/hybrid/Callback;

    .line 134
    invoke-virtual {p2}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/Response;

    const/4 v2, 0x0

    const-string v3, "remove"

    invoke-direct {v1, v2, v3}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 135
    return-object v4
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 2

    .prologue
    .line 180
    const-string v0, "get"

    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    .line 183
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    goto :goto_0
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v0, "HybridGeolocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke with action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 97
    const-string v2, "enableListener"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-direct {p0, v0, p1}, Lmiui/hybrid/feature/Geolocation;->a(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const-string v2, "get"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-direct {p0, v0, p1}, Lmiui/hybrid/feature/Geolocation;->b(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_1
    const-string v2, "disableListener"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-direct {p0, v0, p1}, Lmiui/hybrid/feature/Geolocation;->c(Landroid/location/LocationManager;Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_2
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xcc

    const-string v2, "no such action"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "gps"

    iput-object v0, p0, Lmiui/hybrid/feature/Geolocation;->yW:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method
