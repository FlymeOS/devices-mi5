.class public abstract Lcom/juphoon/service/cap/IRcsCapService$Stub;
.super Landroid/os/Binder;
.source "IRcsCapService.java"

# interfaces
.implements Lcom/juphoon/service/cap/IRcsCapService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/juphoon/service/cap/IRcsCapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/juphoon/service/cap/IRcsCapService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.juphoon.service.cap.IRcsCapService"

.field static final TRANSACTION_Mtc_CapDbGetCapBurnEn:I = 0x8

.field static final TRANSACTION_Mtc_CapDbGetCapFTEn:I = 0x2

.field static final TRANSACTION_Mtc_CapDbGetCapGeoPullEn:I = 0x5

.field static final TRANSACTION_Mtc_CapDbGetCapGeoPushEn:I = 0x6

.field static final TRANSACTION_Mtc_CapDbGetCapIMEn:I = 0x7

.field static final TRANSACTION_Mtc_CapDbGetCapPubMsgEn:I = 0xa

.field static final TRANSACTION_Mtc_CapDbGetCapVemEn:I = 0x9

.field static final TRANSACTION_Mtc_CapDbGetCapVideoCallEn:I = 0x4

.field static final TRANSACTION_Mtc_CapDbGetCapVoicCallEn:I = 0x3

.field static final TRANSACTION_Mtc_CapQryOneImd:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p0, p0, v0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/juphoon/service/cap/IRcsCapService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.juphoon.service.cap.IRcsCapService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/juphoon/service/cap/IRcsCapService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/juphoon/service/cap/IRcsCapService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/juphoon/service/cap/IRcsCapService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/juphoon/service/cap/IRcsCapService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v2, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v2, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->Mtc_CapQryOneImd(Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :sswitch_2
    const-string v4, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->Mtc_CapDbGetCapFTEn()Z

    move-result v1

    .line 63
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v4, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->Mtc_CapDbGetCapVoicCallEn()Z

    move-result v1

    .line 71
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v1    # "_result":Z
    :sswitch_4
    const-string v4, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->Mtc_CapDbGetCapVideoCallEn()Z

    move-result v1

    .line 79
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v1    # "_result":Z
    :sswitch_5
    const-string v4, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->Mtc_CapDbGetCapGeoPullEn()Z

    move-result v1

    .line 87
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v1    # "_result":Z
    :sswitch_6
    const-string v4, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->Mtc_CapDbGetCapGeoPushEn()Z

    move-result v1

    .line 95
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v1    # "_result":Z
    :sswitch_7
    const-string v4, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->Mtc_CapDbGetCapIMEn()Z

    move-result v1

    .line 103
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v1    # "_result":Z
    :sswitch_8
    const-string v4, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->Mtc_CapDbGetCapBurnEn()Z

    move-result v1

    .line 111
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v1    # "_result":Z
    :sswitch_9
    const-string v4, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->Mtc_CapDbGetCapVemEn()Z

    move-result v1

    .line 119
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v1    # "_result":Z
    :sswitch_a
    const-string v4, "com.juphoon.service.cap.IRcsCapService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/juphoon/service/cap/IRcsCapService$Stub;->Mtc_CapDbGetCapPubMsgEn()Z

    move-result v1

    .line 127
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
