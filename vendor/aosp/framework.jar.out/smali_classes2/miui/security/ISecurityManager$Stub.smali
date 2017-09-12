.class public abstract Lmiui/security/ISecurityManager$Stub;
.super Landroid/os/Binder;
.source "ISecurityManager.java"

# interfaces
.implements Lmiui/security/ISecurityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/ISecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/ISecurityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.security.ISecurityManager"

.field static final TRANSACTION_activityResume:I = 0x1e

.field static final TRANSACTION_addAccessControlPass:I = 0x6

.field static final TRANSACTION_checkAccessControlPass:I = 0x8

.field static final TRANSACTION_checkAccessControlPassAsUser:I = 0x22

.field static final TRANSACTION_checkAccessControlPattern:I = 0x1a

.field static final TRANSACTION_checkAllowStartActivity:I = 0x25

.field static final TRANSACTION_checkSmsBlocked:I = 0x3

.field static final TRANSACTION_finishAccessControl:I = 0x1d

.field static final TRANSACTION_getAppPermissionControlOpen:I = 0x15

.field static final TRANSACTION_getApplicationAccessControlEnabled:I = 0x9

.field static final TRANSACTION_getApplicationAccessControlEnabledAsUser:I = 0x23

.field static final TRANSACTION_getApplicationChildrenControlEnabled:I = 0xb

.field static final TRANSACTION_getCurrentUserId:I = 0x21

.field static final TRANSACTION_getPackageNameByPid:I = 0x2

.field static final TRANSACTION_getSysAppCracked:I = 0x26

.field static final TRANSACTION_getWakePathCallListLog:I = 0x14

.field static final TRANSACTION_getWakeUpTime:I = 0xe

.field static final TRANSACTION_grantRuntimePermission:I = 0x20

.field static final TRANSACTION_haveAccessControlPattern:I = 0x1b

.field static final TRANSACTION_killNativePackageProcesses:I = 0x1

.field static final TRANSACTION_needFinishAccessControl:I = 0x1c

.field static final TRANSACTION_pushWakePathData:I = 0x11

.field static final TRANSACTION_pushWakePathWhiteList:I = 0x12

.field static final TRANSACTION_putSystemDataStringFile:I = 0xf

.field static final TRANSACTION_readSystemDataStringFile:I = 0x10

.field static final TRANSACTION_registerWakePathCallback:I = 0x17

.field static final TRANSACTION_removeAccessControlPass:I = 0x7

.field static final TRANSACTION_removeAccessControlPassAsUser:I = 0x18

.field static final TRANSACTION_removeWakePathData:I = 0x24

.field static final TRANSACTION_setAccessControlPattern:I = 0x19

.field static final TRANSACTION_setAppPermissionControlOpen:I = 0x16

.field static final TRANSACTION_setApplicationAccessControlEnabled:I = 0xa

.field static final TRANSACTION_setApplicationChildrenControlEnabled:I = 0xc

.field static final TRANSACTION_setCoreRuntimePermissionEnabled:I = 0x1f

.field static final TRANSACTION_setTrackWakePathCallListLogEnabled:I = 0x13

.field static final TRANSACTION_setWakeUpTime:I = 0xd

.field static final TRANSACTION_startInterceptSmsBySender:I = 0x4

