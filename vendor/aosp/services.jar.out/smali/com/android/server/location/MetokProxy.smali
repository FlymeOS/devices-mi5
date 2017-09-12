.class public Lcom/android/server/location/MetokProxy;
.super Ljava/lang/Object;
.source "MetokProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final CMD_CAN_TAKEOVER:Ljava/lang/String; = "metok_takeover"

.field private static final D:Z

.field private static final EXTRA_CLIENT:Ljava/lang/String; = "metok_client"

.field private static final EXTRA_MAGIC:Ljava/lang/String; = "metok_magic"

.field private static final EXTRA_PROVIDER:Ljava/lang/String; = "metok_provider"

.field private static final MAGIC_METOK:Ljava/lang/String; = "metok"

.field private static final METOK_LP_PACKAGE:Ljava/lang/String; = "com.xiaomi.metok"

.field private static final METOK_PROVIDER:Ljava/lang/String; = "network"

.field private static final TAG:Ljava/lang/String; = "MetokProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mFused:Lcom/android/server/location/LocationProviderInterface;

.field private mGps:Lcom/android/server/location/LocationProviderInterface;

.field private mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNewServiceWork:Ljava/lang/Runnable;

.field private mNlp:Lcom/android/server/location/LocationProviderInterface;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mProviderToCalled:Ljava/lang/String;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mServiceWatcher:Lcom/android/server/location/MetokWatcher;

.field private mWorksource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/MetokProxy;->D:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 54
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;

    .line 151
    new-instance v0, Lcom/android/server/location/MetokProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/MetokProxy$1;-><init>(Lcom/android/server/location/MetokProxy;)V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mNewServiceWork:Ljava/lang/Runnable;

    .line 67
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mContext:Landroid/content/Context;

    .line 68
    const-string v0, "network"

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/android/server/location/MetokWatcher;

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/MetokProxy;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2, v2, p3}, Lcom/android/server/location/MetokWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    .line 70
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/server/location/MetokProxy;->D:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/MetokProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/MetokProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ProviderRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/MetokProxy;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ILocationProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/MetokProxy;)Lcom/android/server/location/MetokWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/location/MetokProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/MetokProxy;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object p1
.end method

.method private bind()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lcom/android/server/location/MetokProxy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 57
    new-instance v0, Lcom/android/server/location/MetokProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/MetokProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 58
    .local v0, "proxy":Lcom/android/server/location/MetokProxy;
    invoke-direct {v0}, Lcom/android/server/location/MetokProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    .end local v0    # "proxy":Lcom/android/server/location/MetokProxy;
    :goto_0
    return-object v0

    .line 61
    .restart local v0    # "proxy":Lcom/android/server/location/MetokProxy;
    :cond_0
    const-string v1, "MetokProxy"

    const-string v2, "failed to bind metok"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getService()Lcom/android/internal/location/ILocationProvider;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method private setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 258
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    goto :goto_0

    .line 260
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MetokProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "locaiton request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 262
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public canTakeOver(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "clientPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v2

    .line 93
    :cond_1
    const-string v3, "passive"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v1, "extras":Landroid/os/Bundle;
    :try_start_0
    const-string v3, "metok_magic"

    const-string v4, "metok"

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 100
    const-string v3, "metok_client"

    const-string v4, "utf-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 101
    const-string v3, "metok_provider"

    const-string v4, "utf-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-string v3, "metok_takeover"

    invoke-virtual {p0, v3, v1}, Lcom/android/server/location/MetokProxy;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    .line 109
    const/4 v2, 0x1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create bundle error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disable()V
    .locals 5

    .prologue
    .line 230
    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 231
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    .line 232
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 234
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 232
    .end local v1    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 237
    .restart local v1    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    :try_start_2
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->disable()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MetokProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MetokProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v4}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 302
    const-string v2, "REMOTE SERVICE"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 303
    const-string v2, " name="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 304
    const-string v2, " pkg="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v3}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 305
    const-string v2, " version="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v4}, Lcom/android/server/location/MetokWatcher;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 306
    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 308
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 309
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 310
    const-string v2, "service down (null)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 316
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "service down (RemoteException)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    const-string v2, "MetokProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "service down (Exception)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    const-string v2, "MetokProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v4}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 212
    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 213
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    .line 214
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 216
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 214
    .end local v1    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 219
    .restart local v1    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    :try_start_2
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->enable()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MetokProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MetokProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v4}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    monitor-exit v1

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 329
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 330
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 340
    :goto_0
    return v2

    .line 333
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 336
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStatusUpdateTime()J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 345
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 346
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 356
    :goto_0
    return-wide v2

    .line 349
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MetokProxy"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MetokProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v6}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    monitor-exit v1

    return v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public locationSanitized(Landroid/location/Location;)Landroid/location/Location;
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 117
    const/4 p1, 0x0

    .line 127
    .end local p1    # "location":Landroid/location/Location;
    :cond_0
    :goto_0
    return-object p1

    .line 120
    .restart local p1    # "location":Landroid/location/Location;
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "metok_magic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget-boolean v1, Lcom/android/server/location/MetokProxy;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "MetokProxy"

    const-string v2, "location from metok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 361
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 362
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 372
    :goto_0
    return v2

    .line 365
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 368
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFusedProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 0
    .param p1, "fused"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    .line 82
    return-void
.end method

.method public setGpsProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 0
    .param p1, "gps"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    .line 78
    return-void
.end method

.method public setNetworkProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 0
    .param p1, "nlp"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    .line 74
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 273
    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 274
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 275
    iput-object p2, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;

    .line 276
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    .line 278
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_1

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokProxy;->setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 276
    .end local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 283
    .restart local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_1
    const/4 v1, 0x0

    .line 285
    .local v1, "exception":Z
    :try_start_2
    invoke-interface {v2, p1, p2}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 295
    :goto_1
    if-eqz v1, :cond_0

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokProxy;->setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    const/4 v1, 0x1

    .line 293
    goto :goto_1

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public updateStatus(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    if-nez v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/server/location/MetokProxy;->enable()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/server/location/MetokProxy;->disable()V

    goto :goto_0
.end method
