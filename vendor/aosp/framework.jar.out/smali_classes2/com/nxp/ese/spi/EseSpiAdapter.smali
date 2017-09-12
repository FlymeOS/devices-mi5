.class public final Lcom/nxp/ese/spi/EseSpiAdapter;
.super Ljava/lang/Object;
.source "EseSpiAdapter.java"


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.ese.spi.action.ADAPTER_STATE_CHANGED"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.ese.spi.extra.ADAPTER_STATE"

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "SPI"

.field static eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

.field static sIsInitialized:Z

.field static sNullContextSpiAdapter:Lcom/nxp/ese/spi/EseSpiAdapter;

.field static sSpiAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/nxp/ese/spi/EseSpiAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nxp/ese/spi/EseSpiAdapter;->sIsInitialized:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nxp/ese/spi/EseSpiAdapter;->sSpiAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/nxp/ese/spi/EseSpiAdapter;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method private static getServiceInterface()Lcom/nxp/ese/spi/IEseSpiAdapter;
    .locals 2

    .prologue
    .line 91
    const-string v1, "spi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 92
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 95
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nxp/ese/spi/IEseSpiAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getSpiAdapter(Landroid/content/Context;)Lcom/nxp/ese/spi/EseSpiAdapter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const-class v2, Lcom/nxp/ese/spi/EseSpiAdapter;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sIsInitialized:Z

    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Lcom/nxp/ese/spi/EseSpiAdapter;->getServiceInterface()Lcom/nxp/ese/spi/IEseSpiAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    .line 155
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    if-nez v1, :cond_0

    .line 156
    const-string v1, "SPI"

    const-string v3, "could not retrieve SPI service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 160
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sIsInitialized:Z

    .line 162
    :cond_1
    if-nez p0, :cond_4

    .line 163
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sNullContextSpiAdapter:Lcom/nxp/ese/spi/EseSpiAdapter;

    if-nez v1, :cond_2

    .line 166
    :cond_2
    sget-object v0, Lcom/nxp/ese/spi/EseSpiAdapter;->sNullContextSpiAdapter:Lcom/nxp/ese/spi/EseSpiAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :cond_3
    :goto_0
    monitor-exit v2

    return-object v0

    .line 168
    :cond_4
    :try_start_2
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sSpiAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nxp/ese/spi/EseSpiAdapter;

    .line 169
    .local v0, "adapter":Lcom/nxp/ese/spi/EseSpiAdapter;
    if-nez v0, :cond_3

    .line 170
    new-instance v0, Lcom/nxp/ese/spi/EseSpiAdapter;

    .end local v0    # "adapter":Lcom/nxp/ese/spi/EseSpiAdapter;
    invoke-direct {v0, p0}, Lcom/nxp/ese/spi/EseSpiAdapter;-><init>(Landroid/content/Context;)V

    .line 171
    .restart local v0    # "adapter":Lcom/nxp/ese/spi/EseSpiAdapter;
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sSpiAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static hasSpiFeature()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 122
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_0

    .line 123
    const-string v3, "SPI"

    const-string v4, "Cannot get package manager, assuming no SPI feature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return v2

    .line 128
    :cond_0
    :try_start_0
    const-string v3, "android.hardware.ese.spi"

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SPI"

    const-string v4, "Package manager query failed, assuming no SPI feature"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 99
    const-string v1, "SPI"

    const-string v2, "SPI service dead - attempting to recover"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-static {}, Lcom/nxp/ese/spi/EseSpiAdapter;->getServiceInterface()Lcom/nxp/ese/spi/IEseSpiAdapter;

    move-result-object v0

    .line 101
    .local v0, "service":Lcom/nxp/ese/spi/IEseSpiAdapter;
    if-nez v0, :cond_0

    .line 102
    const-string v1, "SPI"

    const-string v2, "could not retrieve SPI service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    sput-object v0, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    goto :goto_0
.end method

.method public disable()Z
    .locals 3

    .prologue
    .line 293
    :try_start_0
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/nxp/ese/spi/IEseSpiAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 296
    :goto_0
    return v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/EseSpiAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 296
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enable()Z
    .locals 2

    .prologue
    .line 267
    :try_start_0
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-interface {v1}, Lcom/nxp/ese/spi/IEseSpiAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/EseSpiAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 270
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public exchangeData(Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    :try_start_0
    sget-object v2, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    if-eqz v2, :cond_0

    .line 195
    const-string v2, "SPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spiService present  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    sget-object v2, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-interface {v2, p1, p2}, Lcom/nxp/ese/spi/IEseSpiAdapter;->transceive(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 198
    .local v1, "result":[B
    return-object v1

    .line 199
    .end local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SPI"

    const-string v3, "tranceive failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    new-instance v2, Ljava/io/IOException;

    const-string v3, "tranceive failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 216
    :try_start_0
    sget-object v2, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-interface {v2}, Lcom/nxp/ese/spi/IEseSpiAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 217
    const/4 v1, 0x1

    .line 224
    :cond_0
    :goto_0
    return v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/EseSpiAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 223
    const-string v2, "SPI"

    const-string v3, "Enable failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()Z
    .locals 2

    .prologue
    .line 244
    :try_start_0
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-interface {v1}, Lcom/nxp/ese/spi/IEseSpiAdapter;->reset()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 247
    :goto_0
    return v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/EseSpiAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 247
    const/4 v1, 0x0

    goto :goto_0
.end method
