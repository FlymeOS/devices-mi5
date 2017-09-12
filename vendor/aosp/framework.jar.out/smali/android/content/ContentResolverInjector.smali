.class public Landroid/content/ContentResolverInjector;
.super Ljava/lang/Object;
.source "ContentResolverInjector.java"


# static fields
.field private static final ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "ContentResolverInjector"

.field private static mUnstablePackagesWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string/jumbo v0, "persist.am.enable_crj"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/ContentResolverInjector;->ENABLE:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/ContentResolverInjector;->mUnstablePackagesWhiteList:Ljava/util/ArrayList;

    .line 24
    sget-object v0, Landroid/content/ContentResolverInjector;->mUnstablePackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Landroid/content/ContentResolverInjector;->mUnstablePackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Landroid/content/ContentResolverInjector;->mUnstablePackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isForceAcquireUnstableProvider(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 30
    sget-boolean v0, Landroid/content/ContentResolverInjector;->ENABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ContentResolverInjector;->mUnstablePackagesWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "ContentResolverInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force acquire UnstableProvider for pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unstableQuery(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "remoteCancellationSignal"    # Landroid/os/ICancellationSignal;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 42
    .local v0, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v0, :cond_1

    .line 43
    const/4 v9, 0x0

    .line 57
    :cond_0
    :goto_0
    return-object v9

    .line 45
    :cond_1
    const/4 v9, 0x0

    .line 47
    .local v9, "qCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .line 49
    :catch_0
    move-exception v8

    .line 50
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "ContentResolverInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remote process has died again, unstableQuery pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    goto :goto_0

    .line 53
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    :cond_2
    throw v1
.end method
