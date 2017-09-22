.class public Lcom/android/vendorsettings/a/a;
.super Ljava/lang/Object;
.source "MiHomeManager.java"


# static fields
.field private static final UB:Ljava/lang/Object;

.field private static UC:Lcom/android/vendorsettings/a/a;

.field private static final Ux:Landroid/net/Uri;

.field private static final Uy:Landroid/net/Uri;


# instance fields
.field private Fj:Landroid/content/pm/PackageInfo;

.field private UA:Ljava/util/HashSet;

.field private Uz:Ljava/util/HashSet;

.field private i:Landroid/content/pm/PackageManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "content://com.xiaomi.mihomemanager.whitelistProvider/packageName"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/a/a;->Ux:Landroid/net/Uri;

    .line 23
    const-string v0, "content://com.xiaomi.mihomemanager.settingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/a/a;->Uy:Landroid/net/Uri;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/a/a;->UB:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/a/a;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/android/vendorsettings/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/a/a;->i:Landroid/content/pm/PackageManager;

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/android/vendorsettings/a/a;->i:Landroid/content/pm/PackageManager;

    const-string v1, "com.xiaomi.mihomemanager"

    const/16 v2, 0x2240

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/a/a;->Fj:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "MiHomeManager"

    const-string v2, "Exception when retrieving package:com.xiaomi.mihomemanager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static aV(Landroid/content/Context;)Lcom/android/vendorsettings/a/a;
    .locals 2

    .prologue
    .line 48
    sget-object v1, Lcom/android/vendorsettings/a/a;->UB:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/android/vendorsettings/a/a;->UC:Lcom/android/vendorsettings/a/a;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/vendorsettings/a/a;

    invoke-direct {v0, p0}, Lcom/android/vendorsettings/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/vendorsettings/a/a;->UC:Lcom/android/vendorsettings/a/a;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/vendorsettings/a/a;->UC:Lcom/android/vendorsettings/a/a;

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private oK()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/vendorsettings/a/a;->i:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/android/vendorsettings/a/a;->Fj:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vendorsettings/a/a;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/vendorsettings/a/a;->Fj:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    const-string v2, "MiHomeManager"

    const-string v3, "Exception when getting system signature"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private oL()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/a/a;->Uz:Ljava/util/HashSet;

    .line 69
    invoke-direct {p0}, Lcom/android/vendorsettings/a/a;->oK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/android/vendorsettings/a/a;->Ux:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 77
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/android/vendorsettings/a/a;->Uz:Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private oM()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vendorsettings/a/a;->UA:Ljava/util/HashSet;

    .line 85
    invoke-direct {p0}, Lcom/android/vendorsettings/a/a;->oK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/android/vendorsettings/a/a;->Uy:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 93
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/android/vendorsettings/a/a;->UA:Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public aR(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/vendorsettings/a/a;->Uz:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/vendorsettings/a/a;->oL()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/a/a;->Uz:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public aS(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/vendorsettings/a/a;->UA:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/vendorsettings/a/a;->oM()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/a/a;->UA:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
