.class Lcom/miui/whetstone/WhetstoneResultProxy;
.super Ljava/lang/Object;
.source "WhetstoneResultBinder.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstoneResult;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneResultProxy;->mRemote:Landroid/os/IBinder;

    .line 63
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneResultProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public onResult(Lcom/miui/whetstone/WhetstoneResult;)V
    .locals 5
    .param p1, "result"    # Lcom/miui/whetstone/WhetstoneResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 73
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 74
    .local v1, "reply":Landroid/os/Parcel;
    const-string v2, "com.miui.whetstone.IWhetstoneResult"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v0, v4}, Lcom/miui/whetstone/WhetstoneResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    iget-object v2, p0, Lcom/miui/whetstone/WhetstoneResultProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 77
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 78
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 80
    return-void
.end method
