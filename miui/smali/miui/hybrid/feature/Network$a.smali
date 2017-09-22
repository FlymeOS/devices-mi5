.class Lmiui/hybrid/feature/Network$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hybrid/feature/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic zt:Lmiui/hybrid/feature/Network;


# direct methods
.method private constructor <init>(Lmiui/hybrid/feature/Network;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lmiui/hybrid/feature/Network$a;->zt:Lmiui/hybrid/feature/Network;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/feature/Network$1;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network$a;-><init>(Lmiui/hybrid/feature/Network;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 78
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 80
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_0
    const-string v2, "connected"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 83
    iget-object v0, p0, Lmiui/hybrid/feature/Network$a;->zt:Lmiui/hybrid/feature/Network;

    invoke-static {v0}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;

    move-result-object v0

    new-instance v2, Lmiui/hybrid/Response;

    invoke-direct {v2, v1}, Lmiui/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_1
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "Network"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
