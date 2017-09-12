.class public abstract Landroid/service/securespaces/ISpaceEncryptionService$Stub;
.super Landroid/os/Binder;
.source "ISpaceEncryptionService.java"

# interfaces
.implements Landroid/service/securespaces/ISpaceEncryptionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/securespaces/ISpaceEncryptionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/securespaces/ISpaceEncryptionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.securespaces.ISpaceEncryptionService"

.field static final TRANSACTION_ecryptfsMount:I = 0x3

.field static final TRANSACTION_ecryptfsMountRemovableNonOwner:I = 0x1

.field static final TRANSACTION_ecryptfsOverwrite:I = 0x6

.field static final TRANSACTION_ecryptfsUnmount:I = 0x4

.field static final TRANSACTION_ecryptfsUnmountRemovableNonOwner:I = 0x2

.field static final TRANSACTION_ecryptfsUpdate:I = 0x5

.field static final TRANSACTION_isAuthProtected:I = 0x9

.field static final TRANSACTION_needAirlockUser:I = 0xa

.field static final TRANSACTION_needsEcryptfsMount:I = 0x7

.field static final TRANSACTION_processEncryption:I = 0x8

.field static final TRANSACTION_setAirlockWallpaperToUser:I = 0xc

.field static final TRANSACTION_setOpAddExcludeFromWipe:I = 0x15

.field static final TRANSACTION_setOpCleanUserData:I = 0x14

.field static final TRANSACTION_setOpClearUserData:I = 0x13

.field static final TRANSACTION_setOpCreateUserConfig:I = 0x12

.field static final TRANSACTION_setOpCreateUserData:I = 0xd

.field static final TRANSACTION_setOpDeleteCacheFiles:I = 0x10

.field static final TRANSACTION_setOpDeleteCodeCacheFiles:I = 0x11

.field static final TRANSACTION_setOpLinkNativeLibraryDir:I = 0xf

.field static final TRANSACTION_setOpRemove:I = 0xe

.field static final TRANSACTION_switchUser:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.service.securespaces.ISpaceEncryptionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/securespaces/ISpaceEncryptionService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/service/securespaces/ISpaceEncryptionService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/service/securespaces/ISpaceEncryptionService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/securespaces/ISpaceEncryptionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 303
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsMountRemovableNonOwner(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v1    # "_arg0":I
    :sswitch_2
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsUnmountRemovableNonOwner(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsMount(IILjava/lang/String;)I

    move-result v6

    .line 74
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_4
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsUnmount(I)I

    move-result v6

    .line 84
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_5
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsUpdate(IILjava/lang/String;)I

    move-result v6

    .line 98
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 104
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_6
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->ecryptfsOverwrite(I)I

    move-result v6

    .line 108
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_7
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->needsEcryptfsMount(I)Z

    move-result v6

    .line 118
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v6, :cond_0

    move v0, v7

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_0
    move v0, v8

    goto :goto_1

    .line 124
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_8
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    sget-object v0, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 132
    .local v1, "_arg0":Landroid/content/pm/UserInfo;
    :goto_2
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->processEncryption(Landroid/content/pm/UserInfo;)Z

    move-result v6

    .line 133
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v6, :cond_1

    move v8, v7

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v1    # "_arg0":Landroid/content/pm/UserInfo;
    .end local v6    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/pm/UserInfo;
    goto :goto_2

    .line 139
    .end local v1    # "_arg0":Landroid/content/pm/UserInfo;
    :sswitch_9
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->isAuthProtected(I)Z

    move-result v6

    .line 143
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v6, :cond_3

    move v8, v7

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_a
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->needAirlockUser(I)Z

    move-result v6

    .line 153
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v6, :cond_4

    move v8, v7

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_b
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->switchUser(I)Z

    move-result v6

    .line 163
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v6, :cond_5

    move v8, v7

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_c
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setAirlockWallpaperToUser(I)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 178
    .end local v1    # "_arg0":I
    :sswitch_d
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpCreateUserData(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v6

    .line 190
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v6, :cond_6

    move v8, v7

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_e
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 203
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpRemove(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    .line 204
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v6, :cond_7

    move v8, v7

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 210
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_f
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpLinkNativeLibraryDir(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 220
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v6, :cond_8

    move v8, v7

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_10
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpDeleteCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    .line 234
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v6, :cond_9

    move v8, v7

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 240
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_11
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpDeleteCodeCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    .line 248
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v6, :cond_a

    move v8, v7

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 254
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_12
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpCreateUserConfig(I)Z

    move-result v6

    .line 258
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v6, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_13
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpClearUserData(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    .line 272
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v6, :cond_c

    move v8, v7

    :cond_c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 278
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_14
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpCleanUserData(Ljava/lang/String;I)Z

    move-result v6

    .line 284
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v6, :cond_d

    move v8, v7

    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 290
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_15
    const-string v0, "android.service.securespaces.ISpaceEncryptionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 296
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->setOpAddExcludeFromWipe(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    .line 298
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v6, :cond_e

    move v8, v7

    :cond_e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
