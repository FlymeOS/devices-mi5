.class public Lcom/android/vendorsettings/backup/D;
.super Lcom/android/vendorsettings/backup/g;
.source "WifiAgent.java"


# direct methods
.method public constructor <init>(Lmiui/app/backup/FullBackupAgent;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/backup/g;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;)I
    .locals 4

    .prologue
    .line 32
    const/4 v2, 0x0

    .line 34
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    invoke-static {}, Lcom/android/vendorsettings/wifi/ai;->yg()Lcom/android/vendorsettings/wifi/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/wifi/ai;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    :goto_1
    :try_start_2
    const-string v2, "Backup:WifiAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 53
    :cond_0
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    :cond_2
    if-eqz v1, :cond_0

    .line 47
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 49
    :catch_1
    move-exception v0

    .line 50
    const-string v1, "Backup:WifiAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 49
    :catch_2
    move-exception v0

    .line 50
    const-string v1, "Backup:WifiAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 45
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 46
    :goto_3
    if-eqz v1, :cond_3

    .line 47
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 51
    :cond_3
    :goto_4
    throw v0

    .line 49
    :catch_3
    move-exception v1

    .line 50
    const-string v2, "Backup:WifiAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 45
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 42
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lmiui/app/backup/BackupMeta;)I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/android/vendorsettings/wifi/ai;->yg()Lcom/android/vendorsettings/wifi/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/backup/D;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vendorsettings/wifi/ai;->a(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public lC()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method
