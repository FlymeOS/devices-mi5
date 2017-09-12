.class public abstract Lmiui/mms/IMxNetworkSMS$Stub;
.super Landroid/os/Binder;
.source "IMxNetworkSMS.java"

# interfaces
.implements Lmiui/mms/IMxNetworkSMS;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mms/IMxNetworkSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mms/IMxNetworkSMS$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.mms.IMxNetworkSMS"

.field static final TRANSACTION_isMxOnline:I = 0x1

.field static final TRANSACTION_sendNetwokSMS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.mms.IMxNetworkSMS"

    invoke-virtual {p0, p0, v0}, Lmiui/mms/IMxNetworkSMS$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/mms/IMxNetworkSMS;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "miui.mms.IMxNetworkSMS"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/mms/IMxNetworkSMS;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/mms/IMxNetworkSMS;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lmiui/mms/IMxNetworkSMS$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/mms/IMxNetworkSMS$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 45
    :sswitch_0
    const-string v1, "miui.mms.IMxNetworkSMS"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v9, "miui.mms.IMxNetworkSMS"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lmiui/mms/IMxNetworkSMS$Stub;->isMxOnline(Ljava/lang/String;)Z

    move-result v0

    .line 54
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v0, :cond_0

    move v1, v8

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0    # "_result":Z
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v9, "miui.mms.IMxNetworkSMS"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 68
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v6, v8

    .line 70
    .local v6, "_arg3":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg4":I
    move-object v1, p0

    .line 71
    invoke-virtual/range {v1 .. v7}, Lmiui/mms/IMxNetworkSMS$Stub;->sendNetwokSMS(Ljava/lang/String;Ljava/lang/String;JZI)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "_result":[Ljava/lang/String;
    .end local v6    # "_arg3":Z
    .end local v7    # "_arg4":I
    :cond_1
    move v6, v1

    .line 68
    goto :goto_1

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
