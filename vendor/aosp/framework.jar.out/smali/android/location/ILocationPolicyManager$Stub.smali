.class public abstract Landroid/location/ILocationPolicyManager$Stub;
.super Landroid/os/Binder;
.source "ILocationPolicyManager.java"

# interfaces
.implements Landroid/location/ILocationPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationPolicyManager"

.field static final TRANSACTION_checkUidLocationOp:I = 0x8

.field static final TRANSACTION_checkUidNavigationScreenLock:I = 0x6

.field static final TRANSACTION_getLocationPolicies:I = 0xc

.field static final TRANSACTION_getRestrictBackground:I = 0xe

.field static final TRANSACTION_getUidPolicy:I = 0x2

.field static final TRANSACTION_getUidsWithPolicy:I = 0x3

.field static final TRANSACTION_isUidForeground:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x9

.field static final TRANSACTION_setFakeGpsFeatureOnState:I = 0xf

.field static final TRANSACTION_setLocationPolicies:I = 0xb

.field static final TRANSACTION_setPhoneStationary:I = 0x10

.field static final TRANSACTION_setRestrictBackground:I = 0xd

.field static final TRANSACTION_setUidNavigationStart:I = 0x4

.field static final TRANSACTION_setUidNavigationStop:I = 0x5

.field static final TRANSACTION_setUidPolicy:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0xa

.field static final TRANSACTION_updateGpsBlackPackages:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.ILocationPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.location.ILocationPolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationPolicyManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/location/ILocationPolicyManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/location/ILocationPolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/location/ILocationPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :sswitch_0
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/location/ILocationPolicyManager$Stub;->setUidPolicy(II)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_2
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->getUidPolicy(I)I

    move-result v3

    .line 67
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_3
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v3

    .line 77
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":I
    .end local v3    # "_result":[I
    :sswitch_4
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setUidNavigationStart(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setUidNavigationStop(I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v6, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->checkUidNavigationScreenLock(I)Z

    move-result v3

    .line 105
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 111
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v6, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->isUidForeground(I)Z

    move-result v3

    .line 115
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_8
    const-string v6, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/location/ILocationPolicyManager$Stub;->checkUidLocationOp(II)Z

    move-result v3

    .line 127
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :sswitch_9
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyListener;

    move-result-object v0

    .line 136
    .local v0, "_arg0":Landroid/location/ILocationPolicyListener;
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->registerListener(Landroid/location/ILocationPolicyListener;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":Landroid/location/ILocationPolicyListener;
    :sswitch_a
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationPolicyListener;

    move-result-object v0

    .line 145
    .restart local v0    # "_arg0":Landroid/location/ILocationPolicyListener;
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->unregisterListener(Landroid/location/ILocationPolicyListener;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v0    # "_arg0":Landroid/location/ILocationPolicyListener;
    :sswitch_b
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    sget-object v4, Landroid/location/LocationPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/LocationPolicy;

    .line 154
    .local v0, "_arg0":[Landroid/location/LocationPolicy;
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setLocationPolicies([Landroid/location/LocationPolicy;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    .end local v0    # "_arg0":[Landroid/location/LocationPolicy;
    :sswitch_c
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/location/ILocationPolicyManager$Stub;->getLocationPolicies()[Landroid/location/LocationPolicy;

    move-result-object v3

    .line 162
    .local v3, "_result":[Landroid/location/LocationPolicy;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 168
    .end local v3    # "_result":[Landroid/location/LocationPolicy;
    :sswitch_d
    const-string v6, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v5

    .line 171
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v4

    .line 170
    goto :goto_1

    .line 177
    :sswitch_e
    const-string v6, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroid/location/ILocationPolicyManager$Stub;->getRestrictBackground()Z

    move-result v3

    .line 179
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v3, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v3    # "_result":Z
    :sswitch_f
    const-string v6, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v0, v5

    .line 188
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/location/ILocationPolicyManager$Stub;->setFakeGpsFeatureOnState(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v4

    .line 187
    goto :goto_2

    .line 193
    :sswitch_10
    const-string v6, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v0, v5

    .line 197
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 198
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 203
    .local v2, "_arg1":Landroid/location/Location;
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/location/ILocationPolicyManager$Stub;->setPhoneStationary(ZLandroid/location/Location;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/location/Location;
    :cond_6
    move v0, v4

    .line 195
    goto :goto_3

    .line 201
    .restart local v0    # "_arg0":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/location/Location;
    goto :goto_4

    .line 208
    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/location/Location;
    :sswitch_11
    const-string v4, "android.location.ILocationPolicyManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 211
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Landroid/location/ILocationPolicyManager$Stub;->updateGpsBlackPackages(Ljava/util/List;)V

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
