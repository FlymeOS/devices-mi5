.class public Lmiui/provider/Recordings;
.super Ljava/lang/Object;
.source "Recordings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/Recordings$CachedAccount;,
        Lmiui/provider/Recordings$SyncTokens;,
        Lmiui/provider/Recordings$MarkpointsOperations;,
        Lmiui/provider/Recordings$MarkPoints;,
        Lmiui/provider/Recordings$Operations;,
        Lmiui/provider/Recordings$Downloads;,
        Lmiui/provider/Recordings$RecordingNotifications;,
        Lmiui/provider/Recordings$Records;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "records"

.field public static final CALL_RECORD_DIR:Ljava/lang/String;

.field public static final FM_RECORD_DIR:Ljava/lang/String;

.field private static final HEXDIGITS:[Ljava/lang/String;

.field private static final MEDIA_SCANNER_CLASS:Ljava/lang/String; = "com.android.providers.media.MediaScannerReceiver"

.field private static final MEDIA_SCANNER_PACKAGE:Ljava/lang/String; = "com.android.providers.media"

.field public static final RECORDER_ROOT_PATH:Ljava/lang/String;

.field public static final SAMPLE_DEFAULT_DIR:Ljava/lang/String; = "/sound_recorder"

.field private static final TAG:Ljava/lang/String; = "SoundRecorder:SoundRecorder"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sound_recorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/call_rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings;->CALL_RECORD_DIR:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fm_rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings;->FM_RECORD_DIR:Ljava/lang/String;

    .line 671
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/Recordings;->HEXDIGITS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 677
    if-nez p0, :cond_0

    .line 678
    const/4 v2, 0x0

    .line 686
    :goto_0
    return-object v2

    .line 681
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 682
    .local v1, "resultSB":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 683
    sget-object v2, Lmiui/provider/Recordings;->HEXDIGITS:[Ljava/lang/String;

    aget-byte v3, p0, v0

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    sget-object v2, Lmiui/provider/Recordings;->HEXDIGITS:[Ljava/lang/String;

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 686
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recType"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 593
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "cnt_unread"

    aput-object v1, v2, v5

    .line 594
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "rec_type=?"

    .line 595
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 597
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 598
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 600
    .local v8, "cnt":I
    :try_start_0
    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 601
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_0

    .line 602
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 603
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 606
    :cond_0
    if-eqz v7, :cond_1

    .line 607
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_1
    return v8

    .line 606
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    .line 607
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getSha1(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 645
    const/4 v3, 0x0

    .line 646
    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 648
    .local v6, "sha1":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 650
    .local v2, "fileSha1":Ljava/security/MessageDigest;
    const/16 v7, 0x2000

    new-array v0, v7, [B

    .line 652
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-ltz v5, :cond_1

    .line 653
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 656
    .end local v0    # "buf":[B
    .end local v2    # "fileSha1":Ljava/security/MessageDigest;
    .end local v5    # "len":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 657
    .end local v4    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    const-string v7, "SoundRecorder:SoundRecorder"

    const-string v8, "Exception when getSha1"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 659
    if-eqz v3, :cond_0

    .line 661
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 665
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v3, 0x0

    .line 668
    :cond_0
    :goto_3
    return-object v6

    .line 655
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "buf":[B
    .restart local v2    # "fileSha1":Ljava/security/MessageDigest;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lmiui/provider/Recordings;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 659
    if-eqz v4, :cond_3

    .line 661
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 665
    :goto_4
    const/4 v3, 0x0

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 662
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 663
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "SoundRecorder:SoundRecorder"

    const-string v8, "Exception when close inputstream"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 662
    .end local v0    # "buf":[B
    .end local v2    # "fileSha1":Ljava/security/MessageDigest;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 663
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "SoundRecorder:SoundRecorder"

    const-string v8, "Exception when close inputstream"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 659
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_2

    .line 661
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 665
    :goto_6
    const/4 v3, 0x0

    :cond_2
    throw v7

    .line 662
    :catch_3
    move-exception v1

    .line 663
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "SoundRecorder:SoundRecorder"

    const-string v9, "Exception when close inputstream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 659
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_5

    .line 656
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "buf":[B
    .restart local v2    # "fileSha1":Ljava/security/MessageDigest;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    :cond_3
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static notifyRecording(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    const/4 v8, 0x1

    .line 554
    if-nez p1, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, "f":Ljava/io/File;
    const/4 v3, -0x1

    .line 559
    .local v3, "type":I
    sget-object v5, Lmiui/provider/Recordings;->CALL_RECORD_DIR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 560
    const/4 v3, 0x1

    .line 566
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 567
    sget-object v5, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-static {v5}, Lmiui/os/FileUtils;->addNoMedia(Ljava/lang/String;)Z

    .line 568
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.android.providers.media"

    const-string v6, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 573
    invoke-static {v0}, Lmiui/provider/Recordings;->getSha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "sha1":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 575
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 576
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "file_path"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v5, "file_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v5, "create_time"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 579
    const-string v5, "rec_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string v5, "db_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 581
    const-string v5, "duration"

    const-wide/16 v6, 0x3e8

    div-long v6, p2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    const-string v5, "sync_dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    const-string v5, "in_local"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    const-string v5, "in_cloud"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    const-string v5, "sha1"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lmiui/provider/Recordings$Records;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 561
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "sha1":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    sget-object v5, Lmiui/provider/Recordings;->FM_RECORD_DIR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 562
    const/4 v3, 0x2

    goto/16 :goto_1

    .line 563
    :cond_4
    sget-object v5, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 564
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public static setNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recType"    # Ljava/lang/String;
    .param p2, "cntUnread"    # I
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 616
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-array v2, v10, [Ljava/lang/String;

    const-string v1, "cnt_unread"

    aput-object v1, v2, v11

    .line 617
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "rec_type=?"

    .line 618
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    .line 619
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 620
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 622
    .local v8, "update":Z
    :try_start_0
    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 623
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    move v8, v10

    .line 625
    :goto_0
    if-eqz v7, :cond_0

    .line 626
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 631
    .local v9, "v":Landroid/content/ContentValues;
    const-string v1, "cnt_unread"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    if-eqz p3, :cond_1

    .line 633
    const-string v1, "NOTIF_DESC"

    invoke-virtual {v9, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_1
    if-eqz v8, :cond_4

    .line 637
    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 642
    :goto_1
    return-void

    .end local v9    # "v":Landroid/content/ContentValues;
    :cond_2
    move v8, v11

    .line 623
    goto :goto_0

    .line 625
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 626
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 639
    .restart local v9    # "v":Landroid/content/ContentValues;
    :cond_4
    const-string v1, "rec_type"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method
