.class final Lcom/miui/server/SecurityManagerService$UserState;
.super Ljava/lang/Object;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserState"
.end annotation


# instance fields
.field final mAccessControlCanceled:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAccessControlEnabled:Z

.field final mAccessControlLastCheck:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mAccessControlLockConvenient:Z

.field mAccessControlLockMode:I

.field final mAccessControlPassPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAccessControlSettingInit:Z

.field private mAppPermissionControlStatus:I

.field mLastResumePackage:Ljava/lang/String;

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field userHandle:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAppPermissionControlStatus:I

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    .line 143
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/SecurityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/server/SecurityManagerService$1;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService$UserState;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/server/SecurityManagerService$UserState;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService$UserState;

    .prologue
    .line 138
    iget v0, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAppPermissionControlStatus:I

    return v0
.end method

.method static synthetic access$1802(Lcom/miui/server/SecurityManagerService$UserState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecurityManagerService$UserState;
    .param p1, "x1"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/miui/server/SecurityManagerService$UserState;->mAppPermissionControlStatus:I

    return p1
.end method