.field static final TRANSACTION_stopInterceptSmsBySender:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.security.ISecurityManager"

    invoke-virtual {p0, p0, v0}, Lmiui/security/ISecurityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;
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
    const-string v1, "miui.security.ISecurityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/security/ISecurityManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/security/ISecurityManager;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lmiui/security/ISecurityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/security/ISecurityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 484
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 45
    :sswitch_0
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->killNativePackageProcesses(ILjava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 74
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 79
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v6

    .line 80
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v6, :cond_0

    move v8, v9

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_1

    .line 86
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_4
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 93
    .local v4, "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, Lmiui/security/ISecurityManager$Stub;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    .line 94
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v6, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Z
    :sswitch_5
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lmiui/security/ISecurityManager$Stub;->stopInterceptSmsBySender()Z

    move-result v6

    .line 102
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v6, :cond_3

    move v8, v9

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 108
    .end local v6    # "_result":Z
    :sswitch_6
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->addAccessControlPass(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->removeAccessControlPass(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    .line 131
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 136
    .local v2, "_arg1":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v6

    .line 137
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v6, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v6    # "_result":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_2

    .line 143
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_9
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v6

    .line 147
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v6, :cond_6

    move v8, v9

    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_a
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    move v2, v9

    .line 158
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_7
    move v2, v8

    .line 157
    goto :goto_3

    .line 164
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z

    move-result v6

    .line 168
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v6, :cond_8

    move v8, v9

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_c
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    move v2, v9

    .line 179
    .restart local v2    # "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_9
    move v2, v8

    .line 178
    goto :goto_4

    .line 185
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 190
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lmiui/security/ISecurityManager$Stub;->setWakeUpTime(Ljava/lang/String;J)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    :sswitch_e
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 200
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":J
    :sswitch_f
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 212
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v6, :cond_a

    move v8, v9

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 218
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_10
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    .line 233
    sget-object v8, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    .line 239
    .local v2, "_arg1":Landroid/content/pm/ParceledListSlice;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 240
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, Lmiui/security/ISecurityManager$Stub;->pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 236
    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v4    # "_arg2":I
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_5

    .line 246
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :sswitch_12
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 250
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lmiui/security/ISecurityManager$Stub;->pushWakePathWhiteList(Ljava/util/List;I)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 257
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg1":I
    :sswitch_13
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c

    move v0, v9

    .line 260
    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->setTrackWakePathCallListLogEnabled(Z)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_c
    move v0, v8

    .line 259
    goto :goto_6

    .line 266
    :sswitch_14
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lmiui/security/ISecurityManager$Stub;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 268
    .local v6, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v6, :cond_d

    .line 270
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    invoke-virtual {v6, p3, v9}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 274
    :cond_d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 280
    .end local v6    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_15
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->getAppPermissionControlOpen(I)I

    move-result v6

    .line 284
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 290
    .end local v0    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_16
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->setAppPermissionControlOpen(I)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 299
    .end local v0    # "_arg0":I
    :sswitch_17
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IWakePathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IWakePathCallback;

    move-result-object v0

    .line 302
    .local v0, "_arg0":Lcom/android/internal/app/IWakePathCallback;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 308
    .end local v0    # "_arg0":Lcom/android/internal/app/IWakePathCallback;
    :sswitch_18
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 313
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 319
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_19
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 324
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->setAccessControlPattern(Ljava/lang/String;I)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 330
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_1a
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 335
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPattern(Ljava/lang/String;I)Z

    move-result v6

    .line 336
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v6, :cond_e

    move v8, v9

    :cond_e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 342
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_1b
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->haveAccessControlPattern(I)Z

    move-result v6

    .line 346
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v6, :cond_f

    move v8, v9

    :cond_f
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 352
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_1c
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 355
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->needFinishAccessControl(Landroid/os/IBinder;)Z

    move-result v6

    .line 356
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v6, :cond_10

    move v8, v9

    :cond_10
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 362
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_result":Z
    :sswitch_1d
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->finishAccessControl(Ljava/lang/String;I)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 373
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_1e
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    .line 376
    sget-object v8, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 381
    .local v0, "_arg0":Landroid/content/Intent;
    :goto_7
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->activityResume(Landroid/content/Intent;)I

    move-result v6

    .line 382
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 379
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v6    # "_result":I
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/Intent;
    goto :goto_7

    .line 388
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_1f
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_12

    move v0, v9

    .line 392
    .local v0, "_arg0":Z
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 393
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->setCoreRuntimePermissionEnabled(ZI)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":I
    :cond_12
    move v0, v8

    .line 390
    goto :goto_8

    .line 399
    :sswitch_20
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->grantRuntimePermission(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 408
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_21
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lmiui/security/ISecurityManager$Stub;->getCurrentUserId()I

    move-result v6

    .line 410
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 416
    .end local v6    # "_result":I
    :sswitch_22
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_14

    .line 421
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 427
    .local v2, "_arg1":Landroid/content/Intent;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 428
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v6

    .line 429
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    if-eqz v6, :cond_13

    move v8, v9

    :cond_13
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 424
    .end local v2    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Z
    :cond_14
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/Intent;
    goto :goto_9

    .line 435
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/Intent;
    :sswitch_23
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 440
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lmiui/security/ISecurityManager$Stub;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v6

    .line 441
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v6, :cond_15

    move v8, v9

    :cond_15
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 447
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_24
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 450
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmiui/security/ISecurityManager$Stub;->removeWakePathData(I)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 456
    .end local v0    # "_arg0":I
    :sswitch_25
    const-string v10, "miui.security.ISecurityManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_17

    .line 463
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 469
    .local v4, "_arg2":Landroid/content/Intent;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 470
    .local v5, "_arg3":I
    invoke-virtual {p0, v0, v2, v4, v5}, Lmiui/security/ISecurityManager$Stub;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v6

    .line 471
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v6, :cond_16

    move v8, v9

    :cond_16
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 466
    .end local v4    # "_arg2":Landroid/content/Intent;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/content/Intent;
    goto :goto_a

    .line 477
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/content/Intent;
    :sswitch_26
    const-string v8, "miui.security.ISecurityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lmiui/security/ISecurityManager$Stub;->getSysAppCracked()I

    move-result v6

    .line 479
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
