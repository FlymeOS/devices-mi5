.class Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;
.super Ljava/lang/Object;
.source "WhetstoneApplicationThread.java"

# interfaces
.implements Lcom/miui/whetstone/app/IWhetstoneApplicationThread;


# instance fields
.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dumpMemInfo([Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 102
    .local v2, "reply":Landroid/os/Parcel;
    const-string v3, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 105
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 106
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 107
    .local v1, "info":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 110
    return-object v1
.end method

.method public longScreenshot(I)Z
    .locals 5
    .param p1, "cmd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 116
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 117
    .local v1, "reply":Landroid/os/Parcel;
    const-string v3, "com.miui.whetstone.app.IWhetstoneApplicationThread"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v3, p0, Lcom/miui/whetstone/app/WhetstoneApplicationThreadProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-nez v3, :cond_0

    .line 122
    .local v2, "result":Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    return v2

    .line 121
    .end local v2    # "result":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
