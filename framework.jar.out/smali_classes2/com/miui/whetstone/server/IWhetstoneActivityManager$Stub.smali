.class public abstract Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.super Landroid/os/Binder;
.source "IWhetstoneActivityManager.java"

# interfaces
.implements Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/IWhetstoneActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.server.IWhetstoneActivityManager"

.field static final TRANSACTION_addAppToServiceControlWhitelist:I = 0x1e

.field static final TRANSACTION_bindWhetstoneService:I = 0x8

.field static final TRANSACTION_checkApplicationsMemoryThreshold:I = 0xd

.field static final TRANSACTION_checkIfPackageIsLocked:I = 0x18

.field static final TRANSACTION_checkIfPackageIsLockedWithUserId:I = 0x19

.field static final TRANSACTION_clearDeadAppFromNative:I = 0x15

.field static final TRANSACTION_distoryActivity:I = 0x7

.field static final TRANSACTION_getAndroidCachedEmptyProcessMemory:I = 0xb

.field static final TRANSACTION_getBackgroundAPPS:I = 0x4

.field static final TRANSACTION_getComponentManagerNative:I = 0x1c

.field static final TRANSACTION_getPackageNamebyPid:I = 0x3

.field static final TRANSACTION_getPartialWakeLockHoldByUid:I = 0x14

.field static final TRANSACTION_getPowerKeeperPolicy:I = 0x13

.field static final TRANSACTION_getProcessReceiverState:I = 0x1b

.field static final TRANSACTION_getSystemPid:I = 0x9

.field static final TRANSACTION_isProcessExecutingServices:I = 0x1d

.field static final TRANSACTION_noteDisableSensor:I = 0x2

.field static final TRANSACTION_noteEnableSensor:I = 0x1

.field static final TRANSACTION_promoteApplicationLevel:I = 0x11

.field static final TRANSACTION_putUidFrozenState:I = 0xe

.field static final TRANSACTION_releaseApplicationPromoteLevel:I = 0x12

.field static final TRANSACTION_removeAppFromServiceControlWhitelist:I = 0x1f

.field static final TRANSACTION_removeTaskById:I = 0x20

.field static final TRANSACTION_scheduleStopService:I = 0x6

.field static final TRANSACTION_scheduleTrimMemory:I = 0x5

.field static final TRANSACTION_setPerformanceComponents:I = 0xa

.field static final TRANSACTION_updateApplicationByLockedState:I = 0xf

.field static final TRANSACTION_updateApplicationByLockedStateWithUserId:I = 0x10

.field static final TRANSACTION_updateApplicationsMemoryThreshold:I = 0xc

.field static final TRANSACTION_updateFrameworkCommonConfig:I = 0x1a

.field static final TRANSACTION_updateUserLockedAppList:I = 0x16

