.class final Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"


# instance fields
.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    .line 63
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 74
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 81
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 87
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    .line 93
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 103
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 108
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 113
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 118
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 134
    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 858
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

.method private getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 742
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 743
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    .line 744
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 746
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 676
    iget-object v6, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x200

    invoke-virtual {v6, p1, v7, v8, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 679
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1

    move-object v2, v5

    .line 691
    :cond_0
    :goto_0
    return-object v2

    .line 682
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 683
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 684
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 685
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 687
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_0

    .line 683
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v2    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2
    move-object v2, v5

    .line 691
    goto :goto_0
.end method

.method private getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 696
    iget-object v6, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x200

    invoke-virtual {v6, p1, v7, v8, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 699
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1

    move-object v2, v5

    .line 711
    :cond_0
    :goto_0
    return-object v2

    .line 702
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 703
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 704
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 705
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 707
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_0

    .line 703
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v2    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2
    move-object v2, v5

    .line 711
    goto :goto_0
.end method

.method private getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v7, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 722
    .local v6, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    iget-object v8, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    iget-object v9, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x200

    invoke-virtual {v8, v2, v9, v10, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 727
    .local v1, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 721
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 732
    .local v5, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_0

    .line 733
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 737
    .end local v1    # "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_2
    return-object v7
.end method

.method private getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method private getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 754
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 755
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 758
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    return-object v0

    .restart local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    move-object v0, v1

    .line 756
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 758
    goto :goto_0
.end method

.method private grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 629
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to sim call manager for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 632
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 634
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 580
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 582
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 583
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 584
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 586
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 591
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 593
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 594
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 596
    :cond_0
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 85
    .param p1, "userId"    # I

    .prologue
    .line 196
    const-string v82, "DefaultPermGrantPolicy"

    new-instance v83, Ljava/lang/StringBuilder;

    invoke-direct/range {v83 .. v83}, Ljava/lang/StringBuilder;-><init>()V

    const-string v84, "Granting permissions to default platform handlers for user "

    invoke-virtual/range {v83 .. v84}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v83

    move-object/from16 v0, v83

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v83

    invoke-virtual/range {v83 .. v83}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v83

    invoke-static/range {v82 .. v83}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v83, v0

    monitor-enter v83

    .line 207
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v50, v0

    .line 208
    .local v50, "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v55, v0

    .line 209
    .local v55, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v79, v0

    .line 210
    .local v79, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v69, v0

    .line 211
    .local v69, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v35, v0

    .line 212
    .local v35, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v67, v0

    .line 213
    .local v67, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    move-object/from16 v74, v0

    .line 214
    .local v74, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v83
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    if-eqz v50, :cond_b

    move-object/from16 v0, v50

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v49

    .line 218
    .local v49, "imePackageNames":[Ljava/lang/String;
    :goto_0
    if-eqz v79, :cond_c

    move-object/from16 v0, v79

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v78

    .line 220
    .local v78, "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_1
    if-eqz v55, :cond_d

    move-object/from16 v0, v55

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v54

    .line 222
    .local v54, "locationPackageNames":[Ljava/lang/String;
    :goto_2
    if-eqz v69, :cond_e

    move-object/from16 v0, v69

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v68

    .line 224
    .local v68, "smsAppPackageNames":[Ljava/lang/String;
    :goto_3
    if-eqz v35, :cond_f

    move-object/from16 v0, v35

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v34

    .line 226
    .local v34, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_4
    if-eqz v67, :cond_10

    move-object/from16 v0, v67

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v66

    .line 228
    .local v66, "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_5
    if-eqz v74, :cond_11

    const-string v82, "com.android.contacts"

    move-object/from16 v0, v74

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v28

    .line 230
    .local v28, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_6
    if-eqz v74, :cond_12

    const-string v82, "com.android.calendar"

    move-object/from16 v0, v74

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 233
    .local v13, "calendarSyncAdapterPackages":[Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v83, v0

    monitor-enter v83

    .line 235
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v51

    .line 237
    .local v51, "installerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v51, :cond_0

    invoke-static/range {v51 .. v51}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_0

    .line 239
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 243
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    move-object/from16 v82, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v75

    .line 245
    .local v75, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v75, :cond_1

    invoke-static/range {v75 .. v75}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_1

    .line 247
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 248
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 249
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 253
    :cond_1
    new-instance v62, Landroid/content/Intent;

    const-string v82, "android.intent.action.MAIN"

    move-object/from16 v0, v62

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v62, "setupIntent":Landroid/content/Intent;
    const-string v82, "android.intent.category.SETUP_WIZARD"

    move-object/from16 v0, v62

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v63

    .line 257
    .local v63, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v63, :cond_2

    invoke-static/range {v63 .. v63}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_2

    .line 259
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 260
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 264
    :cond_2
    new-instance v15, Landroid/content/Intent;

    const-string v82, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v82

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v15, "cameraIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v16

    .line 267
    .local v16, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v16, :cond_3

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_3

    .line 269
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 270
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 271
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 275
    :cond_3
    const-string v82, "media"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v58

    .line 277
    .local v58, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v58, :cond_4

    .line 278
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 282
    :cond_4
    const-string v82, "downloads"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v38

    .line 284
    .local v38, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v38, :cond_5

    .line 285
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 289
    :cond_5
    new-instance v39, Landroid/content/Intent;

    const-string v82, "android.intent.action.VIEW_DOWNLOADS"

    move-object/from16 v0, v39

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v39, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v40

    .line 292
    .local v40, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v40, :cond_6

    invoke-static/range {v40 .. v40}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_6

    .line 294
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 298
    :cond_6
    const-string v82, "com.android.externalstorage.documents"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v73

    .line 300
    .local v73, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v73, :cond_7

    .line 301
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 305
    :cond_7
    new-instance v21, Landroid/content/Intent;

    const-string v82, "android.credentials.INSTALL"

    move-object/from16 v0, v21

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v21, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v22

    .line 308
    .local v22, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v22, :cond_8

    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_8

    .line 310
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 314
    :cond_8
    if-nez v34, :cond_13

    .line 315
    new-instance v36, Landroid/content/Intent;

    const-string v82, "android.intent.action.DIAL"

    move-object/from16 v0, v36

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v36, "dialerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    .line 318
    .local v37, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v37, :cond_9

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 331
    .end local v36    # "dialerIntent":Landroid/content/Intent;
    .end local v37    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_9
    if-eqz v66, :cond_15

    .line 332
    move-object/from16 v5, v66

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v52, v0

    .local v52, "len$":I
    const/16 v46, 0x0

    .local v46, "i$":I
    :goto_8
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_15

    aget-object v65, v5, v46

    .line 333
    .local v65, "simCallManagerPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v64

    .line 335
    .local v64, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v64, :cond_a

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    :cond_a
    add-int/lit8 v46, v46, 0x1

    goto :goto_8

    .line 214
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v15    # "cameraIntent":Landroid/content/Intent;
    .end local v16    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v21    # "certInstallerIntent":Landroid/content/Intent;
    .end local v22    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v28    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v34    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v35    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v38    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v39    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v40    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v46    # "i$":I
    .end local v49    # "imePackageNames":[Ljava/lang/String;
    .end local v50    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v51    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v52    # "len$":I
    .end local v54    # "locationPackageNames":[Ljava/lang/String;
    .end local v55    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v58    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v62    # "setupIntent":Landroid/content/Intent;
    .end local v63    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v64    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v65    # "simCallManagerPackageName":Ljava/lang/String;
    .end local v66    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v67    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v68    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v69    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v73    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v74    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v75    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v78    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v79    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :catchall_0
    move-exception v82

    :try_start_2
    monitor-exit v83
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v82

    .line 216
    .restart local v35    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v50    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v55    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v67    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v69    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v74    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .restart local v79    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_b
    const/16 v49, 0x0

    goto/16 :goto_0

    .line 218
    .restart local v49    # "imePackageNames":[Ljava/lang/String;
    :cond_c
    const/16 v78, 0x0

    goto/16 :goto_1

    .line 220
    .restart local v78    # "voiceInteractPackageNames":[Ljava/lang/String;
    :cond_d
    const/16 v54, 0x0

    goto/16 :goto_2

    .line 222
    .restart local v54    # "locationPackageNames":[Ljava/lang/String;
    :cond_e
    const/16 v68, 0x0

    goto/16 :goto_3

    .line 224
    .restart local v68    # "smsAppPackageNames":[Ljava/lang/String;
    :cond_f
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 226
    .restart local v34    # "dialerAppPackageNames":[Ljava/lang/String;
    :cond_10
    const/16 v66, 0x0

    goto/16 :goto_5

    .line 228
    .restart local v66    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_11
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 230
    .restart local v28    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 322
    .restart local v13    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .restart local v15    # "cameraIntent":Landroid/content/Intent;
    .restart local v16    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v21    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v22    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v38    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v39    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v40    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v51    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v58    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v62    # "setupIntent":Landroid/content/Intent;
    .restart local v63    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v73    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v75    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :cond_13
    move-object/from16 v5, v34

    .restart local v5    # "arr$":[Ljava/lang/String;
    :try_start_3
    array-length v0, v5

    move/from16 v52, v0

    .restart local v52    # "len$":I
    const/16 v46, 0x0

    .restart local v46    # "i$":I
    :goto_9
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_9

    aget-object v33, v5, v46

    .line 323
    .local v33, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    .line 324
    .restart local v37    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v37, :cond_14

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 322
    :cond_14
    add-int/lit8 v46, v46, 0x1

    goto :goto_9

    .line 343
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v33    # "dialerAppPackageName":Ljava/lang/String;
    .end local v37    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v46    # "i$":I
    .end local v52    # "len$":I
    :cond_15
    if-nez v68, :cond_1c

    .line 344
    new-instance v70, Landroid/content/Intent;

    const-string v82, "android.intent.action.MAIN"

    move-object/from16 v0, v70

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v70, "smsIntent":Landroid/content/Intent;
    const-string v82, "android.intent.category.APP_MESSAGING"

    move-object/from16 v0, v70

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v71

    .line 348
    .local v71, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v71, :cond_16

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 361
    .end local v70    # "smsIntent":Landroid/content/Intent;
    .end local v71    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_16
    new-instance v19, Landroid/content/Intent;

    const-string v82, "android.provider.Telephony.SMS_CB_RECEIVED"

    move-object/from16 v0, v19

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v19, "cbrIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 364
    .local v20, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_17

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_17

    .line 365
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 369
    :cond_17
    new-instance v17, Landroid/content/Intent;

    const-string v82, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    move-object/from16 v0, v17

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v17, "carrierProvIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 372
    .local v18, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_18

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_18

    .line 373
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 377
    :cond_18
    new-instance v8, Landroid/content/Intent;

    const-string v82, "android.intent.action.MAIN"

    move-object/from16 v0, v82

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v8, "calendarIntent":Landroid/content/Intent;
    const-string v82, "android.intent.category.APP_CALENDAR"

    move-object/from16 v0, v82

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 381
    .local v9, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_19

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_19

    .line 383
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 384
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 388
    :cond_19
    const-string v82, "com.android.calendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    .line 390
    .local v10, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v10, :cond_1a

    .line 391
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 392
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, v84

    move/from16 v3, p1

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 394
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 398
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 400
    .local v14, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    .line 401
    .local v12, "calendarSyncAdapterCount":I
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_a
    move/from16 v0, v45

    if-ge v0, v12, :cond_1e

    .line 402
    move/from16 v0, v45

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Package;

    .line 403
    .local v11, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_1b

    .line 404
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 401
    :cond_1b
    add-int/lit8 v45, v45, 0x1

    goto :goto_a

    .line 352
    .end local v8    # "calendarIntent":Landroid/content/Intent;
    .end local v9    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .end local v12    # "calendarSyncAdapterCount":I
    .end local v14    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v17    # "carrierProvIntent":Landroid/content/Intent;
    .end local v18    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "cbrIntent":Landroid/content/Intent;
    .end local v20    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v45    # "i":I
    :cond_1c
    move-object/from16 v5, v68

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v52, v0

    .restart local v52    # "len$":I
    const/16 v46, 0x0

    .restart local v46    # "i$":I
    :goto_b
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_16

    aget-object v72, v5, v46

    .line 353
    .local v72, "smsPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v71

    .line 354
    .restart local v71    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v71, :cond_1d

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 352
    :cond_1d
    add-int/lit8 v46, v46, 0x1

    goto :goto_b

    .line 409
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v46    # "i$":I
    .end local v52    # "len$":I
    .end local v71    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v72    # "smsPackageName":Ljava/lang/String;
    .restart local v8    # "calendarIntent":Landroid/content/Intent;
    .restart local v9    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v10    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v12    # "calendarSyncAdapterCount":I
    .restart local v14    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v17    # "carrierProvIntent":Landroid/content/Intent;
    .restart local v18    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v19    # "cbrIntent":Landroid/content/Intent;
    .restart local v20    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v45    # "i":I
    :cond_1e
    new-instance v23, Landroid/content/Intent;

    const-string v82, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v23, "contactsIntent":Landroid/content/Intent;
    const-string v82, "android.intent.category.APP_CONTACTS"

    move-object/from16 v0, v23

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v24

    .line 413
    .local v24, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v24, :cond_1f

    invoke-static/range {v24 .. v24}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_1f

    .line 415
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 416
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 420
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v29

    .line 422
    .local v29, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v27

    .line 423
    .local v27, "contactsSyncAdapterCount":I
    const/16 v45, 0x0

    :goto_c
    move/from16 v0, v45

    move/from16 v1, v27

    if-ge v0, v1, :cond_21

    .line 424
    move-object/from16 v0, v29

    move/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/PackageParser$Package;

    .line 425
    .local v26, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v26 .. v26}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_20

    .line 426
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 423
    :cond_20
    add-int/lit8 v45, v45, 0x1

    goto :goto_c

    .line 431
    .end local v26    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    :cond_21
    const-string v82, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 433
    .local v25, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_22

    .line 434
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 436
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 438
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 442
    :cond_22
    new-instance v31, Landroid/content/Intent;

    const-string v82, "android.app.action.PROVISION_MANAGED_DEVICE"

    move-object/from16 v0, v31

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v31, "deviceProvisionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v32

    .line 446
    .local v32, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v32, :cond_23

    invoke-static/range {v32 .. v32}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_23

    .line 448
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 452
    :cond_23
    new-instance v56, Landroid/content/Intent;

    const-string v82, "android.intent.action.MAIN"

    move-object/from16 v0, v56

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v56, "mapsIntent":Landroid/content/Intent;
    const-string v82, "android.intent.category.APP_MAPS"

    move-object/from16 v0, v56

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v57

    .line 456
    .local v57, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v57, :cond_24

    invoke-static/range {v57 .. v57}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_24

    .line 458
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 462
    :cond_24
    new-instance v43, Landroid/content/Intent;

    const-string v82, "android.intent.action.MAIN"

    move-object/from16 v0, v43

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v43, "galleryIntent":Landroid/content/Intent;
    const-string v82, "android.intent.category.APP_GALLERY"

    move-object/from16 v0, v43

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v44

    .line 466
    .local v44, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v44, :cond_25

    invoke-static/range {v44 .. v44}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_25

    .line 468
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 472
    :cond_25
    new-instance v41, Landroid/content/Intent;

    const-string v82, "android.intent.action.MAIN"

    move-object/from16 v0, v41

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v41, "emailIntent":Landroid/content/Intent;
    const-string v82, "android.intent.category.APP_EMAIL"

    move-object/from16 v0, v41

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v42

    .line 476
    .local v42, "emailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v42, :cond_26

    invoke-static/range {v42 .. v42}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_26

    .line 478
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 482
    :cond_26
    const/4 v7, 0x0

    .line 483
    .local v7, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v30

    .line 484
    .local v30, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v30, :cond_27

    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 487
    :cond_27
    if-nez v7, :cond_28

    .line 488
    new-instance v6, Landroid/content/Intent;

    const-string v82, "android.intent.action.MAIN"

    move-object/from16 v0, v82

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v6, "browserIntent":Landroid/content/Intent;
    const-string v82, "android.intent.category.APP_BROWSER"

    move-object/from16 v0, v82

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 493
    .end local v6    # "browserIntent":Landroid/content/Intent;
    :cond_28
    if-eqz v7, :cond_29

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_29

    .line 495
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 499
    :cond_29
    if-eqz v49, :cond_2b

    .line 500
    move-object/from16 v5, v49

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v52, v0

    .restart local v52    # "len$":I
    const/16 v46, 0x0

    .restart local v46    # "i$":I
    :goto_d
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_2b

    aget-object v48, v5, v46

    .line 501
    .local v48, "imePackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v47

    .line 502
    .local v47, "imePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v47, :cond_2a

    invoke-static/range {v47 .. v47}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_2a

    .line 504
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 500
    :cond_2a
    add-int/lit8 v46, v46, 0x1

    goto :goto_d

    .line 510
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v46    # "i$":I
    .end local v47    # "imePackage":Landroid/content/pm/PackageParser$Package;
    .end local v48    # "imePackageName":Ljava/lang/String;
    .end local v52    # "len$":I
    :cond_2b
    if-eqz v78, :cond_2d

    .line 511
    move-object/from16 v5, v78

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v52, v0

    .restart local v52    # "len$":I
    const/16 v46, 0x0

    .restart local v46    # "i$":I
    :goto_e
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_2d

    aget-object v77, v5, v46

    .line 512
    .local v77, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v76

    .line 514
    .local v76, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v76, :cond_2c

    invoke-static/range {v76 .. v76}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_2c

    .line 516
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 518
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 520
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 522
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 524
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 526
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 511
    :cond_2c
    add-int/lit8 v46, v46, 0x1

    goto :goto_e

    .line 533
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v46    # "i$":I
    .end local v52    # "len$":I
    .end local v76    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v77    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_2d
    new-instance v80, Landroid/content/Intent;

    const-string v82, "android.speech.RecognitionService"

    move-object/from16 v0, v80

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v80, "voiceRecoIntent":Landroid/content/Intent;
    const-string v82, "android.intent.category.DEFAULT"

    move-object/from16 v0, v80

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v81

    .line 537
    .local v81, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v81, :cond_2e

    invoke-static/range {v81 .. v81}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_2e

    .line 539
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 543
    :cond_2e
    if-eqz v54, :cond_30

    .line 544
    move-object/from16 v5, v54

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v52, v0

    .restart local v52    # "len$":I
    const/16 v46, 0x0

    .restart local v46    # "i$":I
    :goto_f
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_30

    aget-object v61, v5, v46

    .line 545
    .local v61, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v53

    .line 546
    .local v53, "locationPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v53, :cond_2f

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_2f

    .line 548
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 549
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 550
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 551
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 552
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 553
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v84, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v82

    move/from16 v3, v84

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 555
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 556
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 557
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 544
    :cond_2f
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_f

    .line 563
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v46    # "i$":I
    .end local v52    # "len$":I
    .end local v53    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v61    # "packageName":Ljava/lang/String;
    :cond_30
    new-instance v59, Landroid/content/Intent;

    const-string v82, "android.intent.action.VIEW"

    move-object/from16 v0, v59

    move-object/from16 v1, v82

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .local v59, "musicIntent":Landroid/content/Intent;
    const-string v82, "android.intent.category.DEFAULT"

    move-object/from16 v0, v59

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    new-instance v82, Ljava/io/File;

    const-string v84, "foo.mp3"

    move-object/from16 v0, v82

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v82 .. v82}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v82

    const-string v84, "audio/mpeg"

    move-object/from16 v0, v59

    move-object/from16 v1, v82

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v60

    .line 569
    .local v60, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v60, :cond_31

    invoke-static/range {v60 .. v60}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v82

    if-eqz v82, :cond_31

    .line 571
    sget-object v82, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 574
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v82, v0

    move-object/from16 v0, v82

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->onDefaultRuntimePermissionsGrantedLPr(I)V

    .line 575
    monitor-exit v83

    .line 576
    return-void

    .line 575
    .end local v7    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "calendarIntent":Landroid/content/Intent;
    .end local v9    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v12    # "calendarSyncAdapterCount":I
    .end local v14    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v15    # "cameraIntent":Landroid/content/Intent;
    .end local v16    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v17    # "carrierProvIntent":Landroid/content/Intent;
    .end local v18    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "cbrIntent":Landroid/content/Intent;
    .end local v20    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v21    # "certInstallerIntent":Landroid/content/Intent;
    .end local v22    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v23    # "contactsIntent":Landroid/content/Intent;
    .end local v24    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v25    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v27    # "contactsSyncAdapterCount":I
    .end local v29    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v30    # "defaultBrowserPackage":Ljava/lang/String;
    .end local v31    # "deviceProvisionIntent":Landroid/content/Intent;
    .end local v32    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .end local v38    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v39    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v40    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v41    # "emailIntent":Landroid/content/Intent;
    .end local v42    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .end local v43    # "galleryIntent":Landroid/content/Intent;
    .end local v44    # "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v45    # "i":I
    .end local v51    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v56    # "mapsIntent":Landroid/content/Intent;
    .end local v57    # "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v58    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v59    # "musicIntent":Landroid/content/Intent;
    .end local v60    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .end local v62    # "setupIntent":Landroid/content/Intent;
    .end local v63    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v73    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v75    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v80    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v81    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v82

    monitor-exit v83
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v82
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 170
    const-string v7, "DefaultPermGrantPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Granting permissions to platform components for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 173
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 174
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 179
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 180
    .local v5, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 181
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 182
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    .local v3, "permission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 184
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 185
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 189
    const/4 v7, 0x1

    invoke-direct {p0, v6, v5, v7, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_0

    .line 192
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 763
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 764
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 768
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 769
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "overrideUserChoice"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    :cond_0
    return-void

    .line 777
    :cond_1
    iget-object v12, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 778
    .local v12, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 780
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 781
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 782
    .local v13, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_2

    .line 783
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v12, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 787
    new-instance v10, Landroid/util/ArraySet;

    .end local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v10, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 788
    .restart local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 793
    .end local v13    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 794
    .local v9, "grantablePermissionCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 795
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 799
    .local v2, "permission":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 794
    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 803
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 804
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 812
    .local v8, "flags":I
    if-eqz v8, :cond_5

    if-eqz p4, :cond_3

    .line 814
    :cond_5
    const/16 v7, 0x14

    .line 816
    .local v7, "fixedFlags":I
    and-int/lit8 v1, v8, 0x14

    if-nez v1, :cond_3

    .line 820
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 826
    const/16 v4, 0x20

    .line 827
    .local v4, "newFlags":I
    if-eqz p3, :cond_6

    .line 828
    or-int/lit8 v4, v4, 0x10

    .line 831
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move v5, v4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_1
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 839
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    move v2, v1

    .line 853
    :cond_0
    :goto_0
    return v2

    .line 842
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivilegedApp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 845
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 846
    .local v0, "sysPkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_3

    .line 847
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 853
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    .line 850
    :cond_3
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 853
    goto :goto_1
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    .line 167
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowserLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 663
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting permissions to default browser for user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    if-nez p1, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 668
    .local v1, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToDefaultDialerAppLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 613
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granting permissions to default dialer app for user:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    if-nez p1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 618
    .local v1, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 621
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 622
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 623
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 637
    if-nez p1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 641
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 642
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToDefaultSmsAppLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 600
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granting permissions to default sms app for user:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-nez p1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 605
    .local v1, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 607
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 608
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_0
.end method

.method public grantDefaultPermissionsToEnabledCarrierAppsLPr([Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 647
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-nez p1, :cond_1

    .line 660
    :cond_0
    return-void

    .line 651
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 652
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 653
    .local v1, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 655
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 656
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 657
    sget-object v5, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 651
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDialerAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 154
    return-void
.end method

.method public setImePackagesProviderLPr(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 138
    return-void
.end method

.method public setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 142
    return-void
.end method

.method public setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 158
    return-void
.end method

.method public setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 150
    return-void
.end method

.method public setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 162
    return-void
.end method

.method public setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 146
    return-void
.end method
