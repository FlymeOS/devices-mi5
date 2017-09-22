.class public Lcom/android/camera/ExifHelper;
.super Ljava/lang/Object;
.source "ExifHelper.java"


# static fields
.field private static mDateTimeStampFormat:Ljava/text/DateFormat;

.field private static mGPSDateStampFormat:Ljava/text/DateFormat;

.field private static mGPSTimeStampFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 17
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    .line 18
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/camera/ExifHelper;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 21
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 22
    .local v0, "tzUTC":Ljava/util/TimeZone;
    sget-object v1, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 23
    sget-object v1, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    return-void
.end method

.method public static convertDoubleToLaLon(D)Ljava/lang/String;
    .locals 12
    .param p0, "value"    # D

    .prologue
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    .line 72
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 73
    .local v0, "degrees":I
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v8, v0

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 74
    .local v2, "minutes":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v8, v0

    sub-double/2addr v6, v8

    div-double v8, v2, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x414b774000000000L    # 3600000.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 75
    .local v4, "seconds":D
    const-wide/16 v6, 0x0

    cmpg-double v1, p0, v6

    if-gez v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1000"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    double-to-int v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/1000"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    .line 82
    sparse-switch p0, :sswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 84
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 86
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static writeExif(Ljava/lang/String;ILandroid/location/Location;J)V
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "orientation"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "timeTaken"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 29
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "exif":Landroid/media/ExifInterface;
    const-string v1, "GPSDateStamp"

    sget-object v6, Lcom/android/camera/ExifHelper;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "GPSTimeStamp"

    sget-object v6, Lcom/android/camera/ExifHelper;->mGPSTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "DateTime"

    sget-object v6, Lcom/android/camera/ExifHelper;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "Orientation"

    invoke-static {p1}, Lcom/android/camera/ExifHelper;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "Make"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 41
    .local v2, "latValue":D
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 42
    .local v4, "longValue":D
    const-string v1, "GPSLatitude"

    invoke-static {v2, v3}, Lcom/android/camera/ExifHelper;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "GPSLongitude"

    invoke-static {v4, v5}, Lcom/android/camera/ExifHelper;->convertDoubleToLaLon(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    cmpl-double v1, v2, v8

    if-lez v1, :cond_2

    .line 45
    const-string v1, "GPSLatitudeRef"

    const-string v6, "N"

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    cmpl-double v1, v4, v8

    if-lez v1, :cond_3

    .line 50
    const-string v1, "GPSLongitudeRef"

    const-string v6, "E"

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v2    # "latValue":D
    .end local v4    # "longValue":D
    :cond_0
    :goto_1
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v1, :cond_4

    .line 56
    :cond_1
    const-string v1, "Model"

    const-string v6, "MiTwo"

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "FocalLength"

    const-string v6, "354/100"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_2
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 65
    .end local v0    # "exif":Landroid/media/ExifInterface;
    :goto_3
    return-void

    .line 47
    .restart local v0    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "latValue":D
    .restart local v4    # "longValue":D
    :cond_2
    const-string v1, "GPSLatitudeRef"

    const-string v6, "S"

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "latValue":D
    .end local v4    # "longValue":D
    :catch_0
    move-exception v1

    goto :goto_3

    .line 52
    .restart local v0    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "latValue":D
    .restart local v4    # "longValue":D
    :cond_3
    const-string v1, "GPSLongitudeRef"

    const-string v6, "W"

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    .end local v2    # "latValue":D
    .end local v4    # "longValue":D
    :cond_4
    const-string v1, "Model"

    sget-object v6, Lcom/android/camera/Device;->MODULE:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
