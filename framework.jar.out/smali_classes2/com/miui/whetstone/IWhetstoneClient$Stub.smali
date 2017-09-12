.class public abstract Lcom/miui/whetstone/IWhetstoneClient$Stub;
.super Landroid/os/Binder;
.source "IWhetstoneClient.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstoneClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstoneClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IWhetstoneClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IWhetstoneClient"

.field static final TRANSACTION_isNotificationAllowed:I = 0x4

.field static final TRANSACTION_isStartPorcessAllowedByBroadcastLocked:I = 0x1

.field static final TRANSACTION_notifyApplicationOver:I = 0x5

.field static final TRANSACTION_setForegroundProcess:I = 0x3

.field static final TRANSACTION_startServiceAllowedLocked:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.whetstone.IWhetstoneClient"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.miui.whetstone.IWhetstoneClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/whetstone/IWhetstoneClient;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/whetstone/IWhetstoneClient$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/IWhetstoneClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v4, "com.miui.whetstone.IWhetstoneClient"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "com.miui.whetstone.IWhetstoneClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 53
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 59
    .local v1, "_arg1":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 60
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 65
    .local v2, "_arg2":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->isStartPorcessAllowedByBroadcastLocked(Ljava/lang/String;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result v3

    .line 66
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/Intent;
    goto :goto_1

    .line 63
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/content/ComponentName;
    goto :goto_2

    .line 72
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    :sswitch_2
    const-string v6, "com.miui.whetstone.IWhetstoneClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 77
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 82
    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->startServiceAllowedLocked(ILandroid/content/Intent;)Z

    move-result v3

    .line 83
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v3    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/Intent;
    goto :goto_3

    .line 89
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    :sswitch_3
    const-string v4, "com.miui.whetstone.IWhetstoneClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->notifyApplicationOver(Ljava/lang/String;II)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_4
    const-string v4, "com.miui.whetstone.IWhetstoneClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->setForegroundProcess(ILjava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string v6, "com.miui.whetstone.IWhetstoneClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->isNotificationAllowed(Ljava/lang/String;II)Z

    move-result v3

    .line 121
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
