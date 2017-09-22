.class public Lcom/android/settings/applications/DefaultEmergencyPreference;
.super Lcom/android/settings/AppListPreference;
.source "DefaultEmergencyPreference.java"


# static fields
.field public static final Ih:Landroid/content/Intent;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/DefaultEmergencyPreference;->Ih:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    invoke-static {p1}, Lcom/android/settings/applications/DefaultEmergencyPreference;->an(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->load()V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/DefaultEmergencyPreference;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->kt()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static an(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-static {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->ao(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/settings/applications/DefaultEmergencyPreference;->Ih:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static ao(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/applications/DefaultEmergencyPreference;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private static c(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private kt()Ljava/util/Set;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 89
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 92
    sget-object v0, Lcom/android/settings/applications/DefaultEmergencyPreference;->Ih:Landroid/content/Intent;

    invoke-virtual {v5, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v3, v2

    .line 96
    :goto_0
    if-ge v3, v7, :cond_4

    .line 97
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 98
    if-eqz v0, :cond_3

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v0, v1

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 105
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v5, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/settings/applications/DefaultEmergencyPreference;->c(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->c(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_2
    invoke-static {v1}, Lcom/android/settings/applications/DefaultEmergencyPreference;->c(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    invoke-static {v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->c(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-ne v8, v9, :cond_3

    iget-wide v8, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 111
    goto :goto_1

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "emergency_assistance_application"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    .line 127
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "emergency_assistance_application"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    :cond_6
    return-object v4

    :cond_7
    move v0, v2

    .line 125
    goto :goto_2
.end method

.method private load()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/DefaultEmergencyPreference$1;-><init>(Lcom/android/settings/applications/DefaultEmergencyPreference;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method


# virtual methods
.method protected persistString(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "emergency_assistance_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "emergency_assistance_application"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
