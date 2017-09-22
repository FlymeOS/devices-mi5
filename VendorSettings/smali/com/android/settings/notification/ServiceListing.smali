.class public Lcom/android/settings/notification/ServiceListing;
.super Ljava/lang/Object;
.source "ServiceListing.java"


# instance fields
.field private final aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private final akh:Ljava/util/HashSet;

.field private final aki:Ljava/util/List;

.field private final akj:Ljava/util/List;

.field private akk:Z

.field private final akl:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final wd:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akh:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->aki:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akj:Ljava/util/List;

    .line 189
    new-instance v0, Lcom/android/settings/notification/ServiceListing$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/ServiceListing$1;-><init>(Lcom/android/settings/notification/ServiceListing;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->wd:Landroid/database/ContentObserver;

    .line 196
    new-instance v0, Lcom/android/settings/notification/ServiceListing$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ServiceListing$2;-><init>(Lcom/android/settings/notification/ServiceListing;)V

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akl:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/settings/notification/ServiceListing;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings/notification/ServiceListing;->aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    return-void
.end method

.method public static a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiP:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    .line 88
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    array-length v0, v0

    goto :goto_0
.end method

.method public static a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/pm/PackageManager;)I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/settings/notification/ServiceListing;->a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 109
    .line 110
    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 113
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 115
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {p2, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_3

    .line 121
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 122
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 124
    iget-object v5, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    iget-object v5, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiQ:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": it does not require the permission "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 120
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_1
    if-eqz p1, :cond_2

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 136
    :cond_3
    return v1
.end method

.method public static a(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 5

    .prologue
    .line 97
    new-instance v0, Lcom/android/settings/notification/ServiceListing;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;)V

    .line 98
    invoke-virtual {v0}, Lcom/android/settings/notification/ServiceListing;->sy()Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    .line 100
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sw()V
    .locals 4

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akh:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 142
    if-nez v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    :goto_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v3, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiP:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    return-void

    .line 149
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method private sx()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akh:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/notification/ServiceListing;->aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v1, v1, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiP:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 158
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 159
    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/settings/notification/ServiceListing;->akh:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Z)V
    .locals 1

    .prologue
    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akh:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/notification/ServiceListing;->sw()V

    .line 187
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akh:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/android/settings/notification/ServiceListing$Callback;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public b(Lcom/android/settings/notification/ServiceListing$Callback;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public g(Landroid/content/ComponentName;)Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akh:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setListening(Z)V
    .locals 4

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/settings/notification/ServiceListing;->akk:Z

    if-ne v0, p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/notification/ServiceListing;->akk:Z

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/notification/ServiceListing;->akk:Z

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/notification/ServiceListing;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->akl:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/notification/ServiceListing;->aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v1, v1, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiP:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/notification/ServiceListing;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/ServiceListing;->akl:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/notification/ServiceListing;->wd:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public sy()Ljava/util/List;
    .locals 3

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/settings/notification/ServiceListing;->sx()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->aiJ:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v1, p0, Lcom/android/settings/notification/ServiceListing;->aki:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/ServiceListing;->a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)I

    .line 170
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->akj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/ServiceListing$Callback;

    .line 171
    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->aki:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/android/settings/notification/ServiceListing$Callback;->B(Ljava/util/List;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->aki:Ljava/util/List;

    return-object v0
.end method
