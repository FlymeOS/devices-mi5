.class public abstract Lcom/miui/whetstone/IWhetstone$Stub;
.super Landroid/os/Binder;
.source "IWhetstone.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IWhetstone$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IWhetstone"

.field static final TRANSACTION_cancelLocationRequest:I = 0x1c

.field static final TRANSACTION_checkAppTheShotScreenPermission:I = 0x25

.field static final TRANSACTION_checkIfHaveTheCallFunctionPermission:I = 0x1a

.field static final TRANSACTION_checkUserCommonWords:I = 0x27

.field static final TRANSACTION_deepClean:I = 0x15

.field static final TRANSACTION_getApplicationThread:I = 0x7

.field static final TRANSACTION_getBatteryCapacity:I = 0x1e

.field static final TRANSACTION_getBatteryChargeTime:I = 0x1f

.field static final TRANSACTION_getBatteryCurrentNow:I = 0x21

.field static final TRANSACTION_getBatteryStandbyTime:I = 0x20

.field static final TRANSACTION_getComponentManager:I = 0x24

.field static final TRANSACTION_getForegroundApplicationThread:I = 0x8

.field static final TRANSACTION_getForegroundApplicationUid:I = 0x22

.field static final TRANSACTION_getForegroundPreTaskApp:I = 0x28

.field static final TRANSACTION_getMetokToken:I = 0x16

.field static final TRANSACTION_getSmartConfigLevel:I = 0x14

.field static final TRANSACTION_getWhetstoneLevel:I = 0x6

.field static final TRANSACTION_getWhetstonePackage:I = 0x2

.field static final TRANSACTION_getWhetstonePackageInfo:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0xd

.field static final TRANSACTION_installPackage:I = 0xf

.field static final TRANSACTION_isInCharging:I = 0x10

.field static final TRANSACTION_isNeeded:I = 0x1

.field static final TRANSACTION_killApplication:I = 0x23

.field static final TRANSACTION_putSetting:I = 0xe

.field static final TRANSACTION_registTargetProcessForegroundNotify:I = 0x26

.field static final TRANSACTION_registerAppObserver:I = 0x29

.field static final TRANSACTION_registerMiuiWhetstoneCloudSync:I = 0x17

.field static final TRANSACTION_registerMiuiWhetstoneCloudSyncList:I = 0x18

.field static final TRANSACTION_registerPackageStatusNotify:I = 0x4

.field static final TRANSACTION_requestCurrentLocation:I = 0x1b

.field static final TRANSACTION_screenShot:I = 0xc

.field static final TRANSACTION_setWhetstoneLevel:I = 0x5

.field static final TRANSACTION_unregisterAppObserver:I = 0x2a

.field static final TRANSACTION_unregisterMiuiWhetstoneCloudSync:I = 0x19

.field static final TRANSACTION_updateProcessCurrentPss:I = 0x1d

.field static final TRANSACTION_wifiSmartConfigMacAsyncWithUid:I = 0x11

.field static final TRANSACTION_wifiSmartConfigStartAsync:I = 0x9

.field static final TRANSACTION_wifiSmartConfigStop:I = 0xa

.field static final TRANSACTION_wifiSmartConfigSupport:I = 0xb

.field static final TRANSACTION_wifiSmartConfigUap:I = 0x13

