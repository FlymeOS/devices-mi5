.class public final Lcom/nxp/eseclient/LtsmService;
.super Ljava/lang/Object;
.source "LtsmService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LtsmService"

.field private static mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

.field private static mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

.field private static mEseManager:Lcom/nxp/eseclient/EseClientManager;

.field private static mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

.field private static mLtsmService:Lcom/nxp/eseclient/LtsmService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/nxp/eseclient/LtsmService;->mLtsmService:Lcom/nxp/eseclient/LtsmService;

    return-void
.end method

.method public constructor <init>(Lcom/nxp/intf/INxpExtrasService;)V
    .locals 0
    .param p1, "NxpExtrasServiceIntf"    # Lcom/nxp/intf/INxpExtrasService;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sput-object p1, Lcom/nxp/eseclient/LtsmService;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    .line 39
    return-void
.end method

.method public static declared-synchronized close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const-class v3, Lcom/nxp/eseclient/LtsmService;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    invoke-interface {v2, p0, p1}, Lcom/nxp/intf/INxpExtrasService;->close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1

    .line 90
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "e"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const-string v2, "LtsmService"

    const-string v4, "LTSM close secure element successful"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v3

    return-object v1

    .line 94
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v4, "LTSM close secure elemnt failed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "LtsmService"

    const-string v4, "Exception in LTSM secure element close connection"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Exception in LTSM  close connection()"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized createLtsmServiceInterface()Lcom/nxp/eseclient/LtsmService;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    const-class v3, Lcom/nxp/eseclient/LtsmService;

    monitor-enter v3

    const/4 v0, 0x0

    .line 46
    .local v0, "NxpExtrasServiceIntf":Lcom/nxp/intf/INxpExtrasService;
    :try_start_0
    invoke-static {}, Lcom/nxp/eseclient/EseClientManager;->getInstance()Lcom/nxp/eseclient/EseClientManager;

    move-result-object v2

    sput-object v2, Lcom/nxp/eseclient/LtsmService;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    .line 47
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    invoke-virtual {v2}, Lcom/nxp/eseclient/EseClientManager;->initialize()V

    .line 48
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/nxp/eseclient/EseClientManager;->getSeInterface(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 49
    .local v1, "seMedium":Ljava/lang/Integer;
    const-string v2, "LtsmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected P61 interface ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v2, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    invoke-direct {v2}, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;-><init>()V

    sput-object v2, Lcom/nxp/eseclient/LtsmService;->mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    .line 51
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;->getEseClientServicesAdapterInstance(I)Lcom/nxp/eseclient/EseClientServicesAdapter;

    move-result-object v2

    sput-object v2, Lcom/nxp/eseclient/LtsmService;->mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    .line 52
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    invoke-virtual {v2}, Lcom/nxp/eseclient/EseClientServicesAdapter;->getNxpExtrasService()Lcom/nxp/intf/INxpExtrasService;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    new-instance v2, Lcom/nxp/eseclient/LtsmService;

    invoke-direct {v2, v0}, Lcom/nxp/eseclient/LtsmService;-><init>(Lcom/nxp/intf/INxpExtrasService;)V

    sput-object v2, Lcom/nxp/eseclient/LtsmService;->mLtsmService:Lcom/nxp/eseclient/LtsmService;

    .line 55
    const-string v2, "LtsmService"

    const-string v4, "LtsmService is retrived"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mLtsmService:Lcom/nxp/eseclient/LtsmService;

    if-nez v2, :cond_1

    .line 58
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Interface not available"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    :cond_1
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mLtsmService:Lcom/nxp/eseclient/LtsmService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 45
    .end local v1    # "seMedium":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const-class v3, Lcom/nxp/eseclient/LtsmService;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    invoke-interface {v2, p0, p1}, Lcom/nxp/intf/INxpExtrasService;->open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1

    .line 71
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "e"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const-string v2, "LtsmService"

    const-string v4, "LTSM Open secure element successful"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v3

    return-object v1

    .line 75
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v4, "LTSM open secure elemnt failed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "LtsmService"

    const-string v4, "Exception in LTSM secure element open connection"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Exception in LTSM  open connection()"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const-class v3, Lcom/nxp/eseclient/LtsmService;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    invoke-interface {v2, p0, p1}, Lcom/nxp/intf/INxpExtrasService;->transceive(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v1

    .line 109
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "e"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const-string v2, "LtsmService"

    const-string v4, "LTSM transceive secure element successful"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit v3

    return-object v1

    .line 113
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v4, "LTSM transceive secure elemnt failed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "LtsmService"

    const-string v4, "Exception in LTSM secure element transceive connection"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    new-instance v2, Ljava/io/IOException;

    const-string v4, "RemoteException in LTSM  transceive connection()"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
