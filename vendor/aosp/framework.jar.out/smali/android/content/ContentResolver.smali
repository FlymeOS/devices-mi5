.class public abstract Landroid/content/ContentResolver;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentResolver$ParcelFileDescriptorInner;,
        Landroid/content/ContentResolver$CursorWrapperInner;,
        Landroid/content/ContentResolver$OpenResourceIdResult;
    }
.end annotation


# static fields
.field public static final ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

.field public static final ANY_CURSOR_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/*"

.field public static final CONTENT_SERVICE_NAME:Ljava/lang/String; = "content"

.field public static final CURSOR_DIR_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final CURSOR_ITEM_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item"

.field private static final ENABLE_CONTENT_SAMPLE:Z = false

.field public static final EXTRA_SIZE:Ljava/lang/String; = "android.content.extra.SIZE"

.field public static final SCHEME_ANDROID_RESOURCE:Ljava/lang/String; = "android.resource"

.field public static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field public static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final SLOW_THRESHOLD_MILLIS:I = 0x1f4

.field public static final SYNC_ERROR_AUTHENTICATION:I = 0x2

.field public static final SYNC_ERROR_CONFLICT:I = 0x5

.field public static final SYNC_ERROR_INTERNAL:I = 0x8

.field public static final SYNC_ERROR_IO:I = 0x3

.field private static final SYNC_ERROR_NAMES:[Ljava/lang/String;

.field public static final SYNC_ERROR_PARSE:I = 0x4

.field public static final SYNC_ERROR_SYNC_ALREADY_IN_PROGRESS:I = 0x1

.field public static final SYNC_ERROR_TOO_MANY_DELETIONS:I = 0x6

.field public static final SYNC_ERROR_TOO_MANY_RETRIES:I = 0x7

.field public static final SYNC_EXTRAS_ACCOUNT:Ljava/lang/String; = "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_EXTRAS_DISALLOW_METERED:Ljava/lang/String; = "allow_metered"

.field public static final SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS:Ljava/lang/String; = "discard_deletions"

.field public static final SYNC_EXTRAS_DO_NOT_RETRY:Ljava/lang/String; = "do_not_retry"

.field public static final SYNC_EXTRAS_EXPECTED_DOWNLOAD:Ljava/lang/String; = "expected_download"

.field public static final SYNC_EXTRAS_EXPECTED_UPLOAD:Ljava/lang/String; = "expected_upload"

.field public static final SYNC_EXTRAS_EXPEDITED:Ljava/lang/String; = "expedited"

.field public static final SYNC_EXTRAS_FORCE:Ljava/lang/String; = "force"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_EXTRAS_IGNORE_BACKOFF:Ljava/lang/String; = "ignore_backoff"

.field public static final SYNC_EXTRAS_IGNORE_SETTINGS:Ljava/lang/String; = "ignore_settings"

.field public static final SYNC_EXTRAS_INITIALIZE:Ljava/lang/String; = "initialize"

.field public static final SYNC_EXTRAS_MANUAL:Ljava/lang/String; = "force"

.field public static final SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS:Ljava/lang/String; = "deletions_override"

.field public static final SYNC_EXTRAS_PRIORITY:Ljava/lang/String; = "sync_priority"

.field public static final SYNC_EXTRAS_UPLOAD:Ljava/lang/String; = "upload"

.field public static final SYNC_OBSERVER_TYPE_ACTIVE:I = 0x4

.field public static final SYNC_OBSERVER_TYPE_ALL:I = 0x7fffffff

.field public static final SYNC_OBSERVER_TYPE_PENDING:I = 0x2

.field public static final SYNC_OBSERVER_TYPE_SETTINGS:I = 0x1

.field public static final SYNC_OBSERVER_TYPE_STATUS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ContentResolver"

.field private static sContentService:Landroid/content/IContentService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mPackageName:Ljava/lang/String;

.field private final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    .line 238
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "already-in-progress"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "authentication-error"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "io-error"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "parse-error"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "conflict"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "too-many-deletions"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "too-many-retries"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "internal-error"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    .line 289
    if-eqz p1, :cond_0

    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    iput-object p1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 290
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    .line 291
    return-void

    .line 289
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    goto :goto_0
.end method

.method public static addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 7
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "pollFrequency"    # J

    .prologue
    const/4 v1, 0x0

    .line 2067
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 2068
    const-string v0, "force"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "do_not_retry"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ignore_backoff"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ignore_settings"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "initialize"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "force"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "expedited"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2075
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal extras were set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2078
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2083
    :goto_0
    return-void

    .line 2079
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;
    .locals 4
    .param p0, "mask"    # I
    .param p1, "callback"    # Landroid/content/SyncStatusObserver;

    .prologue
    .line 2406
    if-nez p1, :cond_0

    .line 2407
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "you passed in a null callback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2410
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentResolver$1;

    invoke-direct {v1, p1}, Landroid/content/ContentResolver$1;-><init>(Landroid/content/SyncStatusObserver;)V

    .line 2415
    .local v1, "observer":Landroid/content/ISyncStatusObserver$Stub;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    invoke-interface {v2, p0, v1}, Landroid/content/IContentService;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    return-object v1

    .line 2417
    .end local v1    # "observer":Landroid/content/ISyncStatusObserver$Stub;
    :catch_0
    move-exception v0

    .line 2418
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "the ContentService should always be reachable"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 1924
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/content/IContentService;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1927
    :goto_0
    return-void

    .line 1925
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static cancelSync(Landroid/content/SyncRequest;)V
    .locals 2
    .param p0, "request"    # Landroid/content/SyncRequest;

    .prologue
    .line 2138
    if-nez p0, :cond_0

    .line 2139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2142
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->cancelRequest(Landroid/content/SyncRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2147
    :goto_0
    return-void

    .line 2143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1935
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1, p2}, Landroid/content/IContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    :goto_0
    return-void

    .line 1936
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getContentService()Landroid/content/IContentService;
    .locals 2

    .prologue
    .line 2579
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    if-eqz v1, :cond_0

    .line 2580
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    .line 2586
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 2582
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "content"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2584
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IContentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;

    move-result-object v1

    sput-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    .line 2586
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    goto :goto_0
.end method

.method public static getCurrentSync()Landroid/content/SyncInfo;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2300
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;

    move-result-object v1

    .line 2301
    .local v1, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2302
    const/4 v2, 0x0

    .line 2304
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2305
    :catch_0
    move-exception v0

    .line 2306
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "the ContentService should always be reachable"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getCurrentSyncs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2321
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2322
    :catch_0
    move-exception v0

    .line 2323
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCurrentSyncsAsUser(I)Ljava/util/List;
    .locals 3
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2333
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/IContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 2174
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2175
    :catch_0
    move-exception v0

    .line 2176
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2186
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2187
    :catch_0
    move-exception v0

    .line 2188
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMasterSyncAutomatically()Z
    .locals 3

    .prologue
    .line 2217
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IContentService;->getMasterSyncAutomatically()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2218
    :catch_0
    move-exception v0

    .line 2219
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMasterSyncAutomaticallyAsUser(I)Z
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 2229
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/IContentService;->getMasterSyncAutomaticallyAsUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2230
    :catch_0
    move-exception v0

    .line 2231
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2160
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2161
    :catch_0
    move-exception v0

    .line 2162
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 1971
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1974
    :goto_0
    return-object v0

    .line 1972
    :catch_0
    move-exception v0

    .line 1974
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 3

    .prologue
    .line 1946
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1947
    :catch_0
    move-exception v0

    .line 1948
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 1958
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 1988
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2001
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2002
    :catch_0
    move-exception v0

    .line 2003
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 2348
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2349
    :catch_0
    move-exception v0

    .line 2350
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2361
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2, p2}, Landroid/content/IContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2362
    :catch_0
    move-exception v0

    .line 2363
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static invalidPeriodicExtras(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 2093
    const-string v1, "force"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "do_not_retry"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ignore_backoff"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ignore_settings"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "initialize"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "force"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "expedited"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2100
    :cond_0
    const/4 v0, 0x1

    .line 2102
    :cond_1
    return v0
.end method

.method public static isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 2270
    if-nez p0, :cond_0

    .line 2271
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2273
    :cond_0
    if-nez p1, :cond_1

    .line 2274
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "authority must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2278
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2279
    :catch_0
    move-exception v0

    .line 2280
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 2376
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2385
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2, p2}, Landroid/content/IContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2386
    :catch_0
    move-exception v0

    .line 2387
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 2453
    return-void
.end method

.method private maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "operation"    # Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;

    .prologue
    .line 2493
    return-void
.end method

.method public static removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2116
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 2118
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2122
    return-void

    .line 2119
    :catch_0
    move-exception v0

    .line 2120
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static removeStatusChangeListener(Ljava/lang/Object;)V
    .locals 2
    .param p0, "handle"    # Ljava/lang/Object;

    .prologue
    .line 2427
    if-nez p0, :cond_0

    .line 2428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you passed in a null handle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2431
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    check-cast p0, Landroid/content/ISyncStatusObserver$Stub;

    .end local p0    # "handle":Ljava/lang/Object;
    invoke-interface {v0, p0}, Landroid/content/IContentService;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2436
    :goto_0
    return-void

    .line 2432
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1829
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1830
    return-void
.end method

.method public static requestSync(Landroid/content/SyncRequest;)V
    .locals 1
    .param p0, "request"    # Landroid/content/SyncRequest;

    .prologue
    .line 1860
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/IContentService;->sync(Landroid/content/SyncRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1864
    :goto_0
    return-void

    .line 1861
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1838
    if-nez p3, :cond_0

    .line 1839
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify extras."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1841
    :cond_0
    new-instance v1, Landroid/content/SyncRequest$Builder;

    invoke-direct {v1}, Landroid/content/SyncRequest$Builder;-><init>()V

    invoke-virtual {v1, p0, p1}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v0

    .line 1848
    .local v0, "request":Landroid/content/SyncRequest;
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/IContentService;->syncAsUser(Landroid/content/SyncRequest;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1852
    :goto_0
    return-void

    .line 1849
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private samplePercentForDuration(J)I
    .locals 5
    .param p1, "durationMillis"    # J

    .prologue
    const-wide/16 v2, 0x1f4

    .line 2444
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 2445
    const/16 v0, 0x64

    .line 2447
    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "syncable"    # I

    .prologue
    .line 2200
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/IContentService;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2205
    :goto_0
    return-void

    .line 2201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setMasterSyncAutomatically(Z)V
    .locals 1
    .param p0, "sync"    # Z

    .prologue
    .line 2244
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 2245
    return-void
.end method

.method public static setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 1
    .param p0, "sync"    # Z
    .param p1, "userId"    # I

    .prologue
    .line 2253
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/IContentService;->setMasterSyncAutomaticallyAsUser(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    :goto_0
    return-void

    .line 2254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 2017
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 2018
    return-void
.end method

.method public static setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 2027
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2032
    :goto_0
    return-void

    .line 2028
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static syncErrorStringToInt(Ljava/lang/String;)I
    .locals 6
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v3, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    array-length v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 260
    sget-object v3, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    add-int/lit8 v3, v1, 0x1

    .line 271
    :goto_1
    return v3

    .line 259
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_1
    if-eqz p0, :cond_2

    .line 266
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ContentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing sync error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static syncErrorToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    .prologue
    .line 251
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sget-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-le p0, v0, :cond_1

    .line 252
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static validateSyncExtrasBundle(Landroid/os/Bundle;)V
    .locals 8
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1882
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1883
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1884
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 1885
    instance-of v5, v4, Ljava/lang/Long;

    if-nez v5, :cond_0

    .line 1886
    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_0

    .line 1887
    instance-of v5, v4, Ljava/lang/Boolean;

    if-nez v5, :cond_0

    .line 1888
    instance-of v5, v4, Ljava/lang/Float;

    if-nez v5, :cond_0

    .line 1889
    instance-of v5, v4, Ljava/lang/Double;

    if-nez v5, :cond_0

    .line 1890
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1891
    instance-of v5, v4, Landroid/accounts/Account;

    if-nez v5, :cond_0

    .line 1892
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected value type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1895
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1896
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1897
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1898
    .local v1, "exc":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "error unparceling Bundle"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1900
    .end local v1    # "exc":Ljava/lang/RuntimeException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public final acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1511
    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1513
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 1514
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    .line 1516
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1532
    const-string/jumbo v1, "name"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1534
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 1535
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    .line 1538
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public final acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1451
    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1458
    :cond_0
    :goto_0
    return-object v1

    .line 1454
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1455
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1456
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1432
    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return-object v1

    .line 1435
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1436
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1437
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    goto :goto_0
.end method

.method public final acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1465
    if-nez p1, :cond_0

    .line 1466
    const/4 v0, 0x0

    .line 1468
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public final acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1559
    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1561
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 1562
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    .line 1565
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1586
    const-string/jumbo v1, "name"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1588
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 1589
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    .line 1592
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1479
    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return-object v1

    .line 1482
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1483
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1484
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    goto :goto_0
.end method

.method public final acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1493
    if-nez p1, :cond_0

    .line 1494
    const/4 v0, 0x0

    .line 1496
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .locals 2
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "appNotRespondingViaProvider"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1279
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v1, "authority"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const-string/jumbo v1, "operations"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1282
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    .line 1283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1286
    :cond_0
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1288
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v1
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1303
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    const-string/jumbo v1, "values"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v7

    .line 1306
    .local v7, "provider":Landroid/content/IContentProvider;
    if-nez v7, :cond_0

    .line 1307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1310
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1311
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v7, v1, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v8

    .line 1312
    .local v8, "rowsCreated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v10

    .line 1313
    .local v2, "durationMillis":J
    const-string v5, "bulkinsert"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .end local v2    # "durationMillis":J
    .end local v8    # "rowsCreated":I
    .end local v10    # "startTime":J
    :goto_0
    return v8

    .line 1315
    :catch_0
    move-exception v0

    .line 1318
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v8, 0x0

    .line 1320
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v1
.end method

.method public final call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1407
    const-string/jumbo v2, "uri"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    const-string/jumbo v2, "method"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1410
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    .line 1411
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1414
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p3, p4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1420
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :goto_0
    return-object v2

    .line 1415
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 1420
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v2
.end method

.method public cancelSync(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1911
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1912
    return-void

    :cond_0
    move-object v0, v1

    .line 1911
    goto :goto_0
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 586
    const-string/jumbo v3, "url"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 588
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    .line 599
    :goto_0
    return-object v2

    .line 593
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/IContentProvider;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 599
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v2
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1336
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v7

    .line 1338
    .local v7, "provider":Landroid/content/IContentProvider;
    if-nez v7, :cond_0

    .line 1339
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1342
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1343
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v7, v1, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1344
    .local v8, "rowsDeleted":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v10

    .line 1345
    .local v2, "durationMillis":J
    const-string v5, "delete"

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .end local v2    # "durationMillis":J
    .end local v8    # "rowsDeleted":I
    .end local v10    # "startTime":J
    :goto_0
    return v8

    .line 1347
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v8, -0x1

    .line 1352
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v1
.end method

.method public getOutgoingPersistedUriPermissions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1769
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1771
    :catch_0
    move-exception v0

    .line 1772
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Activity manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2591
    iget-object v0, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistedUriPermissions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1754
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1756
    :catch_0
    move-exception v0

    .line 1757
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Activity manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1191
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1194
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No authority: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1197
    :cond_0
    :try_start_0
    iget-object v8, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1202
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 1203
    .local v5, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 1204
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1198
    .end local v5    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 1199
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No package found for authority: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1206
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "r":Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1208
    .local v4, "len":I
    if-ne v4, v10, :cond_2

    .line 1210
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 1219
    .local v3, "id":I
    :goto_0
    if-nez v3, :cond_4

    .line 1220
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No resource found for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1211
    .end local v3    # "id":I
    :catch_1
    move-exception v1

    .line 1212
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Single path segment is not a resource ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1214
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    .line 1215
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "id":I
    goto :goto_0

    .line 1217
    .end local v3    # "id":I
    :cond_3
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "More than two path segments: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1222
    .restart local v3    # "id":I
    :cond_4
    new-instance v7, Landroid/content/ContentResolver$OpenResourceIdResult;

    invoke-direct {v7, p0}, Landroid/content/ContentResolver$OpenResourceIdResult;-><init>(Landroid/content/ContentResolver;)V

    .line 1223
    .local v7, "res":Landroid/content/ContentResolver$OpenResourceIdResult;
    iput-object v6, v7, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    .line 1224
    iput v3, v7, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    .line 1225
    return-object v7
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 382
    const-string/jumbo v3, "url"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v3, "mimeTypeFilter"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 386
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    .line 397
    :goto_0
    return-object v2

    .line 391
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 397
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v2
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 329
    const-string/jumbo v3, "url"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 333
    .local v1, "provider":Landroid/content/IContentProvider;
    if-eqz v1, :cond_1

    .line 335
    :try_start_0
    invoke-interface {v1, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 342
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 360
    :cond_0
    :goto_0
    return-object v2

    .line 336
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ContentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get type for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v3

    .line 346
    :cond_1
    const-string v3, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 353
    .local v2, "type":Ljava/lang/String;
    goto :goto_0

    .line 354
    .end local v2    # "type":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 358
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ContentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get type for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 1239
    const/16 v1, 0x25

    invoke-static {v1, p1}, Landroid/util/SeempLog;->record_uri(ILandroid/net/Uri;)I

    .line 1240
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v8

    .line 1242
    .local v8, "provider":Landroid/content/IContentProvider;
    if-nez v8, :cond_0

    .line 1243
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1246
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1247
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v8, v1, p1, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1248
    .local v0, "createdRow":Landroid/net/Uri;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v10

    .line 1249
    .local v2, "durationMillis":J
    const-string/jumbo v5, "insert"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .end local v0    # "createdRow":Landroid/net/Uri;
    .end local v2    # "durationMillis":J
    .end local v10    # "startTime":J
    :goto_0
    return-object v0

    .line 1251
    :catch_0
    move-exception v7

    .line 1256
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-object v0, v9

    goto :goto_0

    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v1
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 1660
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1661
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z

    .prologue
    .line 1681
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 1687
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z
    .param p4, "userHandle"    # I

    .prologue
    .line 1697
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    .line 1703
    :goto_2
    return-void

    .line 1697
    :cond_0
    invoke-virtual {p2}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1701
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 880
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 937
    const-string/jumbo v4, "uri"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string/jumbo v4, "mode"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 941
    .local v15, "scheme":Ljava/lang/String;
    const-string v4, "android.resource"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 942
    const-string/jumbo v4, "r"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 943
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t write resources: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 945
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v13

    .line 947
    .local v13, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_0
    iget-object v4, v13, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v6, v13, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1026
    .end local v13    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_1
    :goto_0
    return-object v4

    .line 948
    .restart local v13    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :catch_0
    move-exception v11

    .line 949
    .local v11, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resource does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 951
    .end local v11    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_2
    const-string v4, "file"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 952
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 954
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    invoke-direct/range {v4 .. v9}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_0

    .line 956
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const-string/jumbo v4, "r"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 957
    const-string v4, "*/*"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v6, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    goto :goto_0

    .line 959
    :cond_4
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v17

    .line 960
    .local v17, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v17, :cond_5

    .line 961
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No content provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 963
    :cond_5
    const/16 v16, 0x0

    .line 964
    .local v16, "stableProvider":Landroid/content/IContentProvider;
    const/4 v12, 0x0

    .line 967
    .local v12, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v14, 0x0

    .line 968
    .local v14, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_6

    .line 969
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 970
    invoke-interface/range {v17 .. v17}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v14

    .line 971
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v4, v1, v2, v14}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 977
    if-nez v12, :cond_f

    .line 979
    const/4 v4, 0x0

    .line 1019
    if-eqz p3, :cond_7

    .line 1020
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1022
    :cond_7
    if-eqz v16, :cond_8

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1025
    :cond_8
    if-eqz v17, :cond_1

    .line 1026
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_0

    .line 981
    :catch_1
    move-exception v10

    .line 985
    .local v10, "e":Landroid/os/DeadObjectException;
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 986
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v16

    .line 987
    if-nez v16, :cond_c

    .line 988
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No content provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1012
    .end local v10    # "e":Landroid/os/DeadObjectException;
    :catch_2
    move-exception v10

    .line 1014
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed opening content provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1019
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    if-eqz p3, :cond_9

    .line 1020
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1022
    :cond_9
    if-eqz v16, :cond_a

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1025
    :cond_a
    if-eqz v17, :cond_b

    .line 1026
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    :cond_b
    throw v4

    .line 990
    .local v10, "e":Landroid/os/DeadObjectException;
    :cond_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v4, v1, v2, v14}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v12

    .line 992
    if-nez v12, :cond_f

    .line 994
    const/4 v4, 0x0

    .line 1019
    if-eqz p3, :cond_d

    .line 1020
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1022
    :cond_d
    if-eqz v16, :cond_e

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1025
    :cond_e
    if-eqz v17, :cond_1

    .line 1026
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_0

    .line 998
    .end local v10    # "e":Landroid/os/DeadObjectException;
    :cond_f
    if-nez v16, :cond_10

    .line 999
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v16

    .line 1001
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1002
    new-instance v5, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v4, v1}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    .line 1007
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/16 v16, 0x0

    .line 1009
    new-instance v4, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1019
    if-eqz p3, :cond_11

    .line 1020
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1022
    :cond_11
    if-eqz v16, :cond_12

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1025
    :cond_12
    if-eqz v17, :cond_1

    .line 1026
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_0

    .line 1016
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v10

    .line 1017
    .local v10, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public final openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 811
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 812
    const/4 v1, 0x0

    .line 817
    :goto_0
    return-object v1

    .line 815
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 817
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 823
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_1
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Not a whole file"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 660
    const-string/jumbo v7, "uri"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, "scheme":Ljava/lang/String;
    const-string v7, "android.resource"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 665
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v3

    .line 667
    .local v3, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_0
    iget-object v6, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 679
    .end local v3    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :goto_0
    return-object v5

    .line 669
    .restart local v3    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :catch_0
    move-exception v1

    .line 670
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resource does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 672
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_0
    const-string v7, "file"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 675
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_1
    const-string/jumbo v7, "r"

    invoke-virtual {p0, p1, v7, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 679
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :cond_2
    move-object v5, v6

    goto :goto_0

    .line 680
    :catch_1
    move-exception v0

    .line 681
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/io/FileNotFoundException;

    const-string v7, "Unable to create stream"

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public final openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 693
    const-string/jumbo v0, "w"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 717
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 719
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    return-object v2

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Unable to create stream"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1063
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1100
    const-string/jumbo v3, "uri"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string/jumbo v3, "mimeType"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 1104
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v2, :cond_0

    .line 1105
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No content provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1107
    :cond_0
    const/4 v8, 0x0

    .line 1108
    .local v8, "stableProvider":Landroid/content/IContentProvider;
    const/16 v17, 0x0

    .line 1111
    .local v17, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v7, 0x0

    .line 1112
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_1

    .line 1113
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1114
    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v7

    .line 1115
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1119
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    .line 1121
    if-nez v17, :cond_b

    .line 1123
    const/4 v10, 0x0

    .line 1163
    if-eqz p4, :cond_2

    .line 1164
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1166
    :cond_2
    if-eqz v8, :cond_3

    .line 1167
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1169
    :cond_3
    if-eqz v2, :cond_4

    .line 1170
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    :cond_4
    :goto_0
    return-object v10

    .line 1125
    :catch_0
    move-exception v16

    .line 1129
    .local v16, "e":Landroid/os/DeadObjectException;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 1130
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v8

    .line 1131
    if-nez v8, :cond_8

    .line 1132
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No content provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1156
    .end local v16    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v16

    .line 1158
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed opening content provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1163
    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    if-eqz p4, :cond_5

    .line 1164
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1166
    :cond_5
    if-eqz v8, :cond_6

    .line 1167
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1169
    :cond_6
    if-eqz v2, :cond_7

    .line 1170
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    :cond_7
    throw v3

    .line 1134
    .local v16, "e":Landroid/os/DeadObjectException;
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v7

    invoke-interface/range {v8 .. v13}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v17

    .line 1136
    if-nez v17, :cond_b

    .line 1138
    const/4 v10, 0x0

    .line 1163
    if-eqz p4, :cond_9

    .line 1164
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1166
    :cond_9
    if-eqz v8, :cond_a

    .line 1167
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1169
    :cond_a
    if-eqz v2, :cond_4

    .line 1170
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_0

    .line 1142
    .end local v16    # "e":Landroid/os/DeadObjectException;
    :cond_b
    if-nez v8, :cond_c

    .line 1143
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v8

    .line 1145
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1146
    new-instance v11, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3, v8}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    .line 1151
    .local v11, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v8, 0x0

    .line 1153
    new-instance v10, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v12

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v14

    invoke-direct/range {v10 .. v15}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1163
    if-eqz p4, :cond_d

    .line 1164
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1166
    :cond_d
    if-eqz v8, :cond_e

    .line 1167
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1169
    :cond_e
    if-eqz v2, :cond_4

    .line 1170
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_0

    .line 1160
    .end local v11    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v16

    .line 1161
    .local v16, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    throw v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 434
    const/16 v0, 0xd

    invoke-static {v0, p1}, Landroid/util/SeempLog;->record_uri(ILandroid/net/Uri;)I

    .line 435
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 475
    const/16 v5, 0xd

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Landroid/util/SeempLog;->record_uri(ILandroid/net/Uri;)I

    .line 476
    const-string/jumbo v5, "uri"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v4

    .line 478
    .local v4, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v4, :cond_1

    .line 479
    const/16 v24, 0x0

    .line 550
    :cond_0
    :goto_0
    return-object v24

    .line 481
    :cond_1
    const/4 v12, 0x0

    .line 482
    .local v12, "stableProvider":Landroid/content/IContentProvider;
    const/16 v21, 0x0

    .line 484
    .local v21, "qCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 486
    .local v22, "startTime":J
    const/4 v11, 0x0

    .line 487
    .local v11, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p6, :cond_2

    .line 488
    invoke-virtual/range {p6 .. p6}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 489
    invoke-interface {v4}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v11

    .line 490
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v21

    .line 520
    :goto_1
    if-nez v21, :cond_b

    .line 521
    const/16 v24, 0x0

    .line 540
    if-eqz v21, :cond_3

    .line 541
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_3
    if-eqz p6, :cond_4

    .line 544
    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 546
    :cond_4
    if-eqz v4, :cond_5

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 549
    :cond_5
    if-eqz v12, :cond_0

    .line 550
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .line 495
    :catch_0
    move-exception v20

    .line 499
    .local v20, "e":Landroid/os/DeadObjectException;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Landroid/content/ContentResolverInjector;->isForceAcquireUnstableProvider(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 508
    invoke-static/range {v5 .. v11}, Landroid/content/ContentResolverInjector;->unstableQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v21

    goto :goto_1

    .line 511
    :cond_6
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 512
    if-nez v12, :cond_a

    .line 513
    const/16 v24, 0x0

    .line 540
    if-eqz v21, :cond_7

    .line 541
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_7
    if-eqz p6, :cond_8

    .line 544
    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 546
    :cond_8
    if-eqz v4, :cond_9

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 549
    :cond_9
    if-eqz v12, :cond_0

    .line 550
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_0

    .line 515
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, v11

    invoke-interface/range {v12 .. v19}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v21

    goto :goto_1

    .line 525
    .end local v20    # "e":Landroid/os/DeadObjectException;
    :cond_b
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v14, v6, v22

    .local v14, "durationMillis":J
    move-object/from16 v13, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p5

    .line 527
    invoke-direct/range {v13 .. v19}, Landroid/content/ContentResolver;->maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v24, Landroid/content/ContentResolver$CursorWrapperInner;

    if-eqz v12, :cond_f

    move-object v5, v12

    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v5}, Landroid/content/ContentResolver$CursorWrapperInner;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 532
    .local v24, "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    const/4 v12, 0x0

    .line 533
    const/16 v21, 0x0

    .line 540
    if-eqz v21, :cond_c

    .line 541
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_c
    if-eqz p6, :cond_d

    .line 544
    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 546
    :cond_d
    if-eqz v4, :cond_e

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 549
    :cond_e
    if-eqz v12, :cond_0

    .line 550
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_0

    .line 530
    .end local v24    # "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    :cond_f
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    goto :goto_2

    .line 535
    .end local v11    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    .end local v14    # "durationMillis":J
    .end local v22    # "startTime":J
    :catch_1
    move-exception v20

    .line 538
    .local v20, "e":Landroid/os/RemoteException;
    const/16 v24, 0x0

    .line 540
    if-eqz v21, :cond_10

    .line 541
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_10
    if-eqz p6, :cond_11

    .line 544
    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 546
    :cond_11
    if-eqz v4, :cond_12

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 549
    :cond_12
    if-eqz v12, :cond_0

    .line 550
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto/16 :goto_0

    .line 540
    .end local v20    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v21, :cond_13

    .line 541
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_13
    if-eqz p6, :cond_14

    .line 544
    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 546
    :cond_14
    if-eqz v4, :cond_15

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 549
    :cond_15
    if-eqz v12, :cond_16

    .line 550
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    :cond_16
    throw v5
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 1610
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    const-string/jumbo v0, "observer"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1617
    return-void
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # I

    .prologue
    .line 1623
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-virtual {p3}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, Landroid/content/IContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 1735
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v2

    invoke-interface {v0, v1, p2, v2}, Landroid/app/IActivityManager;->releasePersistableUriPermission(Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    :goto_0
    return-void

    .line 1739
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract releaseProvider(Landroid/content/IContentProvider;)Z
.end method

.method public abstract releaseUnstableProvider(Landroid/content/IContentProvider;)Z
.end method

.method public resolveUserId(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2601
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1798
    const/4 v0, 0x0

    .line 1799
    .local v0, "account":Landroid/accounts/Account;
    if-eqz p2, :cond_1

    .line 1800
    const-string v2, "account"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1801
    .local v1, "accountName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1802
    new-instance v0, Landroid/accounts/Account;

    .end local v0    # "account":Landroid/accounts/Account;
    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_0
    const-string v2, "account"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1806
    .end local v1    # "accountName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v2, p2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1807
    return-void

    .line 1806
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 1717
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v2

    invoke-interface {v0, v1, p2, v2}, Landroid/app/IActivityManager;->takePersistableUriPermission(Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1723
    :goto_0
    return-void

    .line 1721
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 622
    const-string/jumbo v3, "url"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 624
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    .line 635
    :goto_0
    return-object v2

    .line 629
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/IContentProvider;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 635
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v2
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 1636
    const-string/jumbo v1, "observer"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    :try_start_0
    invoke-virtual {p1}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    .line 1639
    .local v0, "contentObserver":Landroid/database/IContentObserver;
    if-eqz v0, :cond_0

    .line 1640
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/IContentService;->unregisterContentObserver(Landroid/database/IContentObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    .end local v0    # "contentObserver":Landroid/database/IContentObserver;
    :cond_0
    :goto_0
    return-void

    .line 1643
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract unstableProviderDied(Landroid/content/IContentProvider;)V
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1371
    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1373
    .local v0, "provider":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    .line 1374
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1377
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1378
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1379
    .local v8, "rowsUpdated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v10

    .line 1380
    .local v2, "durationMillis":J
    const-string/jumbo v5, "update"

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .end local v2    # "durationMillis":J
    .end local v8    # "rowsUpdated":I
    .end local v10    # "startTime":J
    :goto_0
    return v8

    .line 1382
    :catch_0
    move-exception v7

    .line 1385
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v8, -0x1

    .line 1387
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v1
.end method
