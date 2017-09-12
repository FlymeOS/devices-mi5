.class public final Lcom/nxp/eseclient/EseClientServicesAdapter;
.super Ljava/lang/Object;
.source "EseClientServicesAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EseClientServicesAdapter"


# instance fields
.field private mEseManager:Lcom/nxp/eseclient/EseClientManager;

.field private mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

.field private mIJcopService:Lcom/nxp/intf/IJcopService;

.field private mILoaderService:Lcom/nxp/intf/ILoaderService;

.field private mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

    .line 30
    iput-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mILoaderService:Lcom/nxp/intf/ILoaderService;

    .line 31
    iput-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIJcopService:Lcom/nxp/intf/IJcopService;

    .line 32
    iput-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    return-void
.end method


# virtual methods
.method public getJcopService()Lcom/nxp/intf/IJcopService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

    invoke-interface {v0}, Lcom/nxp/intf/IeSEClientServicesAdapter;->getJcopService()Lcom/nxp/intf/IJcopService;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIJcopService:Lcom/nxp/intf/IJcopService;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIJcopService:Lcom/nxp/intf/IJcopService;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Interface not available"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIJcopService:Lcom/nxp/intf/IJcopService;

    return-object v0
.end method

.method public getLoaderService()Lcom/nxp/intf/ILoaderService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

    invoke-interface {v0}, Lcom/nxp/intf/IeSEClientServicesAdapter;->getLoaderService()Lcom/nxp/intf/ILoaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mILoaderService:Lcom/nxp/intf/ILoaderService;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mILoaderService:Lcom/nxp/intf/ILoaderService;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Interface not available"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mILoaderService:Lcom/nxp/intf/ILoaderService;

    return-object v0
.end method

.method public getNxpExtrasService()Lcom/nxp/intf/INxpExtrasService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

    invoke-interface {v0}, Lcom/nxp/intf/IeSEClientServicesAdapter;->getNxpExtrasService()Lcom/nxp/intf/INxpExtrasService;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Interface not available"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    return-object v0
.end method

.method public initEseClientServicesAdapterInstance(I)Z
    .locals 3
    .param p1, "medium"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "ret":Z
    invoke-static {}, Lcom/nxp/eseclient/EseClientManager;->getInstance()Lcom/nxp/eseclient/EseClientManager;

    move-result-object v1

    iput-object v1, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    .line 36
    packed-switch p1, :pswitch_data_0

    .line 49
    const-string v1, "EseClientServicesAdapter"

    const-string v2, "invalid interface selection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

    if-nez v1, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 54
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Interface not available"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    :cond_0
    return v0

    .line 39
    :pswitch_0
    const-string v1, "EseClientServicesAdapter"

    const-string v2, "NFC interface selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v1, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    invoke-virtual {v1}, Lcom/nxp/eseclient/EseClientManager;->getNfcEseClientServicesAdapterInterface()Lcom/nxp/intf/IeSEClientServicesAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 44
    :pswitch_1
    const-string v1, "EseClientServicesAdapter"

    const-string v2, "NFC interface selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    invoke-virtual {v1}, Lcom/nxp/eseclient/EseClientManager;->getSpiEseClientServicesAdapterInterface()Lcom/nxp/intf/IeSEClientServicesAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/nxp/eseclient/EseClientServicesAdapter;->mIEseClientServicesAdapter:Lcom/nxp/intf/IeSEClientServicesAdapter;

    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
