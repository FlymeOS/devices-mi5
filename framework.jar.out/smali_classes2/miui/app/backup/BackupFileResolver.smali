.class public Lmiui/app/backup/BackupFileResolver;
.super Ljava/lang/Object;
.source "BackupFileResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Backup:BackupFileResolver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method public static getMiuiHeader(Ljava/io/File;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .locals 7
    .param p0, "bakFile"    # Ljava/io/File;

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 26
    .local v1, "header":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    const/4 v2, 0x0

    .line 28
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Lmiui/app/backup/BackupFileResolver;->readMiuiHeader(Ljava/io/InputStream;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 33
    if-eqz v3, :cond_2

    .line 35
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 41
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 36
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Backup:BackupFileResolver"

    const-string v5, "IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 38
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "Backup:BackupFileResolver"

    const-string v5, "IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    if-eqz v2, :cond_0

    .line 35
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 36
    :catch_2
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Backup:BackupFileResolver"

    const-string v5, "IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 33
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 35
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 38
    :cond_1
    :goto_3
    throw v4

    .line 36
    :catch_3
    move-exception v0

    .line 37
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "Backup:BackupFileResolver"

    const-string v6, "IOException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 33
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2

    .line 30
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "c":I
    if-ltz v1, :cond_0

    .line 116
    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [B

    .line 121
    .local v3, "sequence":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 122
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v2    # "i":I
    .end local v3    # "sequence":[B
    :cond_1
    int-to-byte v4, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .restart local v2    # "i":I
    .restart local v3    # "sequence":[B
    :cond_2
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v4
.end method

.method public static readMiuiHeader(Ljava/io/InputStream;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x1

    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, "header":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "s":Ljava/lang/String;
    const-string v5, "MIUI BACKUP\n"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    new-instance v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;

    invoke-direct {v4}, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;-><init>()V

    .line 50
    .local v4, "tmp":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->version:I

    .line 52
    iget v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->version:I

    packed-switch v5, :pswitch_data_0

    .line 77
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "tmp":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    :cond_0
    :goto_0
    return-object v1

    .line 54
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v4    # "tmp":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    :pswitch_0
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 55
    const-string v5, " "

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "ss":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    iput-object v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->packageName:Ljava/lang/String;

    .line 57
    array-length v5, v3

    if-le v5, v7, :cond_1

    .line 58
    const/4 v5, 0x1

    aget-object v5, v3, v5

    iput-object v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->apkName:Ljava/lang/String;

    .line 60
    :cond_1
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->featureId:I

    .line 62
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z

    .line 64
    iget-boolean v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z

    if-eqz v5, :cond_2

    .line 65
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->encryptedPwd:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_2
    move-object v1, v4

    .line 68
    goto :goto_0

    .line 74
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "ss":[Ljava/lang/String;
    .end local v4    # "tmp":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Backup:BackupFileResolver"

    const-string v6, "Exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static writeMiuiHeader(Ljava/io/OutputStream;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "featrueId"    # I
    .param p4, "encyptedPwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 82
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    move v3, v6

    .line 83
    .local v3, "isEncrypted":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 86
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 88
    .local v0, "appName":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v5, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 89
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    const-string v8, "MIUI BACKUP\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    if-eqz v3, :cond_2

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 110
    return-void

    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "isEncrypted":Z
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v3, v7

    .line 82
    goto/16 :goto_0

    .line 90
    .restart local v0    # "appName":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local v3    # "isEncrypted":Z
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 99
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 107
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
