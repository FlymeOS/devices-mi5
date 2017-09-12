.class public Landroid/location/LocationPolicyManager;
.super Ljava/lang/Object;
.source "LocationPolicyManager.java"


# static fields
.field private static final ALLOW_PLATFORM_APP_POLICY:Z = true

.field public static final OP_BLE_SCAN_LOCATION:I = 0x3

.field public static final OP_GET_CELL_LOCATION:I = 0x1

.field public static final OP_GET_GPS_LOCATION:I = 0x0

.field public static final OP_WIFI_SCAN_LOCATION:I = 0x2

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_ALL_BACKGROUND:I = 0xff

.field public static final POLICY_REJECT_HIGH_POWER_BACKGROUND:I = 0x1

.field public static final POLICY_REJECT_NON_PASSIVE_BACKGROUND:I = 0x2

.field public static final RULE_ALLOW_ALL:I = 0x0

.field public static final RULE_REJECT_ALL:I = 0xff

.field public static final RULE_REJECT_HIGH_POWER:I = 0x1

.field public static final RULE_REJECT_NON_PASSIVE:I = 0x2

.field private static sInstance:Landroid/location/LocationPolicyManager;


# instance fields
.field private mService:Landroid/location/ILocationPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    return-void
.end method

.method public constructor <init>(Landroid/location/ILocationPolicyManager;)V
    .locals 2
    .param p1, "service"    # Landroid/location/ILocationPolicyManager;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "missing ILocationPolicyManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    .line 61
    return-void
.end method

.method public static dumpPolicy(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "policy"    # I

    .prologue
    .line 235
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 236
    and-int/lit16 v0, p1, 0xff

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "REJECT_ALL_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 239
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "REJECT_HIGH_POWER_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 242
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 243
    const-string v0, "REJECT_NON_PASSIVE_BACKGROUND"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 245
    :cond_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public static dumpRules(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "fout"    # Ljava/io/PrintWriter;
    .param p1, "rules"    # I

    .prologue
    .line 250
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 251
    and-int/lit16 v0, p1, 0xff

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "REJECT_ALL"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 254
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "REJECT_HIGH_POWER"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 257
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 258
    const-string v0, "REJECT_NON_PASSIVE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 260
    :cond_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string/jumbo v0, "locationpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationPolicyManager;

    return-object v0
.end method

.method public static isAllowedByLocationPolicy(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I

    .prologue
    .line 69
    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    if-nez v0, :cond_0

    .line 70
    invoke-static {p0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    sput-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    .line 72
    :cond_0
    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/location/LocationPolicyManager;->checkUidLocationOp(II)Z

    move-result v0

    return v0
.end method

.method public static isAllowedByLocationPolicy(Landroid/content/Context;II)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "op"    # I

    .prologue
    .line 76
    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    sput-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    .line 79
    :cond_0
    sget-object v0, Landroid/location/LocationPolicyManager;->sInstance:Landroid/location/LocationPolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationPolicyManager;->checkUidLocationOp(II)Z

    move-result v0

    return v0
.end method

.method public static isUidValidForPolicy(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    .line 202
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkUidLocationOp(II)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "op"    # I

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationPolicyManager;->checkUidLocationOp(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 135
    :goto_0
    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 135
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkUidNavigationScreenLock(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->checkUidNavigationScreenLock(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 126
    :goto_0
    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 126
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationPolicies()[Landroid/location/LocationPolicy;
    .locals 2

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1}, Landroid/location/ILocationPolicyManager;->getLocationPolicies()[Landroid/location/LocationPolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRestrictBackground()Z
    .locals 2

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1}, Landroid/location/ILocationPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 192
    :goto_0
    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUidPolicy(I)I
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 101
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 2
    .param p1, "policy"    # I

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->getUidsWithPolicy(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 144
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public registerListener(Landroid/location/ILocationPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setFakeGpsFeatureOnState(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setFakeGpsFeatureOnState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLocationPolicies([Landroid/location/LocationPolicy;)V
    .locals 2
    .param p1, "policies"    # [Landroid/location/LocationPolicy;

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->setLocationPolicies([Landroid/location/LocationPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPhoneStationary(ZLandroid/location/Location;)V
    .locals 1
    .param p1, "stationary"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationPolicyManager;->setPhoneStationary(ZLandroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 183
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUidNavigationStart(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->setUidNavigationStart(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUidNavigationStop(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->setUidNavigationStop(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUidPolicy(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/location/ILocationPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationPolicyManager;->unregisterListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateGpsBlackPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationPolicyManager;->mService:Landroid/location/ILocationPolicyManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationPolicyManager;->updateGpsBlackPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    goto :goto_0
.end method