.field static final TRANSACTION_updateUserLockedAppListWithUserId:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;
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
    const-string v1, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 20
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

    .line 388
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v5, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 54
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 56
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 58
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 60
    .local v9, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 62
    .local v10, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 64
    .local v12, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg6":I
    move-object/from16 v5, p0

    .line 65
    invoke-virtual/range {v5 .. v14}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->noteEnableSensor(IIILandroid/os/IBinder;JJI)I

    move-result v18

    .line 66
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    const/4 v5, 0x1

    goto :goto_0

    .line 72
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/os/IBinder;
    .end local v10    # "_arg4":J
    .end local v12    # "_arg5":J
    .end local v14    # "_arg6":I
    .end local v18    # "_result":I
    :sswitch_2
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 76
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 78
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 80
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 81
    .restart local v9    # "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->noteDisableSensor(IIILandroid/os/IBinder;)I

    move-result v18

    .line 82
    .restart local v18    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v5, 0x1

    goto :goto_0

    .line 88
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/os/IBinder;
    .end local v18    # "_result":I
    :sswitch_3
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 91
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v18

    .line 92
    .local v18, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 98
    .end local v6    # "_arg0":I
    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getBackgroundAPPS()[Ljava/lang/String;

    move-result-object v18

    .line 100
    .local v18, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 102
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 106
    .end local v18    # "_result":[Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 110
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 111
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleTrimMemory(II)Z

    move-result v18

    .line 112
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v18, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 113
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 118
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v18    # "_result":Z
    :sswitch_6
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 128
    .local v7, "_arg1":Landroid/content/ComponentName;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v18

    .line 129
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v18, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 126
    .end local v7    # "_arg1":Landroid/content/ComponentName;
    .end local v18    # "_result":Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2

    .line 130
    .restart local v18    # "_result":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 135
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/content/ComponentName;
    .end local v18    # "_result":Z
    :sswitch_7
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 138
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->distoryActivity(I)Z

    move-result v18

    .line 139
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v18, :cond_3

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 140
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .line 145
    .end local v6    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_8
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 148
    .local v6, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->bindWhetstoneService(Landroid/os/IBinder;)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 154
    .end local v6    # "_arg0":Landroid/os/IBinder;
    :sswitch_9
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getSystemPid()I

    move-result v18

    .line 156
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 162
    .end local v18    # "_result":I
    :sswitch_a
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ComponentName;

    .line 165
    .local v6, "_arg0":[Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setPerformanceComponents([Landroid/content/ComponentName;)Z

    move-result v18

    .line 166
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v18, :cond_4

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 167
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 172
    .end local v6    # "_arg0":[Landroid/content/ComponentName;
    .end local v18    # "_result":Z
    :sswitch_b
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getAndroidCachedEmptyProcessMemory()J

    move-result-wide v18

    .line 174
    .local v18, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 180
    .end local v18    # "_result":J
    :sswitch_c
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 183
    .local v4, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 189
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_d
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 195
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 196
    .local v16, "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V

    .line 197
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 201
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v16    # "_arg2":J
    :sswitch_e
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 205
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 206
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->putUidFrozenState(II)Z

    move-result v18

    .line 207
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v18, :cond_5

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 208
    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    .line 213
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v18    # "_result":Z
    :sswitch_f
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v7, 0x1

    .line 218
    .local v7, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationByLockedState(Ljava/lang/String;Z)V

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 217
    .end local v7    # "_arg1":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_7

    .line 224
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 228
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v7, 0x1

    .line 230
    .restart local v7    # "_arg1":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 231
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 228
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .line 237
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 241
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 242
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->promoteApplicationLevel(II)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 248
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_12
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->releaseApplicationPromoteLevel()V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 255
    :sswitch_13
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v18

    .line 257
    .local v18, "_result":Lcom/miui/whetstone/IPowerKeeperPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Lcom/miui/whetstone/IPowerKeeperPolicy;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 259
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 258
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 263
    .end local v18    # "_result":Lcom/miui/whetstone/IPowerKeeperPolicy;
    :sswitch_14
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 266
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPartialWakeLockHoldByUid(I)I

    move-result v18

    .line 267
    .local v18, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 273
    .end local v6    # "_arg0":I
    .end local v18    # "_result":I
    :sswitch_15
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->clearDeadAppFromNative()V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 280
    :sswitch_16
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 283
    .restart local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateUserLockedAppList(Ljava/util/List;)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 289
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_17
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 293
    .restart local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 294
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateUserLockedAppListWithUserId(Ljava/util/List;I)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 300
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg1":I
    :sswitch_18
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v18

    .line 304
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v18, :cond_9

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 305
    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    .line 310
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":Z
    :sswitch_19
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 314
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 315
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z

    move-result v18

    .line 316
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    if-eqz v18, :cond_a

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 317
    :cond_a
    const/4 v5, 0x0

    goto :goto_b

    .line 322
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v18    # "_result":Z
    :sswitch_1a
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 325
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 331
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_1b
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 334
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getProcessReceiverState(I)Z

    move-result v18

    .line 335
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v18, :cond_b

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 336
    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    .line 341
    .end local v6    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_1c
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getComponentManagerNative()Lcom/miui/whetstone/IComponentManager;

    move-result-object v18

    .line 343
    .local v18, "_result":Lcom/miui/whetstone/IComponentManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v18, :cond_c

    invoke-interface/range {v18 .. v18}, Lcom/miui/whetstone/IComponentManager;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 345
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 344
    :cond_c
    const/4 v5, 0x0

    goto :goto_d

    .line 349
    .end local v18    # "_result":Lcom/miui/whetstone/IComponentManager;
    :sswitch_1d
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 352
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->isProcessExecutingServices(I)Z

    move-result v18

    .line 353
    .local v18, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v18, :cond_d

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 354
    :cond_d
    const/4 v5, 0x0

    goto :goto_e

    .line 359
    .end local v6    # "_arg0":I
    .end local v18    # "_result":Z
    :sswitch_1e
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 362
    .restart local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 368
    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1f
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 377
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string v5, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 381
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v7, 0x1

    .line 382
    .local v7, "_arg1":Z
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->removeTaskById(IZ)Z

    move-result v18

    .line 383
    .restart local v18    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v18, :cond_f

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 381
    .end local v7    # "_arg1":Z
    .end local v18    # "_result":Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_f

    .line 384
    .restart local v7    # "_arg1":Z
    .restart local v18    # "_result":Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    .line 41
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
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
