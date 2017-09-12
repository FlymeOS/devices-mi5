.class public Lmiui/app/backup/FullBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "FullBackupAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Backup:FullBackupAgent"

.field private static final TMP_BAK_NAME:Ljava/lang/String; = "_tmp_bak"


# instance fields
.field private mAttachedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupManager:Lmiui/app/backup/BackupManager;

.field private mBackupMeta:Lmiui/app/backup/BackupMeta;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 203
    .local v0, "separatorIndex":I
    if-gez v0, :cond_0

    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addAttachedFile(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    .line 226
    :cond_0
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public addAttachedFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    .line 216
    :cond_0
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method protected getVersion(I)I
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 1
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method protected onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .locals 1
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public final onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 20
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    if-nez v3, :cond_0

    .line 42
    invoke-static/range {p0 .. p0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    .line 45
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 46
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    .line 47
    .local v8, "appVerCode":I
    const-string v9, ""

    .line 48
    .local v9, "appVerName":Ljava/lang/String;
    sget-object v10, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 49
    .local v10, "deviceName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "packageName":Ljava/lang/String;
    sget-object v14, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 51
    .local v14, "miuiVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v3}, Lmiui/app/backup/BackupManager;->getCurrentWorkingFeature()I

    move-result v13

    .line 52
    .local v13, "feature":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmiui/app/backup/FullBackupAgent;->getVersion(I)I

    move-result v19

    .line 54
    .local v19, "version":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 55
    .local v16, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget v8, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 56
    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v16    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 61
    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 63
    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 64
    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 65
    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 66
    new-instance v3, Lmiui/app/backup/BackupMeta;

    invoke-direct {v3}, Lmiui/app/backup/BackupMeta;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    .line 67
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput v8, v3, Lmiui/app/backup/BackupMeta;->appVersionCode:I

    .line 68
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v9, v3, Lmiui/app/backup/BackupMeta;->appVersionName:Ljava/lang/String;

    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v10, v3, Lmiui/app/backup/BackupMeta;->deviceName:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v14, v3, Lmiui/app/backup/BackupMeta;->miuiVersion:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput v13, v3, Lmiui/app/backup/BackupMeta;->feature:I

    .line 73
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/app/backup/BackupMeta;->createTime:J

    .line 74
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move/from16 v0, v19

    iput v0, v3, Lmiui/app/backup/BackupMeta;->version:I

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lmiui/app/backup/BackupMeta;->writeToTar(Landroid/content/Context;Landroid/app/backup/FullBackupDataOutput;)V

    .line 77
    if-nez v19, :cond_2

    .line 78
    invoke-super/range {p0 .. p1}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V

    .line 107
    :cond_1
    :goto_1
    return-void

    .line 57
    :catch_0
    move-exception v11

    .line 58
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Backup:FullBackupAgent"

    const-string v4, "NameNotFoundException"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 80
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "_tmp_bak"

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v18, "tmpBak":Ljava/io/File;
    const/4 v15, 0x0

    .line 83
    .local v15, "outData":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z

    .line 84
    const/high16 v3, 0x20000000

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 85
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13}, Lmiui/app/backup/FullBackupAgent;->onFullBackup(Landroid/os/ParcelFileDescriptor;I)I

    .line 86
    sget-object v3, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    move-result v12

    .line 88
    .local v12, "err":I
    if-eqz v12, :cond_4

    .line 89
    const-string v3, "Backup:FullBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "err when data backup err = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v3, v12}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    if-eqz v15, :cond_3

    .line 95
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 97
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 94
    :cond_4
    if-eqz v15, :cond_5

    .line 95
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 97
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1, v13}, Lmiui/app/backup/FullBackupAgent;->tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I

    move-result v12

    .line 101
    if-eqz v12, :cond_1

    .line 102
    const-string v3, "Backup:FullBackupAgent"

    const-string v4, "err when tar attaches"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v3, v12}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V

    goto/16 :goto_1

    .line 94
    .end local v12    # "err":I
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_6

    .line 95
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 97
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    throw v3
.end method

.method protected onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 12
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "size"    # J
    .param p5, "type"    # I
    .param p6, "domain"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "mode"    # J
    .param p10, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-super/range {v1 .. v11}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V

    .line 235
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    return-void
.end method

