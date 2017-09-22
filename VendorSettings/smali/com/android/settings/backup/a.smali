.class public Lcom/android/vendorsettings/backup/a;
.super Lcom/android/vendorsettings/backup/g;
.source "AccountAgent.java"


# instance fields
.field private Py:Ljava/io/File;


# direct methods
.method public constructor <init>(Lmiui/app/backup/FullBackupAgent;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/backup/g;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/os/ParcelFileDescriptor;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 40
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/vendorsettings/backup/a;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v1}, Lmiui/app/backup/FullBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "_tmp_attach"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    .line 41
    iget-object v0, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 45
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/vendorsettings/backup/a;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v1}, Lmiui/app/backup/FullBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "_tmp_attach"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    .line 46
    iget-object v0, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    const-string v1, "accounts.db"

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/vendorsettings/backup/b;->PF:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 51
    const-string v1, "Backup:AccountAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy account result "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    const/16 v0, 0x2000

    :try_start_2
    new-array v0, v0, [B

    .line 60
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_4

    .line 61
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 64
    :goto_1
    :try_start_3
    const-string v3, "Backup:AccountAgent"

    const-string v5, "IllegalArgumentException"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 68
    if-eqz v2, :cond_2

    .line 70
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 75
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 77
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 82
    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 84
    :goto_4
    return v6

    .line 68
    :cond_4
    if-eqz v3, :cond_5

    .line 70
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 75
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 77
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 82
    :cond_6
    :goto_6
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 71
    :catch_1
    move-exception v0

    .line 72
    const-string v2, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 78
    :catch_2
    move-exception v0

    .line 79
    const-string v1, "Backup:AccountAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 71
    :catch_3
    move-exception v0

    .line 72
    const-string v2, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 78
    :catch_4
    move-exception v0

    .line 79
    const-string v1, "Backup:AccountAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 65
    :catch_5
    move-exception v0

    move-object v3, v2

    .line 66
    :goto_7
    :try_start_8
    const-string v1, "Backup:AccountAgent"

    const-string v5, "IOException"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 68
    if-eqz v3, :cond_7

    .line 70
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 75
    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    .line 77
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 82
    :cond_8
    :goto_9
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 71
    :catch_6
    move-exception v0

    .line 72
    const-string v1, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 78
    :catch_7
    move-exception v0

    .line 79
    const-string v1, "Backup:AccountAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 68
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_a
    if-eqz v3, :cond_9

    .line 70
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 75
    :cond_9
    :goto_b
    if-eqz v2, :cond_a

    .line 77
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 82
    :cond_a
    :goto_c
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v0

    .line 71
    :catch_8
    move-exception v1

    .line 72
    const-string v3, "Backup:AccountAgent"

    const-string v5, "IOException"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 78
    :catch_9
    move-exception v1

    .line 79
    const-string v2, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 68
    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_a

    .line 65
    :catch_a
    move-exception v0

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v2, v1

    goto :goto_7

    .line 63
    :catch_c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lmiui/app/backup/BackupMeta;)I
    .locals 4

    .prologue
    .line 173
    new-instance v0, Lcom/android/vendorsettings/backup/b;

    iget-object v1, p0, Lcom/android/vendorsettings/backup/a;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v1}, Lmiui/app/backup/FullBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vendorsettings/backup/b;-><init>(Landroid/content/Context;)V

    .line 174
    iget-object v1, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/backup/b;->b(Ljava/io/File;)V

    .line 175
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    const-string v3, "accounts.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/backup/b;->a(Ljava/io/File;)V

    .line 178
    invoke-virtual {v0}, Lcom/android/vendorsettings/backup/b;->lD()V

    .line 179
    invoke-virtual {v0}, Lcom/android/vendorsettings/backup/b;->lH()V

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 184
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_0
    const-string v0, "Backup:AccountAgent"

    const-string v1, "account not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 94
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/vendorsettings/backup/a;->PL:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v1}, Lmiui/app/backup/FullBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "_tmp_attach"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    .line 95
    iget-object v0, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    const-string v3, "accounts.db"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    const/16 v0, 0x2000

    :try_start_2
    new-array v0, v0, [B

    .line 107
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 111
    :goto_1
    :try_start_3
    const-string v3, "Backup:AccountAgent"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 115
    if-eqz v2, :cond_1

    .line 117
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 122
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 124
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 130
    :cond_2
    :goto_3
    return v5

    .line 115
    :cond_3
    if-eqz v3, :cond_4

    .line 117
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 122
    :cond_4
    :goto_4
    if-eqz v1, :cond_2

    .line 124
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 125
    :catch_1
    move-exception v0

    .line 126
    const-string v1, "Backup:AccountAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 118
    :catch_2
    move-exception v0

    .line 119
    const-string v2, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 118
    :catch_3
    move-exception v0

    .line 119
    const-string v2, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 125
    :catch_4
    move-exception v0

    .line 126
    const-string v1, "Backup:AccountAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 112
    :catch_5
    move-exception v0

    move-object v3, v2

    .line 113
    :goto_5
    :try_start_8
    const-string v1, "Backup:AccountAgent"

    const-string v4, "IOException"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 115
    if-eqz v3, :cond_5

    .line 117
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 122
    :cond_5
    :goto_6
    if-eqz v2, :cond_2

    .line 124
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 125
    :catch_6
    move-exception v0

    .line 126
    const-string v1, "Backup:AccountAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 118
    :catch_7
    move-exception v0

    .line 119
    const-string v1, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 115
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_6

    .line 117
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 122
    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    .line 124
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 127
    :cond_7
    :goto_9
    throw v0

    .line 118
    :catch_8
    move-exception v1

    .line 119
    const-string v3, "Backup:AccountAgent"

    const-string v4, "IOException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 125
    :catch_9
    move-exception v1

    .line 126
    const-string v2, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 115
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_7

    .line 112
    :catch_a
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 110
    :catch_c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public a(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 136
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/vendorsettings/backup/a;->Py:Ljava/io/File;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    const/16 v0, 0x2000

    :try_start_2
    new-array v0, v0, [B

    .line 145
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    .line 146
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 149
    :goto_1
    :try_start_3
    const-string v3, "Backup:AccountAgent"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 153
    if-eqz v2, :cond_0

    .line 155
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 160
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 162
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 168
    :cond_1
    :goto_3
    return v5

    .line 153
    :cond_2
    if-eqz v3, :cond_3

    .line 155
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 160
    :cond_3
    :goto_4
    if-eqz v1, :cond_1

    .line 162
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 163
    :catch_1
    move-exception v0

    .line 164
    const-string v1, "Backup:AccountAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 156
    :catch_2
    move-exception v0

    .line 157
    const-string v2, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 156
    :catch_3
    move-exception v0

    .line 157
    const-string v2, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 163
    :catch_4
    move-exception v0

    .line 164
    const-string v1, "Backup:AccountAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 150
    :catch_5
    move-exception v0

    move-object v3, v2

    .line 151
    :goto_5
    :try_start_8
    const-string v1, "Backup:AccountAgent"

    const-string v4, "IOException"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 153
    if-eqz v3, :cond_4

    .line 155
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 160
    :cond_4
    :goto_6
    if-eqz v2, :cond_1

    .line 162
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 163
    :catch_6
    move-exception v0

    .line 164
    const-string v1, "Backup:AccountAgent"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 156
    :catch_7
    move-exception v0

    .line 157
    const-string v1, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 153
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_5

    .line 155
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 160
    :cond_5
    :goto_8
    if-eqz v2, :cond_6

    .line 162
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 165
    :cond_6
    :goto_9
    throw v0

    .line 156
    :catch_8
    move-exception v1

    .line 157
    const-string v3, "Backup:AccountAgent"

    const-string v4, "IOException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 163
    :catch_9
    move-exception v1

    .line 164
    const-string v2, "Backup:AccountAgent"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 153
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_7

    .line 150
    :catch_a
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 148
    :catch_c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_d
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public lC()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method
