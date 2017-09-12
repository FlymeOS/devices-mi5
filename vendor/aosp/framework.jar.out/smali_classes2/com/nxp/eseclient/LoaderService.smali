.class public final Lcom/nxp/eseclient/LoaderService;
.super Ljava/lang/Object;
.source "LoaderService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EseSpiLoaderService"

.field private static mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

.field private static mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

.field private static mEseManager:Lcom/nxp/eseclient/EseClientManager;

.field private static mLdrService:Lcom/nxp/eseclient/LoaderService;


# instance fields
.field private ILdrService:Lcom/nxp/intf/ILoaderService;

.field private setMedium:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/nxp/eseclient/LoaderService;->mLdrService:Lcom/nxp/eseclient/LoaderService;

    return-void
.end method

.method public constructor <init>(Lcom/nxp/intf/ILoaderService;)V
    .locals 0
    .param p1, "mAlaService"    # Lcom/nxp/intf/ILoaderService;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/nxp/eseclient/LoaderService;->ILdrService:Lcom/nxp/intf/ILoaderService;

    .line 42
    return-void
.end method

.method public static declared-synchronized createLSInterface()Lcom/nxp/eseclient/LoaderService;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    const-class v3, Lcom/nxp/eseclient/LoaderService;

    monitor-enter v3

    const/4 v0, 0x0

    .line 50
    .local v0, "LdrServiceIntf":Lcom/nxp/intf/ILoaderService;
    :try_start_0
    invoke-static {}, Lcom/nxp/eseclient/EseClientManager;->getInstance()Lcom/nxp/eseclient/EseClientManager;

    move-result-object v2

    sput-object v2, Lcom/nxp/eseclient/LoaderService;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    .line 51
    sget-object v2, Lcom/nxp/eseclient/LoaderService;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    invoke-virtual {v2}, Lcom/nxp/eseclient/EseClientManager;->initialize()V

    .line 52
    sget-object v2, Lcom/nxp/eseclient/LoaderService;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/nxp/eseclient/EseClientManager;->getSeInterface(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 53
    .local v1, "seMedium":Ljava/lang/Integer;
    const-string v2, "TAG"

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

    .line 54
    new-instance v2, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    invoke-direct {v2}, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;-><init>()V

    sput-object v2, Lcom/nxp/eseclient/LoaderService;->mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    .line 55
    sget-object v2, Lcom/nxp/eseclient/LoaderService;->mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;->getEseClientServicesAdapterInstance(I)Lcom/nxp/eseclient/EseClientServicesAdapter;

    move-result-object v2

    sput-object v2, Lcom/nxp/eseclient/LoaderService;->mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    .line 56
    sget-object v2, Lcom/nxp/eseclient/LoaderService;->mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    invoke-virtual {v2}, Lcom/nxp/eseclient/EseClientServicesAdapter;->getLoaderService()Lcom/nxp/intf/ILoaderService;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    new-instance v2, Lcom/nxp/eseclient/LoaderService;

    invoke-direct {v2, v0}, Lcom/nxp/eseclient/LoaderService;-><init>(Lcom/nxp/intf/ILoaderService;)V

    sput-object v2, Lcom/nxp/eseclient/LoaderService;->mLdrService:Lcom/nxp/eseclient/LoaderService;

    .line 59
    const-string v2, "TAG"

    const-string v4, "LdrServiceIntf is retrived"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v2, Lcom/nxp/eseclient/LoaderService;->mLdrService:Lcom/nxp/eseclient/LoaderService;

    if-nez v2, :cond_1

    .line 62
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Interface not available"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    :cond_1
    sget-object v2, Lcom/nxp/eseclient/LoaderService;->mLdrService:Lcom/nxp/eseclient/LoaderService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 49
    .end local v1    # "seMedium":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public declared-synchronized appletLoadApplet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "choice"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nxp/eseclient/LoaderService;->ILdrService:Lcom/nxp/intf/ILoaderService;

    invoke-interface {v2, p1, p2}, Lcom/nxp/intf/ILoaderService;->appletLoadApplet(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 80
    .local v1, "status":I
    if-nez v1, :cond_0

    .line 81
    monitor-exit p0

    return v1

    .line 82
    :cond_0
    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 83
    :try_start_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Api not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "EseSpiLoaderService"

    const-string v3, "RemoteException in AppletLoadApplet(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in AppletLoadApplet()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 85
    .restart local v1    # "status":I
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to Load applet"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getKeyCertificate()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/nxp/eseclient/LoaderService;->ILdrService:Lcom/nxp/intf/ILoaderService;

    invoke-interface {v2}, Lcom/nxp/intf/ILoaderService;->getKeyCertificate()[B

    move-result-object v0

    .line 120
    .local v0, "data":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 121
    return-object v0

    .line 122
    :cond_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_1

    .line 123
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Api not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EseSpiLoaderService"

    const-string v3, "RemoteException in getKeyCertificate(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in getKeyCertificate()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "data":[B
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid data received"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getListofApplets(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "name"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/nxp/eseclient/LoaderService;->ILdrService:Lcom/nxp/intf/ILoaderService;

    invoke-interface {v2, p1, p2}, Lcom/nxp/intf/ILoaderService;->getListofApplets(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "num":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 103
    return v1

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Api not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "num":I
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "EseSpiLoaderService"

    const-string v3, "RemoteException in GetListofApplets(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in GetListofApplets()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized lsExecuteScript(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "srcIn"    # Ljava/lang/String;
    .param p2, "rspOut"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nxp/eseclient/LoaderService;->ILdrService:Lcom/nxp/intf/ILoaderService;

    invoke-interface {v2, p1, p2}, Lcom/nxp/intf/ILoaderService;->lsExecuteScript(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 145
    .local v1, "status":[B
    if-eqz v1, :cond_0

    .line 146
    monitor-exit p0

    return-object v1

    .line 147
    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    array-length v2, v1

    if-nez v2, :cond_1

    .line 148
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Api not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v1    # "status":[B
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "EseSpiLoaderService"

    const-string v3, "RemoteException in lsExecuteScript(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in lsExecuteScript()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 150
    .restart local v1    # "status":[B
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to perfrom lsExecuteScript"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public lsGetVersion()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/nxp/eseclient/LoaderService;->ILdrService:Lcom/nxp/intf/ILoaderService;

    invoke-interface {v2}, Lcom/nxp/intf/ILoaderService;->lsGetVersion()[B

    move-result-object v0

    .line 167
    .local v0, "data":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 168
    return-object v0

    .line 169
    :cond_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_1

    .line 170
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Api not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "EseSpiLoaderService"

    const-string v3, "RemoteException in getKeyCertificate(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in getKeyCertificate()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "data":[B
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid data received"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method