.field static final TRANSACTION_wifiSmartConfigUapAsync:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IWhetstone$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;
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
    const-string v1, "com.miui.whetstone.IWhetstone"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/miui/whetstone/IWhetstone;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 24
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

    .line 557
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 53
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->isNeeded(I)Z

    move-result v22

    .line 54
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v22, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v4, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 60
    .end local v5    # "_arg0":I
    .end local v22    # "_result":Z
    :sswitch_2
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 63
    .local v5, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v22

    .line 64
    .local v22, "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v22, :cond_1

    .line 66
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 76
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v22    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :sswitch_3
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v22

    .line 80
    .restart local v22    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v22, :cond_2

    .line 82
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_3
    const/4 v4, 0x1

    goto :goto_0

    .line 86
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 92
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :sswitch_4
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 96
    .local v12, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 98
    .local v21, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IPkgStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPkgStatusCallback;

    move-result-object v7

    .line 99
    .local v7, "_arg2":Lcom/miui/whetstone/IPkgStatusCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->registerPackageStatusNotify(Ljava/util/List;Ljava/util/List;Lcom/miui/whetstone/IPkgStatusCallback;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 105
    .end local v7    # "_arg2":Lcom/miui/whetstone/IPkgStatusCallback;
    .end local v12    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 108
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->setWhetstoneLevel(I)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 114
    .end local v5    # "_arg0":I
    :sswitch_6
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstoneLevel()I

    move-result v22

    .line 116
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 122
    .end local v22    # "_result":I
    :sswitch_7
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 125
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->getApplicationThread(I)Landroid/os/IBinder;

    move-result-object v22

    .line 126
    .local v22, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 128
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 132
    .end local v5    # "_arg0":I
    .end local v22    # "_result":Landroid/os/IBinder;
    :sswitch_8
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getForegroundApplicationThread()Landroid/os/IBinder;

    move-result-object v22

    .line 134
    .restart local v22    # "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 136
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 140
    .end local v22    # "_result":Landroid/os/IBinder;
    :sswitch_9
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .local v10, "_arg5":Landroid/os/IBinder;
    move-object/from16 v4, p0

    .line 153
    invoke-virtual/range {v4 .. v10}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 154
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 158
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":Landroid/os/IBinder;
    :sswitch_a
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigStop()V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 165
    :sswitch_b
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigSupport()Z

    move-result v22

    .line 167
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v22, :cond_3

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 168
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 173
    .end local v22    # "_result":Z
    :sswitch_c
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 177
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 178
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->screenShot(II)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 179
    .local v22, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v22, :cond_4

    .line 181
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    :goto_5
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 185
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 191
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Landroid/graphics/Bitmap;
    :sswitch_d
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    sget-object v4, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputEvent;

    .line 200
    .local v5, "_arg0":Landroid/view/InputEvent;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 201
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v22

    .line 202
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v22, :cond_6

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 197
    .end local v5    # "_arg0":Landroid/view/InputEvent;
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/view/InputEvent;
    goto :goto_6

    .line 203
    .restart local v6    # "_arg1":I
    .restart local v22    # "_result":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_7

    .line 208
    .end local v5    # "_arg0":Landroid/view/InputEvent;
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_e
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 215
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 216
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v22, :cond_7

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 217
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 222
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v22    # "_result":Z
    :sswitch_f
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 225
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 231
    .local v5, "_arg0":Landroid/net/Uri;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v6

    .line 233
    .local v6, "_arg1":Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 234
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z

    move-result v22

    .line 235
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v22, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 228
    .end local v5    # "_arg0":Landroid/net/Uri;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/Uri;
    goto :goto_9

    .line 236
    .restart local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .restart local v7    # "_arg2":I
    .restart local v22    # "_result":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 241
    .end local v5    # "_arg0":Landroid/net/Uri;
    .end local v6    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :sswitch_10
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->isInCharging()Z

    move-result v22

    .line 243
    .restart local v22    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v22, :cond_a

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 244
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 249
    .end local v22    # "_result":Z
    :sswitch_11
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 259
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 261
    .restart local v9    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 263
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .local v11, "_arg6":Landroid/os/IBinder;
    move-object/from16 v4, p0

    .line 264
    invoke-virtual/range {v4 .. v11}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 265
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 269
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":Landroid/os/IBinder;
    :sswitch_12
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 273
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 275
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 277
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 279
    .restart local v8    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "_arg4":Landroid/os/IBinder;
    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .line 280
    invoke-virtual/range {v13 .. v19}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V

    .line 281
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 285
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_arg4":Landroid/os/IBinder;
    .end local v16    # "_arg2":J
    :sswitch_13
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 289
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 293
    .restart local v16    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg3":Ljava/lang/String;
    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v18, v8

    .line 294
    invoke-virtual/range {v13 .. v18}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 295
    .local v22, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 301
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg2":J
    .end local v22    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getSmartConfigLevel()I

    move-result v22

    .line 303
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 309
    .end local v22    # "_result":I
    :sswitch_15
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 312
    sget-object v4, Lcom/miui/whetstone/WhetstoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/whetstone/WhetstoneConfig;

    .line 317
    .local v5, "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I

    move-result v22

    .line 318
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 315
    .end local v5    # "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    .end local v22    # "_result":I
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    goto :goto_c

    .line 324
    .end local v5    # "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    :sswitch_16
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getMetokToken()Ljava/lang/String;

    move-result-object v22

    .line 326
    .local v22, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 332
    .end local v22    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 335
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 341
    .local v5, "_arg0":Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 342
    sget-object v4, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/whetstone/CloudControlInfo;

    .line 347
    .local v6, "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I

    move-result v22

    .line 348
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 338
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    .end local v22    # "_result":I
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 345
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    goto :goto_e

    .line 354
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg1":Lcom/miui/whetstone/CloudControlInfo;
    :sswitch_18
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 357
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 363
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_f
    sget-object v4, Lcom/miui/whetstone/CloudControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v20

    .line 364
    .local v20, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/miui/whetstone/IWhetstone$Stub;->registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I

    move-result v22

    .line 365
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 360
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/CloudControlInfo;>;"
    .end local v22    # "_result":I
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 371
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_19
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 374
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 379
    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I

    move-result v22

    .line 380
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 377
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    .end local v22    # "_result":I
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 386
    .end local v5    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1a
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 390
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 392
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 393
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->checkIfHaveTheCallFunctionPermission(III)Z

    move-result v22

    .line 394
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v22, :cond_10

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 395
    :cond_10
    const/4 v4, 0x0

    goto :goto_11

    .line 400
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :sswitch_1b
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/ILocationCallback;

    move-result-object v6

    .line 405
    .local v6, "_arg1":Lcom/miui/whetstone/ILocationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 411
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lcom/miui/whetstone/ILocationCallback;
    :sswitch_1c
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/ILocationCallback;

    move-result-object v5

    .line 414
    .local v5, "_arg0":Lcom/miui/whetstone/ILocationCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 420
    .end local v5    # "_arg0":Lcom/miui/whetstone/ILocationCallback;
    :sswitch_1d
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 424
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 425
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->updateProcessCurrentPss(II)V

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 431
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_1e
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryCapacity()I

    move-result v22

    .line 433
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 439
    .end local v22    # "_result":I
    :sswitch_1f
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryChargeTime()J

    move-result-wide v22

    .line 441
    .local v22, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 443
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 447
    .end local v22    # "_result":J
    :sswitch_20
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryStandbyTime()J

    move-result-wide v22

    .line 449
    .restart local v22    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 451
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 455
    .end local v22    # "_result":J
    :sswitch_21
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getBatteryCurrentNow()I

    move-result v22

    .line 457
    .local v22, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 463
    .end local v22    # "_result":I
    :sswitch_22
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getForegroundApplicationUid()I

    move-result v22

    .line 465
    .restart local v22    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 471
    .end local v22    # "_result":I
    :sswitch_23
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 477
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 478
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->killApplication(Ljava/lang/String;II)Z

    move-result v22

    .line 479
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v22, :cond_11

    const/4 v4, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 480
    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    .line 485
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v22    # "_result":Z
    :sswitch_24
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getComponentManager()Lcom/miui/whetstone/IComponentManager;

    move-result-object v22

    .line 487
    .local v22, "_result":Lcom/miui/whetstone/IComponentManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v22, :cond_12

    invoke-interface/range {v22 .. v22}, Lcom/miui/whetstone/IComponentManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 489
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 488
    :cond_12
    const/4 v4, 0x0

    goto :goto_13

    .line 493
    .end local v22    # "_result":Lcom/miui/whetstone/IComponentManager;
    :sswitch_25
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 497
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 498
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/miui/whetstone/IWhetstone$Stub;->checkAppTheShotScreenPermission(II)Z

    move-result v22

    .line 499
    .local v22, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v22, :cond_13

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 500
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 505
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v22    # "_result":Z
    :sswitch_26
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 511
    .restart local v21    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IProcessForegroundCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IProcessForegroundCallback;

    move-result-object v7

    .line 512
    .local v7, "_arg2":Lcom/miui/whetstone/IProcessForegroundCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1, v7}, Lcom/miui/whetstone/IWhetstone$Stub;->registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 518
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Lcom/miui/whetstone/IProcessForegroundCallback;
    .end local v21    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_27
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 521
    .local v5, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->checkUserCommonWords([B)V

    .line 522
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 526
    .end local v5    # "_arg0":[B
    :sswitch_28
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;

    move-result-object v22

    .line 528
    .local v22, "_result":Lcom/miui/whetstone/AppInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    if-eqz v22, :cond_14

    .line 530
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/miui/whetstone/AppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 536
    :goto_15
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 534
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 540
    .end local v22    # "_result":Lcom/miui/whetstone/AppInfo;
    :sswitch_29
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IAppObserver;

    move-result-object v5

    .line 543
    .local v5, "_arg0":Lcom/miui/whetstone/IAppObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 549
    .end local v5    # "_arg0":Lcom/miui/whetstone/IAppObserver;
    :sswitch_2a
    const-string v4, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/whetstone/IAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IAppObserver;

    move-result-object v5

    .line 552
    .restart local v5    # "_arg0":Lcom/miui/whetstone/IAppObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    const/4 v4, 0x1

    goto/16 :goto_0

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
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
