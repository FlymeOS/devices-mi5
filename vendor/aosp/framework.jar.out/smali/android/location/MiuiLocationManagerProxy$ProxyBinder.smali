.class Landroid/location/MiuiLocationManagerProxy$ProxyBinder;
.super Ljava/lang/Object;
.source "MiuiLocationManagerProxy.java"

# interfaces
.implements Landroid/os/IBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/MiuiLocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyBinder"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    .line 33
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 78
    return-void
.end method

.method public pingBinder()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 67
    const-class v6, Landroid/location/MiuiLocationManagerProxy;

    monitor-enter v6

    .line 68
    :try_start_0
    # getter for: Landroid/location/MiuiLocationManagerProxy;->sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;
    invoke-static {}, Landroid/location/MiuiLocationManagerProxy;->access$000()Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    # getter for: Landroid/location/MiuiLocationManagerProxy;->sInvokeMonitor:Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;
    invoke-static {}, Landroid/location/MiuiLocationManagerProxy;->access$000()Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/location/MiuiLocationManagerProxy$IInvokeMonitor;->onInvoke(Landroid/os/IBinder;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    monitor-exit v6

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .prologue
    .line 82
    iget-object v0, p0, Landroid/location/MiuiLocationManagerProxy$ProxyBinder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method
