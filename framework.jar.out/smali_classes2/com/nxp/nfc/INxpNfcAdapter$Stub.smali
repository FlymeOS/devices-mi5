.class public abstract Lcom/nxp/nfc/INxpNfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INxpNfcAdapter.java"

# interfaces
.implements Lcom/nxp/nfc/INxpNfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/nfc/INxpNfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nxp.nfc.INxpNfcAdapter"

.field static final TRANSACTION_DefaultRouteSet:I = 0xc

.field static final TRANSACTION_MifareCLTRouteSet:I = 0xd

.field static final TRANSACTION_MifareDesfireRouteSet:I = 0xb

.field static final TRANSACTION_deselectSecureElement:I = 0x8

.field static final TRANSACTION_getActiveSecureElementList:I = 0x12

.field static final TRANSACTION_getFWVersion:I = 0x10

.field static final TRANSACTION_getNfcDtaInterface:I = 0x1

.field static final TRANSACTION_getNfcEseClientServicesAdapterInterface:I = 0xe

.field static final TRANSACTION_getNfcVzwInterface:I = 0x3

.field static final TRANSACTION_getNxpNfcAccessExtrasInterface:I = 0x2

.field static final TRANSACTION_getNxpNfcAdapterExtrasInterface:I = 0x4

.field static final TRANSACTION_getSeInterface:I = 0xf

.field static final TRANSACTION_getSecureElementList:I = 0x5

.field static final TRANSACTION_getSelectedSecureElement:I = 0x6

.field static final TRANSACTION_getServicesAidCacheSize:I = 0x11

.field static final TRANSACTION_selectSecureElement:I = 0x7

.field static final TRANSACTION_setEmvCoPollProfile:I = 0xa

.field static final TRANSACTION_storeSePreference:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/nfc/INxpNfcAdapter;
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
    const-string v1, "com.nxp.nfc.INxpNfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/nfc/INxpNfcAdapter;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/nxp/nfc/INxpNfcAdapter;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 46
    :sswitch_0
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcDtaInterface()Lcom/nxp/nfc/INfcDta;

    move-result-object v4

    .line 53
    .local v4, "_result":Lcom/nxp/nfc/INfcDta;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/nxp/nfc/INfcDta;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 59
    .end local v4    # "_result":Lcom/nxp/nfc/INfcDta;
    :sswitch_2
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNxpNfcAccessExtrasInterface(Ljava/lang/String;)Lcom/nxp/nfc/INxpNfcAccessExtras;

    move-result-object v4

    .line 63
    .local v4, "_result":Lcom/nxp/nfc/INxpNfcAccessExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/nxp/nfc/INxpNfcAccessExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/nxp/nfc/INxpNfcAccessExtras;
    :sswitch_3
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcVzwInterface()Lcom/nxp/nfc/INfcVzw;

    move-result-object v4

    .line 71
    .local v4, "_result":Lcom/nxp/nfc/INfcVzw;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/nxp/nfc/INfcVzw;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 77
    .end local v4    # "_result":Lcom/nxp/nfc/INfcVzw;
    :sswitch_4
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNxpNfcAdapterExtrasInterface()Lcom/nxp/nfc/INxpNfcAdapterExtras;

    move-result-object v4

    .line 79
    .local v4, "_result":Lcom/nxp/nfc/INxpNfcAdapterExtras;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/nxp/nfc/INxpNfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 85
    .end local v4    # "_result":Lcom/nxp/nfc/INxpNfcAdapterExtras;
    :sswitch_5
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSecureElementList(Ljava/lang/String;)[I

    move-result-object v4

    .line 89
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[I
    :sswitch_6
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSelectedSecureElement(Ljava/lang/String;)I

    move-result v4

    .line 99
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_7
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 110
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->selectSecureElement(Ljava/lang/String;I)I

    move-result v4

    .line 111
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_8
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->deselectSecureElement(Ljava/lang/String;)I

    move-result v4

    .line 121
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_9
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->storeSePreference(I)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v6

    .line 140
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->setEmvCoPollProfile(ZI)I

    move-result v4

    .line 142
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :cond_4
    move v0, v7

    .line 138
    goto :goto_1

    .line 148
    :sswitch_b
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v1, v6

    .line 154
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    move v2, v6

    .line 156
    .local v2, "_arg2":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v3, v6

    .line 157
    .local v3, "_arg3":Z
    :goto_4
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->MifareDesfireRouteSet(IZZZ)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_5
    move v1, v7

    .line 152
    goto :goto_2

    .restart local v1    # "_arg1":Z
    :cond_6
    move v2, v7

    .line 154
    goto :goto_3

    .restart local v2    # "_arg2":Z
    :cond_7
    move v3, v7

    .line 156
    goto :goto_4

    .line 163
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_c
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    move v1, v6

    .line 169
    .restart local v1    # "_arg1":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    move v2, v6

    .line 171
    .restart local v2    # "_arg2":Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v3, v6

    .line 172
    .restart local v3    # "_arg3":Z
    :goto_7
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->DefaultRouteSet(IZZZ)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_8
    move v1, v7

    .line 167
    goto :goto_5

    .restart local v1    # "_arg1":Z
    :cond_9
    move v2, v7

    .line 169
    goto :goto_6

    .restart local v2    # "_arg2":Z
    :cond_a
    move v3, v7

    .line 171
    goto :goto_7

    .line 178
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_d
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    move v1, v6

    .line 184
    .restart local v1    # "_arg1":Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    move v2, v6

    .line 186
    .restart local v2    # "_arg2":Z
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    move v3, v6

    .line 187
    .restart local v3    # "_arg3":Z
    :goto_a
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->MifareCLTRouteSet(IZZZ)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_b
    move v1, v7

    .line 182
    goto :goto_8

    .restart local v1    # "_arg1":Z
    :cond_c
    move v2, v7

    .line 184
    goto :goto_9

    .restart local v2    # "_arg2":Z
    :cond_d
    move v3, v7

    .line 186
    goto :goto_a

    .line 193
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_e
    const-string v7, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcEseClientServicesAdapterInterface()Lcom/nxp/intf/IeSEClientServicesAdapter;

    move-result-object v4

    .line 195
    .local v4, "_result":Lcom/nxp/intf/IeSEClientServicesAdapter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v4, :cond_e

    invoke-interface {v4}, Lcom/nxp/intf/IeSEClientServicesAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 201
    .end local v4    # "_result":Lcom/nxp/intf/IeSEClientServicesAdapter;
    :sswitch_f
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSeInterface(I)I

    move-result v4

    .line 205
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_10
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getFWVersion()[B

    move-result-object v4

    .line 213
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 219
    .end local v4    # "_result":[B
    :sswitch_11
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getServicesAidCacheSize(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 225
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 231
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :sswitch_12
    const-string v5, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getActiveSecureElementList(Ljava/lang/String;)[I

    move-result-object v4

    .line 235
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 42
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
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
