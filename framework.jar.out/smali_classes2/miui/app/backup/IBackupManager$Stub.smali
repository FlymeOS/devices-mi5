.class public abstract Lmiui/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Lmiui/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IBackupManager"

.field static final TRANSACTION_acquire:I = 0x4

.field static final TRANSACTION_addCompletedSize:I = 0xd

.field static final TRANSACTION_backupPackage:I = 0x1

.field static final TRANSACTION_errorOccur:I = 0x6

.field static final TRANSACTION_getCurrentRunningPackage:I = 0x7

.field static final TRANSACTION_getCurrentWorkingFeature:I = 0x8

.field static final TRANSACTION_getState:I = 0x9

.field static final TRANSACTION_isNeedBeKilled:I = 0xe

.field static final TRANSACTION_isRunningFromMiui:I = 0x10

.field static final TRANSACTION_isServiceIdle:I = 0x11

.field static final TRANSACTION_onApkInstalled:I = 0xc

.field static final TRANSACTION_readMiuiBackupHeader:I = 0xb

.field static final TRANSACTION_release:I = 0x5

.field static final TRANSACTION_restoreFile:I = 0x3

.field static final TRANSACTION_setCustomProgress:I = 0x12

.field static final TRANSACTION_setIsNeedBeKilled:I = 0xf

.field static final TRANSACTION_startConfirmationUi:I = 0x2

.field static final TRANSACTION_writeMiuiBackupHeader:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupManager;
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
    const-string v1, "miui.app.backup.IBackupManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/app/backup/IBackupManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lmiui/app/backup/IBackupManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 15
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 265
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 45
    :sswitch_0
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v2, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 59
    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 66
    .local v4, "_arg1":Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 70
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v9, 0x1

    .line 76
    .local v9, "_arg6":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v10, 0x1

    .line 78
    .local v10, "_arg7":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v11

    .local v11, "_arg8":Lmiui/app/backup/IPackageBackupRestoreObserver;
    move-object v2, p0

    .line 79
    invoke-virtual/range {v2 .. v11}, Lmiui/app/backup/IBackupManager$Stub;->backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v2, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Z
    .end local v10    # "_arg7":Z
    .end local v11    # "_arg8":Lmiui/app/backup/IPackageBackupRestoreObserver;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 63
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_2

    .line 74
    .restart local v5    # "_arg2":Ljava/lang/String;
    .restart local v6    # "_arg3":I
    .restart local v7    # "_arg4":Ljava/lang/String;
    .restart local v8    # "_arg5":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 76
    .restart local v9    # "_arg6":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 85
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Z
    :sswitch_2
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lmiui/app/backup/IBackupManager$Stub;->startConfirmationUi(ILjava/lang/String;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v2, 0x1

    goto :goto_0

    .line 96
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 105
    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 107
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    .line 109
    .local v5, "_arg2":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v6

    .line 110
    .local v6, "_arg3":Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-virtual {p0, v3, v4, v5, v6}, Lmiui/app/backup/IBackupManager$Stub;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 102
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":Lmiui/app/backup/IPackageBackupRestoreObserver;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    .line 107
    .restart local v4    # "_arg1":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    .line 116
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/backup/IBackupServiceStateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupServiceStateObserver;

    move-result-object v3

    .line 120
    .local v3, "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 121
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v3, v4}, Lmiui/app/backup/IBackupManager$Stub;->acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z

    move-result v14

    .line 122
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v14, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 123
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 128
    .end local v3    # "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v14    # "_result":Z
    :sswitch_5
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/app/backup/IBackupServiceStateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupServiceStateObserver;

    move-result-object v3

    .line 131
    .restart local v3    # "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    invoke-virtual {p0, v3}, Lmiui/app/backup/IBackupManager$Stub;->release(Lmiui/app/backup/IBackupServiceStateObserver;)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 137
    .end local v3    # "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    :sswitch_6
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Lmiui/app/backup/IBackupManager$Stub;->errorOccur(I)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 146
    .end local v3    # "_arg0":I
    :sswitch_7
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lmiui/app/backup/IBackupManager$Stub;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v14

    .line 148
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 154
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lmiui/app/backup/IBackupManager$Stub;->getCurrentWorkingFeature()I

    move-result v14

    .line 156
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 162
    .end local v14    # "_result":I
    :sswitch_9
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lmiui/app/backup/IBackupManager$Stub;->getState()I

    move-result v14

    .line 164
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 170
    .end local v14    # "_result":I
    :sswitch_a
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 173
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 178
    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_8
    invoke-virtual {p0, v3}, Lmiui/app/backup/IBackupManager$Stub;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_8

    .line 184
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_b
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 187
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 192
    .restart local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_9
    invoke-virtual {p0, v3}, Lmiui/app/backup/IBackupManager$Stub;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 190
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_9

    .line 198
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_c
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lmiui/app/backup/IBackupManager$Stub;->onApkInstalled()V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 205
    :sswitch_d
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 208
    .local v12, "_arg0":J
    invoke-virtual {p0, v12, v13}, Lmiui/app/backup/IBackupManager$Stub;->addCompletedSize(J)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 214
    .end local v12    # "_arg0":J
    :sswitch_e
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lmiui/app/backup/IBackupManager$Stub;->isNeedBeKilled(Ljava/lang/String;)Z

    move-result v14

    .line 218
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v14, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 219
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 224
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_f
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v4, 0x1

    .line 229
    .local v4, "_arg1":Z
    :goto_b
    invoke-virtual {p0, v3, v4}, Lmiui/app/backup/IBackupManager$Stub;->setIsNeedBeKilled(Ljava/lang/String;Z)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 228
    .end local v4    # "_arg1":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 235
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 238
    .local v3, "_arg0":I
    invoke-virtual {p0, v3}, Lmiui/app/backup/IBackupManager$Stub;->isRunningFromMiui(I)Z

    move-result v14

    .line 239
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v14, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 240
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 245
    .end local v3    # "_arg0":I
    .end local v14    # "_result":Z
    :sswitch_11
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lmiui/app/backup/IBackupManager$Stub;->isServiceIdle()Z

    move-result v14

    .line 247
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v14, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 248
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 253
    .end local v14    # "_result":Z
    :sswitch_12
    const-string v2, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 257
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 259
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 260
    .local v5, "_arg2":I
    invoke-virtual {p0, v3, v4, v5}, Lmiui/app/backup/IBackupManager$Stub;->setCustomProgress(III)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 41
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