.method protected onRestoreEnd(Lmiui/app/backup/BackupMeta;)I
    .locals 1
    .param p1, "meta"    # Lmiui/app/backup/BackupMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method protected final onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 41
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    const-string v4, "Backup:FullBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestoreFile type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " domain = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v4, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    new-instance v4, Lmiui/app/backup/BackupMeta;

    invoke-direct {v4}, Lmiui/app/backup/BackupMeta;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v4 .. v13}, Lmiui/app/backup/BackupMeta;->buildFrom(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;JIJJ)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    sget-object v4, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 152
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "_tmp_bak"

    invoke-direct {v12, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .local v12, "tmpBak":Ljava/io/File;
    const/16 v36, 0x0

    .local v36, "bakData":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 155
    :try_start_1
    invoke-static/range {v4 .. v12}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 156
    const/high16 v4, 0x10000000

    invoke-static {v12, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v36

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Lmiui/app/backup/FullBackupAgent;->onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    move-result v38

    .line 158
    .local v38, "err":I
    if-eqz v38, :cond_2

    .line 159
    const-string v4, "Backup:FullBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "err when data restoring err = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_2
    if-eqz v36, :cond_3

    .line 164
    :try_start_2
    invoke-virtual/range {v36 .. v36}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 166
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 195
    .end local v12    # "tmpBak":Ljava/io/File;
    .end local v36    # "bakData":Landroid/os/ParcelFileDescriptor;
    .end local v38    # "err":I
    :catch_0
    move-exception v37

    .line 196
    .local v37, "e":Ljava/io/IOException;
    const-string v4, "Backup:FullBackupAgent"

    const-string v5, "Exception when restore file"

    move-object/from16 v0, v37

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    throw v37

    .line 163
    .end local v37    # "e":Ljava/io/IOException;
    .restart local v12    # "tmpBak":Ljava/io/File;
    .restart local v36    # "bakData":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v4

    if-eqz v36, :cond_4

    .line 164
    :try_start_3
    invoke-virtual/range {v36 .. v36}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 166
    :cond_4
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    throw v4

    .line 168
    .end local v12    # "tmpBak":Ljava/io/File;
    .end local v36    # "bakData":Landroid/os/ParcelFileDescriptor;
    :cond_5
    sget-object v4, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lmiui/app/backup/FullBackupAgent;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 170
    .local v39, "fileName":Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 171
    .local v22, "tmpFile":Ljava/io/File;
    const/16 v23, 0x0

    .local v23, "attachFile":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v14, p1

    move-wide/from16 v15, p2

    move/from16 v17, p4

    move-wide/from16 v18, p7

    move-wide/from16 v20, p9

    .line 173
    :try_start_4
    invoke-static/range {v14 .. v22}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 174
    const/high16 v4, 0x10000000

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v23

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Lmiui/app/backup/FullBackupAgent;->onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v38

    .line 176
    .restart local v38    # "err":I
    if-eqz v38, :cond_6

    .line 177
    const-string v4, "Backup:FullBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "err when attach restoring err = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 181
    :cond_6
    if-eqz v23, :cond_7

    .line 182
    :try_start_5
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 184
    :cond_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 181
    .end local v38    # "err":I
    :catchall_1
    move-exception v4

    if-eqz v23, :cond_8

    .line 182
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 184
    :cond_8
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    throw v4

    .line 186
    .end local v22    # "tmpFile":Ljava/io/File;
    .end local v23    # "attachFile":Landroid/os/ParcelFileDescriptor;
    .end local v39    # "fileName":Ljava/lang/String;
    :cond_9
    sget-object v4, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/app/backup/FullBackupAgent;->onRestoreEnd(Lmiui/app/backup/BackupMeta;)I

    move-result v38

    .line 188
    .restart local v38    # "err":I
    if-eqz v38, :cond_0

    .line 189
    const-string v4, "Backup:FullBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "err when restore ending err = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V

    goto/16 :goto_0

    .line 193
    .end local v38    # "err":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v25, v0

    move-object/from16 v24, p0

    move-object/from16 v26, p1

    move-wide/from16 v27, p2

    move/from16 v29, p4

    move-object/from16 v30, p5

    move-object/from16 v31, p6

    move-wide/from16 v32, p7

    move-wide/from16 v34, p9

    invoke-virtual/range {v24 .. v35}, Lmiui/app/backup/FullBackupAgent;->onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public final onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 0
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "destination"    # Ljava/io/File;
    .param p5, "type"    # I
    .param p6, "mode"    # J
    .param p8, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-super/range {p0 .. p9}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .line 210
    return-void
.end method

.method protected tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "out"    # Landroid/app/backup/FullBackupDataOutput;
    .param p3, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 112
    .local v10, "ob":Ljava/lang/Object;
    instance-of v0, v10, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 113
    new-instance v7, Ljava/io/File;

    check-cast v10, Ljava/lang/String;

    .end local v10    # "ob":Ljava/lang/Object;
    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v1, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    goto :goto_0

    .line 118
    .end local v7    # "f":Ljava/io/File;
    .restart local v10    # "ob":Ljava/lang/Object;
    :cond_1
    instance-of v0, v10, Landroid/util/Pair;

    if-eqz v0, :cond_0

    move-object v11, v10

    .line 119
    check-cast v11, Landroid/util/Pair;

    .line 120
    .local v11, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 121
    .local v9, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .restart local v7    # "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 124
    invoke-static {v9, v7}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 125
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    sget-object v1, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 133
    if-eqz v9, :cond_0

    .line 134
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v6

    .line 130
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Backup:FullBackupAgent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when tar attaches for uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " skip!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 133
    if-eqz v9, :cond_0

    .line 134
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 132
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 133
    if-eqz v9, :cond_3

    .line 134
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v0

    .line 140
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "ob":Ljava/lang/Object;
    .end local v11    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    :cond_4
    const/4 v0, 0x0

    return v0
.end method
