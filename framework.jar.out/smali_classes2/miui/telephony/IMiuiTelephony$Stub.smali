.class public abstract Lmiui/telephony/IMiuiTelephony$Stub;
.super Landroid/os/Binder;
.source "IMiuiTelephony.java"

# interfaces
.implements Lmiui/telephony/IMiuiTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/IMiuiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/IMiuiTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.telephony.IMiuiTelephony"

.field static final TRANSACTION_getCellLocationForSlot:I = 0x10

.field static final TRANSACTION_getDeviceId:I = 0xa

.field static final TRANSACTION_getDeviceIdList:I = 0x7

.field static final TRANSACTION_getImei:I = 0xb

.field static final TRANSACTION_getImeiList:I = 0x8

.field static final TRANSACTION_getMeid:I = 0xc

.field static final TRANSACTION_getMeidList:I = 0x9

.field static final TRANSACTION_getSpn:I = 0xe

.field static final TRANSACTION_getSystemDefaultSlotId:I = 0x5

.field static final TRANSACTION_isIccCardActivate:I = 0x6

.field static final TRANSACTION_isImsRegistered:I = 0x3

.field static final TRANSACTION_isSameOperator:I = 0xd

.field static final TRANSACTION_isVolteEnabledByUser:I = 0x4

.field static final TRANSACTION_onOperatorNumericOrNameSet:I = 0xf

.field static final TRANSACTION_setDefaultDataSlotId:I = 0x2

.field static final TRANSACTION_setDefaultVoiceSlotId:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p0, p0, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/telephony/IMiuiTelephony;
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
    const-string v1, "miui.telephony.IMiuiTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/telephony/IMiuiTelephony;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lmiui/telephony/IMiuiTelephony;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lmiui/telephony/IMiuiTelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/telephony/IMiuiTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v6, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->setDefaultVoiceSlotId(ILjava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string v8, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->setDefaultDataSlotId(ILjava/lang/String;)Z

    move-result v4

    .line 64
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v8, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isImsRegistered(I)Z

    move-result v4

    .line 74
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v8, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lmiui/telephony/IMiuiTelephony$Stub;->isVolteEnabledByUser()Z

    move-result v4

    .line 82
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v4    # "_result":Z
    :sswitch_5
    const-string v6, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lmiui/telephony/IMiuiTelephony$Stub;->getSystemDefaultSlotId()I

    move-result v4

    .line 90
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v4    # "_result":I
    :sswitch_6
    const-string v8, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->isIccCardActivate(I)Z

    move-result v4

    .line 100
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v4, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 106
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v6, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getDeviceIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 110
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 116
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_8
    const-string v6, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getImeiList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 120
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    const-string v6, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getMeidList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 130
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 136
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a
    const-string v6, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/telephony/IMiuiTelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string v6, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->getImei(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v6, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->getMeid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v8, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 176
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v4, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_e
    const-string v8, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v3, v7

    .line 191
    .local v3, "_arg3":Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/telephony/IMiuiTelephony$Stub;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "_arg3":Z
    .end local v4    # "_result":Ljava/lang/String;
    :cond_5
    move v3, v6

    .line 190
    goto :goto_1

    .line 198
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_f
    const-string v6, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/telephony/IMiuiTelephony$Stub;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 206
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v8, "miui.telephony.IMiuiTelephony"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/telephony/IMiuiTelephony$Stub;->getCellLocationForSlot(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 218
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v4, :cond_6

    .line 220
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    invoke-virtual {v4, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 224
    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

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
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
