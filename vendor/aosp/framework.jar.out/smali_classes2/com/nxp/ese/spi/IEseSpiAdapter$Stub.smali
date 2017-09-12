.class public abstract Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;
.super Landroid/os/Binder;
.source "IEseSpiAdapter.java"

# interfaces
.implements Lcom/nxp/ese/spi/IEseSpiAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/ese/spi/IEseSpiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/ese/spi/IEseSpiAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nxp.ese.spi.IEseSpiAdapter"

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_enable:I = 0x2

.field static final TRANSACTION_getSeInterface:I = 0x6

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_reset:I = 0x4

.field static final TRANSACTION_transceive:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/ese/spi/IEseSpiAdapter;
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
    const-string v1, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/ese/spi/IEseSpiAdapter;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/nxp/ese/spi/IEseSpiAdapter;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->getState()I

    move-result v2

    .line 49
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v2    # "_result":I
    :sswitch_2
    const-string v5, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->enable()Z

    move-result v2

    .line 57
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v2    # "_result":Z
    :sswitch_3
    const-string v5, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 66
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->disable(Z)Z

    move-result v2

    .line 67
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_2
    move v0, v3

    .line 65
    goto :goto_1

    .line 73
    :sswitch_4
    const-string v5, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->reset()Z

    move-result v2

    .line 75
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v3, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 86
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->transceive(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 87
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 93
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":[B
    :sswitch_6
    const-string v3, "com.nxp.ese.spi.IEseSpiAdapter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->getSeInterface(I)I

    move-result v2

    .line 97
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
