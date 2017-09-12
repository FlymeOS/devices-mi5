.class public abstract Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;
.super Landroid/os/Binder;
.source "IPowerKeeperPolicy.java"

# interfaces
.implements Lcom/miui/whetstone/IPowerKeeperPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IPowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IPowerKeeperPolicy"

.field static final TRANSACTION_getAlarmPolicies:I = 0x4

.field static final TRANSACTION_getAppBroadcastControlStat:I = 0x11

.field static final TRANSACTION_getBroadcastPolicies:I = 0x2

.field static final TRANSACTION_getSensorControlPolicy:I = 0xb

.field static final TRANSACTION_isLeScanAllowed:I = 0xd

.field static final TRANSACTION_notifyAppsPreInstalled:I = 0x9

.field static final TRANSACTION_offerPowerKeeperIBinder:I = 0x6

.field static final TRANSACTION_setAlarmPolicy:I = 0x3

.field static final TRANSACTION_setAppBroadcastControlStat:I = 0x10

.field static final TRANSACTION_setAppPushAlarmLeader:I = 0x8

.field static final TRANSACTION_setAppPushAlarmProperty:I = 0x7

.field static final TRANSACTION_setBroadcastPolicy:I = 0x1

.field static final TRANSACTION_setLeScanFeature:I = 0xc

.field static final TRANSACTION_setLeScanParam:I = 0x12

.field static final TRANSACTION_setSensorControlPolicy:I = 0xa

.field static final TRANSACTION_startLeScan:I = 0xe

.field static final TRANSACTION_stopLeScan:I = 0xf

.field static final TRANSACTION_updateWakelockBlockedUid:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperPolicy;
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
    const-string v1, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    sget-object v6, Lcom/miui/whetstone/BroadcastPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/whetstone/BroadcastPolicy;

    .line 51
    .local v0, "_arg0":[Lcom/miui/whetstone/BroadcastPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 52
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setBroadcastPolicy([Lcom/miui/whetstone/BroadcastPolicy;Z)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_0
    move v1, v5

    .line 51
    goto :goto_1

    .line 58
    .end local v0    # "_arg0":[Lcom/miui/whetstone/BroadcastPolicy;
    :sswitch_2
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getBroadcastPolicies()[Lcom/miui/whetstone/BroadcastPolicy;

    move-result-object v3

    .line 60
    .local v3, "_result":[Lcom/miui/whetstone/BroadcastPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 66
    .end local v3    # "_result":[Lcom/miui/whetstone/BroadcastPolicy;
    :sswitch_3
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    sget-object v6, Lcom/miui/whetstone/AlarmPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/whetstone/AlarmPolicy;

    .line 70
    .local v0, "_arg0":[Lcom/miui/whetstone/AlarmPolicy;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 71
    .restart local v1    # "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAlarmPolicy([Lcom/miui/whetstone/AlarmPolicy;Z)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_1
    move v1, v5

    .line 70
    goto :goto_2

    .line 77
    .end local v0    # "_arg0":[Lcom/miui/whetstone/AlarmPolicy;
    :sswitch_4
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getAlarmPolicies()[Lcom/miui/whetstone/AlarmPolicy;

    move-result-object v3

    .line 79
    .local v3, "_result":[Lcom/miui/whetstone/AlarmPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 85
    .end local v3    # "_result":[Lcom/miui/whetstone/AlarmPolicy;
    :sswitch_5
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 92
    .local v2, "_arg2":Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->updateWakelockBlockedUid(ILjava/lang/String;Z)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2    # "_arg2":Z
    :cond_2
    move v2, v5

    .line 91
    goto :goto_3

    .line 98
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 101
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->offerPowerKeeperIBinder(Landroid/os/IBinder;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 107
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_7
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 118
    .local v1, "_arg1":Landroid/content/Intent;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    move v2, v4

    .line 119
    .restart local v2    # "_arg2":Z
    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppPushAlarmProperty(ILandroid/content/Intent;Z)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 115
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/Intent;
    goto :goto_4

    :cond_4
    move v2, v5

    .line 118
    goto :goto_5

    .line 125
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    :sswitch_8
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 135
    .restart local v1    # "_arg1":Landroid/content/Intent;
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppPushAlarmLeader(ILandroid/content/Intent;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    .end local v1    # "_arg1":Landroid/content/Intent;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/Intent;
    goto :goto_6

    .line 141
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    :sswitch_9
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->notifyAppsPreInstalled()V

    goto/16 :goto_0

    .line 147
    :sswitch_a
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v1, v4

    .line 152
    .local v1, "_arg1":Z
    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setSensorControlPolicy(IZ)I

    move-result v3

    .line 153
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":I
    :cond_6
    move v1, v5

    .line 151
    goto :goto_7

    .line 159
    .end local v0    # "_arg0":I
    :sswitch_b
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getSensorControlPolicy(I)Z

    move-result v3

    .line 163
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v3, :cond_7

    move v5, v4

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_c
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    move v0, v4

    .line 172
    .local v0, "_arg0":Z
    :goto_8
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setLeScanFeature(Z)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_8
    move v0, v5

    .line 171
    goto :goto_8

    .line 178
    :sswitch_d
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->isLeScanAllowed(I)Z

    move-result v3

    .line 182
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v3, :cond_9

    move v5, v4

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_e
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 191
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 196
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_9
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->startLeScan(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 194
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .line 201
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_f
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 204
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 209
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->stopLeScan(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 207
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_a

    .line 214
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_10
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    move v1, v4

    .line 219
    .restart local v1    # "_arg1":Z
    :goto_b
    invoke-virtual {p0, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBroadcastControlStat(IZ)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_c
    move v1, v5

    .line 218
    goto :goto_b

    .line 225
    .end local v0    # "_arg0":I
    :sswitch_11
    const-string v6, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getAppBroadcastControlStat(I)Z

    move-result v3

    .line 229
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v3, :cond_d

    move v5, v4

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_12
    const-string v5, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 238
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 243
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setLeScanParam(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 241
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_c

    .line 38
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
