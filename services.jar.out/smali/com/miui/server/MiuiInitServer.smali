.class public Lcom/miui/server/MiuiInitServer;
.super Lmiui/os/IMiuiInit$Stub;
.source "MiuiInitServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/MiuiInitServer$1;,
        Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;,
        Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final CUST_PROPERTIES_FILE_NAME:Ljava/lang/String; = "cust.prop"

.field private static final PREINSTALL_APP_HISTORY_FILE:Ljava/lang/String; = "/data/app/preinstall_history"

.field private static final PREINSTALL_PACKAGE_LIST:Ljava/lang/String; = "/data/system/preinstall.list"

.field private static final TAG:Ljava/lang/String; = "MiuiInitServer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoing:Z

.field private mPreinstalledChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreinstalledPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Lmiui/os/IMiuiInit$Stub;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;-><init>(Lcom/miui/server/MiuiInitServer;Lcom/miui/server/MiuiInitServer$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->setMiuisdkProperties()V

    .line 55
    return-void
.end method

.method static synthetic access$102(Lcom/miui/server/MiuiInitServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/MiuiInitServer;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/MiuiInitServer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public doFactoryReset(Z)V
    .locals 2
    .param p1, "keepUserApps"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v1, :cond_0

    .line 275
    const-string v1, ""

    invoke-static {v1}, Lmiui/util/CustomizeUtil;->setMiuiCustVariatDir(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    .line 277
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 281
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    if-nez p1, :cond_1

    .line 282
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 287
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public getCustVariants()[Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v11, "regionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v4

    .line 252
    .local v4, "cust":Ljava/io/File;
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "cs":[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 254
    .local v12, "resgions":[Ljava/io/File;
    if-eqz v12, :cond_3

    .line 255
    move-object v0, v12

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v10, v0, v6

    .line 256
    .local v10, "region":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_1

    .line 255
    .end local v6    # "i$":I
    :cond_0
    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, "r":Ljava/lang/String;
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v8, :cond_0

    aget-object v2, v1, v5

    .line 262
    .local v2, "c":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 263
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 269
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "c":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "r":Ljava/lang/String;
    .end local v10    # "region":Ljava/io/File;
    :cond_3
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    return-object v13
.end method

.method public getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    const-string v0, ""

    .line 323
    :goto_0
    return-object v0

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 316
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPeinstalledChannelList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    .local v0, "channel":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 323
    .end local v0    # "channel":Ljava/lang/String;
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    .locals 5
    .param p1, "custVariant"    # Ljava/lang/String;
    .param p2, "obs"    # Lmiui/os/IMiuiInitObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 221
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string v3, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v2, "MiuiInitServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check status, cust variant["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-boolean v2, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    if-eqz v2, :cond_0

    .line 226
    const-string v1, "MiuiInitServer"

    const-string v2, "skip, initializing cust environment"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    monitor-exit p0

    .line 236
    :goto_0
    return v0

    .line 229
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const-string v1, "MiuiInitServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip, cust variant["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    monitor-exit p0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 233
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    .line 234
    const-string v0, "MiuiInitServer"

    const-string v2, "initializing cust environment"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;-><init>(Lcom/miui/server/MiuiInitServer;Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)V

    invoke-virtual {v0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->start()V

    .line 236
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public installPreinstallApp()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->installCustApps()V

    .line 246
    return-void
.end method

.method public isPreinstalledPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    const/4 v3, 0x0

    .line 308
    :goto_0
    return v3

    .line 295
    :cond_0
    iget-object v3, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledPackage:Ljava/util/HashSet;

    if-nez v3, :cond_1

    .line 296
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledPackage:Ljava/util/HashSet;

    .line 298
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/preinstall.list"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 299
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 300
    .local v1, "pkgname":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 301
    iget-object v3, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledPackage:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 304
    .end local v1    # "pkgname":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "MiuiInitServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurs while read preinstalled packages + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledPackage:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 303
    .restart local v1    # "pkgname":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
