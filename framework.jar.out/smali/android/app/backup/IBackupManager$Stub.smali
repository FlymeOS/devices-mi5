.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final TRANSACTION_acknowledgeFullBackupOrRestore:I = 0x10

.field static final TRANSACTION_agentConnected:I = 0x3

.field static final TRANSACTION_agentDisconnected:I = 0x4

.field static final TRANSACTION_backupNow:I = 0xc

.field static final TRANSACTION_beginRestoreSession:I = 0x18

.field static final TRANSACTION_clearBackupData:I = 0x2

.field static final TRANSACTION_dataChanged:I = 0x1

.field static final TRANSACTION_fullBackup:I = 0xd

.field static final TRANSACTION_fullRestore:I = 0xf

.field static final TRANSACTION_fullTransportBackup:I = 0xe

.field static final TRANSACTION_getAvailableRestoreToken:I = 0x1c

.field static final TRANSACTION_getConfigurationIntent:I = 0x14

.field static final TRANSACTION_getCurrentTransport:I = 0x11

.field static final TRANSACTION_getDataManagementIntent:I = 0x16

.field static final TRANSACTION_getDataManagementLabel:I = 0x17

.field static final TRANSACTION_getDestinationString:I = 0x15

.field static final TRANSACTION_hasBackupPassword:I = 0xb

.field static final TRANSACTION_isBackupEnabled:I = 0x9

.field static final TRANSACTION_isBackupServiceActive:I = 0x1b

.field static final TRANSACTION_listAllTransports:I = 0x12

.field static final TRANSACTION_opComplete:I = 0x19

.field static final TRANSACTION_restoreAtInstall:I = 0x5

.field static final TRANSACTION_selectBackupTransport:I = 0x13

.field static final TRANSACTION_setAutoRestore:I = 0x7

.field static final TRANSACTION_setBackupEnabled:I = 0x6

.field static final TRANSACTION_setBackupPassword:I = 0xa

.field static final TRANSACTION_setBackupProvisioned:I = 0x8

.field static final TRANSACTION_setBackupServiceActive:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v1, "android.app.backup.IBackupManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Landroid/app/backup/IBackupManager;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Landroid/app/backup/IBackupManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 371
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 52
    :sswitch_0
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    const/4 v2, 0x1

    goto :goto_0

    .line 57
    :sswitch_1
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v2, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 70
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v2, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 82
    .local v4, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v2, 0x1

    goto :goto_0

    .line 88
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/IBinder;
    :sswitch_4
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v2, 0x1

    goto :goto_0

    .line 97
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 102
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v2, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_6
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 111
    .local v3, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 110
    .end local v3    # "_arg0":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 117
    :sswitch_7
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 120
    .restart local v3    # "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 119
    .end local v3    # "_arg0":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 126
    :sswitch_8
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 129
    .restart local v3    # "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->setBackupProvisioned(Z)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 128
    .end local v3    # "_arg0":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 135
    :sswitch_9
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v14

    .line 137
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v14, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 138
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 143
    .end local v14    # "_result":Z
    :sswitch_a
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 149
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v14, :cond_4

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 150
    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    .line 155
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_b
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v14

    .line 157
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v14, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 158
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 163
    .end local v14    # "_result":Z
    :sswitch_c
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 170
    :sswitch_d
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 173
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 179
    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v4, 0x1

    .line 181
    .local v4, "_arg1":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v5, 0x1

    .line 183
    .local v5, "_arg2":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v6, 0x1

    .line 185
    .local v6, "_arg3":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v7, 0x1

    .line 187
    .local v7, "_arg4":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v8, 0x1

    .line 189
    .local v8, "_arg5":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v9, 0x1

    .line 191
    .local v9, "_arg6":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v10, 0x1

    .line 193
    .local v10, "_arg7":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg8":[Ljava/lang/String;
    move-object/from16 v2, p0

    .line 194
    invoke-virtual/range {v2 .. v11}, Landroid/app/backup/IBackupManager$Stub;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Z
    .end local v7    # "_arg4":Z
    .end local v8    # "_arg5":Z
    .end local v9    # "_arg6":Z
    .end local v10    # "_arg7":Z
    .end local v11    # "_arg8":[Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_7

    .line 179
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 181
    .restart local v4    # "_arg1":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 183
    .restart local v5    # "_arg2":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_a

    .line 185
    .restart local v6    # "_arg3":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_b

    .line 187
    .restart local v7    # "_arg4":Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_c

    .line 189
    .restart local v8    # "_arg5":Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_d

    .line 191
    .restart local v9    # "_arg6":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_e

    .line 200
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Z
    .end local v7    # "_arg4":Z
    .end local v8    # "_arg5":Z
    .end local v9    # "_arg6":Z
    :sswitch_e
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->fullTransportBackup([Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 209
    .end local v3    # "_arg0":[Ljava/lang/String;
    :sswitch_f
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 212
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 217
    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 215
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_f

    .line 223
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_10
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    const/4 v4, 0x1

    .line 229
    .restart local v4    # "_arg1":Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v7

    .local v7, "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    move-object/from16 v2, p0

    .line 234
    invoke-virtual/range {v2 .. v7}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 227
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/app/backup/IFullBackupRestoreObserver;
    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    .line 240
    .end local v3    # "_arg0":I
    :sswitch_11
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v14

    .line 242
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 248
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v14

    .line 250
    .local v14, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 252
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 256
    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_13
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 260
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 266
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 270
    .local v14, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v14, :cond_10

    .line 272
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 278
    :goto_11
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 276
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 282
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Landroid/content/Intent;
    :sswitch_15
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 286
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 292
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 295
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 296
    .local v14, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v14, :cond_11

    .line 298
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 304
    :goto_12
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 302
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 308
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Landroid/content/Intent;
    :sswitch_17
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 312
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 318
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 322
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v14

    .line 324
    .local v14, "_result":Landroid/app/backup/IRestoreSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v14, :cond_12

    invoke-interface {v14}, Landroid/app/backup/IRestoreSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 326
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 325
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 330
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v14    # "_result":Landroid/app/backup/IRestoreSession;
    :sswitch_19
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 335
    .local v12, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Landroid/app/backup/IBackupManager$Stub;->opComplete(IJ)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 341
    .end local v3    # "_arg0":I
    .end local v12    # "_arg1":J
    :sswitch_1a
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 345
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v4, 0x1

    .line 346
    .local v4, "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/backup/IBackupManager$Stub;->setBackupServiceActive(IZ)V

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 345
    .end local v4    # "_arg1":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 352
    .end local v3    # "_arg0":I
    :sswitch_1b
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 355
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->isBackupServiceActive(I)Z

    move-result v14

    .line 356
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v14, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 357
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 362
    .end local v3    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_1c
    const-string v2, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/backup/IBackupManager$Stub;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v14

    .line 366
    .local v14, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 368
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 48
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
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
