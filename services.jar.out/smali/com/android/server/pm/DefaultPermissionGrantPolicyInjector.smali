.class public Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicyInjector.java"


# static fields
.field private static INCALL_UI:Ljava/lang/String; = null

.field private static final MIUI_APPS:[Ljava/lang/String;

.field private static final MIUI_SYSTEM_APPS:[Ljava/lang/String;

.field private static final RUNTIME_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUNTIME_PERMSSION_PROPTERY:Ljava/lang/String; = "persist.sys.runtime_perm"

.field private static final STATE_DEF:I = -0x1

.field private static final STATE_GRANT:I = 0x0

.field private static final STATE_REVOKE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    const-string v0, "com.android.incallui"

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    .line 29
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.miui.core"

    aput-object v1, v0, v3

    const-string v1, "com.android.soundrecorder"

    aput-object v1, v0, v4

    const-string v1, "com.android.fileexplorer"

    aput-object v1, v0, v5

    const-string v1, "com.android.calendar"

    aput-object v1, v0, v6

    const-string v1, "com.android.deskclock"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.xiaomi.xmsf"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.quicksearchbox"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.miui.home"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.miui.securityadd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.miui.guardprovider"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.providers.downloads"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.miui.cloudservice"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.cleanmaster.sdk"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.incallui"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.trafficctr.miui"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.opera.max.oem.xiaomi"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.xiaomi.account"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.android.bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.miui.cloudbackup"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.miui.voip"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.xiaomi.finddevice"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.xiaomi.payment"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.miui.virtualsim"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.miui.gallery"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.miui.compass"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.miui.bugreport"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.miui.mipub"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.miui.backup"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.xiaomi.midrop"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.miui.analytics"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.miui.systemAdSolution"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.xiaomi.metok"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.android.htmlviewer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    .line 97
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.thememanager"

    aput-object v1, v0, v3

    const-string v1, "com.miui.barcodescanner"

    aput-object v1, v0, v4

    const-string v1, "com.miui.notes"

    aput-object v1, v0, v5

    const-string v1, "com.miui.weather2"

    aput-object v1, v0, v6

    const-string v1, "com.xiaomi.gamecenter"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.miui.fmradio"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.miui.video"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.miui.player"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.xiaomi.market"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.xiaomi.jr"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.xiaomi.vip"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mi.vtalk"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.mipay.wallet"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.miui.tsmclient"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "org.simalliance.openmobileapi.service"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.xiaomi.channel"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.miui.yellowpage"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.xiaomi.o2o"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.miui.miuibbs"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.xiaomi.pass"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.miui.voiceassist"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.xiaomi.mircs"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.android.calculator2"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.xiaomi.scanner"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.milink.service"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.miui.sysbase"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 173
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static grantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 12
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "userId"    # I

    .prologue
    .line 130
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 131
    .local v3, "international":Z
    sget-boolean v4, Lmiui/os/Build;->IS_CTS_BUILD:Z

    .line 132
    .local v4, "isCts":Z
    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-eqz v3, :cond_3

    .line 134
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    const-string v11, "com.baidu.map.location"

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;

    .line 135
    .local v7, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_3

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 136
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 137
    .local v8, "requestedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/pm/SettingBase;

    .line 138
    .local v9, "sb":Lcom/android/server/pm/SettingBase;
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v6

    .line 139
    .local v6, "permissionsState":Lcom/android/server/pm/PermissionsState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 140
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 141
    .local v5, "perm":Ljava/lang/String;
    sget-object v10, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v10, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 142
    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v10, v10, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 143
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_2

    .line 144
    const/16 v10, 0x30

    const/4 v11, 0x0

    invoke-virtual {v6, v0, p1, v10, v11}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    .line 146
    const-string v10, "com.baidu.map.location"

    invoke-virtual {p0, v10, v5, p1}, Lcom/android/server/pm/PackageManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "i":I
    .end local v5    # "perm":Ljava/lang/String;
    .end local v6    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "requestedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "sb":Lcom/android/server/pm/SettingBase;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v3, :cond_4

    .line 161
    :goto_1
    return-void

    .line 159
    :cond_4
    invoke-static {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V

    goto :goto_1
.end method

.method private static grantIncallUiPermission(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 5
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "userId"    # I

    .prologue
    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v2, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "p":Ljava/lang/String;
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 273
    .local v3, "result":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 274
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {p0, v4, v1, p1}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 277
    .end local v1    # "p":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_1
    return-void
.end method

.method public static grantRuntimePermission(Ljava/lang/String;I)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 258
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 259
    .local v0, "service":Lcom/android/server/pm/PackageManagerService;
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-static {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantIncallUiPermission(Lcom/android/server/pm/PackageManagerService;I)V

    .line 262
    :cond_0
    return-void
.end method

.method private static grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V
    .locals 17
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "systemFixed"    # Z
    .param p3, "userFixed"    # Z
    .param p4, "overrideUserChoice"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 179
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$Package;

    .line 180
    .local v13, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_0

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    :cond_0
    monitor-exit v16

    .line 242
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v14, v13, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 185
    .local v14, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 187
    .local v11, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v15

    .line 189
    .local v15, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v15, :cond_3

    .line 190
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    monitor-exit v16

    goto :goto_0

    .line 241
    .end local v11    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 193
    .restart local v11    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v14    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    :try_start_1
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v14, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 194
    new-instance v11, Landroid/util/ArraySet;

    .end local v11    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v11, v14}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 195
    .restart local v11    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 200
    .end local v15    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    .line 201
    .local v10, "grantablePermissionCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_9

    .line 202
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 206
    .local v3, "permission":Ljava/lang/String;
    if-eqz v11, :cond_5

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 201
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 210
    :cond_5
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 211
    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 219
    .local v9, "flags":I
    if-eqz v9, :cond_6

    if-eqz p4, :cond_4

    .line 221
    :cond_6
    const/16 v8, 0x14

    .line 223
    .local v8, "fixedFlags":I
    and-int/lit8 v2, v9, 0x14

    if-nez v2, :cond_4

    .line 227
    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    const/16 v5, 0x20

    .line 230
    .local v5, "newFlags":I
    if-eqz p2, :cond_8

    .line 231
    or-int/lit8 v5, v5, 0x10

    .line 236
    :cond_7
    :goto_3
    iget-object v4, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v2, p0

    move v6, v5

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_2

    .line 232
    :cond_8
    if-eqz p3, :cond_7

    .line 233
    or-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 241
    .end local v3    # "permission":Ljava/lang/String;
    .end local v5    # "newFlags":I
    .end local v8    # "fixedFlags":I
    .end local v9    # "flags":I
    :cond_9
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private static realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 12
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 164
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v11, v0, :cond_0

    .line 165
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    aget-object v1, v0, v11

    move-object v0, p0

    move v3, v2

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V

    .line 164
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const/4 v11, 0x0

    :goto_1
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v11, v0, :cond_1

    .line 168
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    aget-object v6, v0, v11

    move-object v5, p0

    move v7, v2

    move v8, v4

    move v9, v2

    move v10, p1

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V

    .line 167
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 170
    :cond_1
    return-void
.end method

.method public static setCoreRuntimePermissionEnabled(ZII)V
    .locals 3
    .param p0, "grant"    # Z
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .prologue
    .line 245
    if-eqz p2, :cond_0

    .line 255
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 249
    .local v0, "service":Lcom/android/server/pm/PackageManagerService;
    if-eqz p0, :cond_1

    .line 250
    invoke-static {v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V

    .line 251
    const-string v1, "persist.sys.runtime_perm"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_1
    const-string v1, "persist.sys.runtime_perm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
