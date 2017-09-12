.class Lmiui/securitycenter/powercenter/BatteryStatsUtils;
.super Ljava/lang/Object;
.source "BatteryStatsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryStatsHelper"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 11

    .prologue
    .line 22
    const/4 v7, 0x0

    .line 23
    .local v7, "statsImpl":Lcom/android/internal/os/BatteryStatsImpl;
    const-string v8, "batterystats"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    .line 26
    .local v6, "stats":Lcom/android/internal/app/IBatteryStats;
    :try_start_0
    invoke-interface {v6}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 27
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v5, :cond_0

    .line 28
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 29
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 31
    .local v4, "parcel":Landroid/os/Parcel;
    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {v8}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v8

    invoke-static {v3, v8}, Lmiui/securitycenter/powercenter/BatteryStatsUtils;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v1

    .line 32
    .local v1, "data":[B
    const/4 v8, 0x0

    array-length v9, v1

    invoke-virtual {v4, v1, v8, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 33
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    sget-object v8, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    move-object v7, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 41
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 50
    .end local v1    # "data":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-object v7

    .line 42
    .restart local v1    # "data":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "parcel":Landroid/os/Parcel;
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string v8, ""

    const-string v9, "fis close"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 47
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v2

    .line 48
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "BatteryStatsHelper"

    const-string v9, "remote exception:"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 36
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "parcel":Landroid/os/Parcel;
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v2

    .line 37
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    const-string v8, "BatteryStatsHelper"

    const-string v9, "Unable to read statistics stream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 39
    :try_start_6
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 41
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 42
    :catch_3
    move-exception v2

    .line 43
    :try_start_8
    const-string v8, ""

    const-string v9, "fis close"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 39
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 41
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 44
    :goto_1
    :try_start_a
    throw v8

    .line 42
    :catch_4
    move-exception v2

    .line 43
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, ""

    const-string v10, "fis close"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1
.end method

.method private static readFully(Ljava/io/FileInputStream;I)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "pos":I
    new-array v1, p1, [B

    .line 57
    .local v1, "data":[B
    :cond_0
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 58
    .local v0, "amt":I
    if-gtz v0, :cond_1

    .line 59
    return-object v1

    .line 61
    :cond_1
    add-int/2addr v3, v0

    .line 62
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 63
    array-length v4, v1

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_0

    .line 64
    add-int v4, v3, p1

    new-array v2, v4, [B

    .line 65
    .local v2, "newData":[B
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 66
    move-object v1, v2

    goto :goto_0
.end method
