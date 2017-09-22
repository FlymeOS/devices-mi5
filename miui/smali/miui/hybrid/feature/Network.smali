.class public Lmiui/hybrid/feature/Network;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/hybrid/HybridFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hybrid/feature/Network$a;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Network"

.field private static final zl:Ljava/lang/String; = "getType"

.field private static final zm:Ljava/lang/String; = "enableNotification"

.field private static final zn:Ljava/lang/String; = "disableNotification"

.field private static final zo:Ljava/lang/String; = "metered"

.field private static final zp:Ljava/lang/String; = "connected"


# instance fields
.field private yX:Lmiui/hybrid/Callback;

.field private zq:Landroid/content/IntentFilter;

.field private zr:Lmiui/hybrid/feature/Network$a;

.field private zs:Lmiui/hybrid/LifecycleListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lmiui/hybrid/feature/Network;->zq:Landroid/content/IntentFilter;

    .line 93
    iget-object v0, p0, Lmiui/hybrid/feature/Network;->zq:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method static synthetic a(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/hybrid/feature/Network;->yX:Lmiui/hybrid/Callback;

    return-object v0
.end method

.method private a(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 115
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 117
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    .line 118
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 120
    :try_start_0
    const-string v2, "metered"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    new-instance v0, Lmiui/hybrid/Response;

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v2, "Network"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Lmiui/hybrid/NativeInterface;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lmiui/hybrid/feature/Network;->zr:Lmiui/hybrid/feature/Network$a;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lmiui/hybrid/feature/Network;->zs:Lmiui/hybrid/LifecycleListener;

    invoke-virtual {p1, v1}, Lmiui/hybrid/NativeInterface;->removeLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 131
    iget-object v1, p0, Lmiui/hybrid/feature/Network;->zr:Lmiui/hybrid/feature/Network$a;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/hybrid/feature/Network;->zr:Lmiui/hybrid/feature/Network$a;

    .line 134
    :cond_0
    return-void
.end method

.method static synthetic a(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/NativeInterface;)V

    return-void
.end method

.method private b(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/NativeInterface;)V

    .line 140
    invoke-virtual {v0}, Lmiui/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 141
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getCallback()Lmiui/hybrid/Callback;

    move-result-object v2

    iput-object v2, p0, Lmiui/hybrid/feature/Network;->yX:Lmiui/hybrid/Callback;

    .line 142
    new-instance v2, Lmiui/hybrid/feature/Network$a;

    invoke-direct {v2, p0, v4}, Lmiui/hybrid/feature/Network$a;-><init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/feature/Network$1;)V

    iput-object v2, p0, Lmiui/hybrid/feature/Network;->zr:Lmiui/hybrid/feature/Network$a;

    .line 143
    iget-object v2, p0, Lmiui/hybrid/feature/Network;->zr:Lmiui/hybrid/feature/Network$a;

    iget-object v3, p0, Lmiui/hybrid/feature/Network;->zq:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    new-instance v1, Lmiui/hybrid/feature/Network$1;

    invoke-direct {v1, p0, v0}, Lmiui/hybrid/feature/Network$1;-><init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V

    iput-object v1, p0, Lmiui/hybrid/feature/Network;->zs:Lmiui/hybrid/LifecycleListener;

    .line 160
    iget-object v1, p0, Lmiui/hybrid/feature/Network;->zs:Lmiui/hybrid/LifecycleListener;

    invoke-virtual {v0, v1}, Lmiui/hybrid/NativeInterface;->addLifecycleListener(Lmiui/hybrid/LifecycleListener;)V

    .line 161
    return-object v4
.end method

.method private c(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getNativeInterface()Lmiui/hybrid/NativeInterface;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/NativeInterface;)V

    .line 166
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getInvocationMode(Lmiui/hybrid/Request;)Lmiui/hybrid/HybridFeature$Mode;
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v1, "getType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    .line 179
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const-string v1, "enableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->CALLBACK:Lmiui/hybrid/HybridFeature$Mode;

    goto :goto_0

    .line 176
    :cond_1
    const-string v1, "disableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    sget-object v0, Lmiui/hybrid/HybridFeature$Mode;->SYNC:Lmiui/hybrid/HybridFeature$Mode;

    goto :goto_0

    .line 179
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p1}, Lmiui/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "getType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-string v1, "enableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->b(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_1
    const-string v1, "disableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0, p1}, Lmiui/hybrid/feature/Network;->c(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_2
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xcc

    const-string v2, "no such action"

    invoke-direct {v0, v1, v2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
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
    .line 98
    return-void
.end method
