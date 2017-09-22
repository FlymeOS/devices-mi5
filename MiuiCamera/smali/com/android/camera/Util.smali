.class public Lcom/android/camera/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field private static ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

.field private static mCountryIso:Ljava/lang/String;

.field private static mLockedOrientation:I

.field private static sClearMemoryLimit:Z

.field private static sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

.field public static sIsDumpLog:Z

.field private static sPixelDensity:F

.field private static sTypefaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static sWindowHeight:I

.field public static sWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 127
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/camera/Util;->sPixelDensity:F

    .line 128
    const/16 v0, 0x2d0

    sput v0, Lcom/android/camera/Util;->sWindowWidth:I

    .line 129
    const/16 v0, 0x438

    sput v0, Lcom/android/camera/Util;->sWindowHeight:I

    .line 131
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/Util;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 138
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TW"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "KR"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "SA"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "US"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "CA"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "BR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "CO"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "MX"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "PH"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/camera/Util;->ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;

    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    .line 141
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/Util;->mLockedOrientation:I

    .line 1059
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 352
    if-nez p0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 355
    :cond_0
    return-void
.end method

.method private static addProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "properties"    # Ljava/lang/String;

    .prologue
    .line 1270
    const-string v0, ""

    .line 1271
    .local v0, "content":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1275
    :cond_0
    return-object v0
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 867
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 869
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 870
    return-void
.end method

.method public static checkDeviceHasNavigationBar(Landroid/content/Context;)Z
    .locals 3
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 1322
    const/16 v2, 0x52

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    .line 1324
    .local v1, "hasMenuKey":Z
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 1327
    .local v0, "hasBackKey":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkLockedOrientation(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 436
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 438
    .local v1, "orientationType":I
    if-nez v1, :cond_0

    .line 439
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/camera/Util;->mLockedOrientation:I

    .line 447
    .end local v1    # "orientationType":I
    :goto_0
    return-void

    .line 442
    .restart local v1    # "orientationType":I
    :cond_0
    const/4 v2, -0x1

    sput v2, Lcom/android/camera/Util;->mLockedOrientation:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    .end local v1    # "orientationType":I
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 398
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 422
    if-le p0, p2, :cond_0

    .line 424
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 423
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 424
    goto :goto_0
.end method

.method public static clearMemoryLimit()V
    .locals 8

    .prologue
    .line 199
    sget-boolean v4, Lcom/android/camera/Util;->sClearMemoryLimit:Z

    if-nez v4, :cond_0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 201
    .local v0, "start":J
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 202
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/camera/Util;->sClearMemoryLimit:Z

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 204
    .local v2, "stop":J
    const-string v4, "CameraUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearMemoryLimit() consume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 343
    if-nez p0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    .line 295
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 296
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 298
    .local v0, "h":D
    if-gez p2, :cond_1

    move v2, v6

    .line 300
    .local v2, "lowerBound":I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 304
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 314
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 298
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 300
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 309
    .restart local v3    # "upperBound":I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 310
    goto :goto_2

    .line 311
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 314
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 277
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 281
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 282
    const/4 v1, 0x1

    .line 283
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 284
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 290
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static createFile(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, -0x1

    .line 1038
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    const/4 v1, 0x0

    .line 1051
    :goto_0
    return v1

    .line 1042
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, "parentDir":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1044
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1ff

    invoke-static {v1, v2, v3, v3}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    .line 1047
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1048
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static createJpegName(J)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J

    .prologue
    .line 861
    sget-object v1, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    monitor-enter v1

    .line 862
    :try_start_0
    sget-object v0, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/Util$ImageFileNamer;->generateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 863
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static dpToPixel(F)I
    .locals 1
    .param p0, "dp"    # F

    .prologue
    .line 209
    sget v0, Lcom/android/camera/Util;->sPixelDensity:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 402
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static expandViewTouchDelegate(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1138
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1140
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1141
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    .line 1143
    .local v1, "delegate":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1144
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1145
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1146
    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1148
    new-instance v2, Landroid/view/TouchDelegate;

    invoke-direct {v2, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 1149
    .local v2, "touchDelegate":Landroid/view/TouchDelegate;
    const-class v3, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1150
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 1157
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "delegate":I
    .end local v2    # "touchDelegate":Landroid/view/TouchDelegate;
    :cond_0
    :goto_0
    return-void

    .line 1153
    :cond_1
    const-class v3, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1154
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 884
    const/16 v0, 0x190

    invoke-static {p0, v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;I)V

    .line 885
    return-void
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I

    .prologue
    .line 873
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 876
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 877
    .local v0, "animation":Landroid/view/animation/Animation;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 879
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 898
    const/16 v0, 0x190

    invoke-static {p0, v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;I)V

    .line 899
    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "duration"    # I

    .prologue
    .line 888
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 890
    .local v0, "animation":Landroid/view/animation/Animation;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 891
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 892
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 893
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static getCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 7
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, -0x1

    .line 739
    const/4 v1, -0x1

    .line 741
    .local v1, "cameraId":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 743
    .local v3, "intentCameraId":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 744
    invoke-static {v3}, Lcom/android/camera/Util;->isFrontCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 746
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 747
    .local v2, "frontCameraId":I
    if-eq v2, v6, :cond_0

    .line 748
    move v1, v2

    .line 758
    .end local v2    # "frontCameraId":I
    :cond_0
    :goto_0
    return v1

    .line 750
    :cond_1
    invoke-static {v3}, Lcom/android/camera/Util;->isBackCameraIntent(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 752
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 753
    .local v0, "backCameraId":I
    if-eq v0, v6, :cond_0

    .line 754
    move v1, v0

    goto :goto_0
.end method

.method public static getCenterFocusDepthIndex([BII)I
    .locals 21
    .param p0, "depthMap"    # [B
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 1081
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1083
    :cond_0
    const/4 v12, 0x1

    .line 1118
    :cond_1
    :goto_0
    return v12

    .line 1088
    :cond_2
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v13, v18, -0x19

    .line 1090
    .local v13, "metaDataIndex":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "metaDataIndex":I
    .local v14, "metaDataIndex":I
    aget-byte v18, p0, v13

    if-eqz v18, :cond_3

    const/4 v12, 0x1

    goto :goto_0

    .line 1091
    :cond_3
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "metaDataIndex":I
    .restart local v13    # "metaDataIndex":I
    aget-byte v18, p0, v14

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x18

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "metaDataIndex":I
    .restart local v14    # "metaDataIndex":I
    aget-byte v19, p0, v13

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "metaDataIndex":I
    .restart local v13    # "metaDataIndex":I
    aget-byte v19, p0, v14

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "metaDataIndex":I
    .restart local v14    # "metaDataIndex":I
    aget-byte v19, p0, v13

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    .line 1095
    .local v11, "mapwidth":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "metaDataIndex":I
    .restart local v13    # "metaDataIndex":I
    aget-byte v18, p0, v14

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x18

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "metaDataIndex":I
    .restart local v14    # "metaDataIndex":I
    aget-byte v19, p0, v13

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "metaDataIndex":I
    .restart local v13    # "metaDataIndex":I
    aget-byte v19, p0, v14

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "metaDataIndex":I
    .restart local v14    # "metaDataIndex":I
    aget-byte v19, p0, v13

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v10, v18, v19

    .line 1099
    .local v10, "mapheight":I
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f08000f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1100
    .local v3, "centerWidth":I
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080010

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1101
    .local v2, "centerHeight":I
    mul-int v18, v11, v3

    sget v19, Lcom/android/camera/Util;->sWindowWidth:I

    div-int v17, v18, v19

    .line 1102
    .local v17, "width":I
    mul-int v18, v10, v2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sget v19, Lcom/android/camera/Util;->sWindowWidth:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v7, v0

    .line 1103
    .local v7, "height":I
    sub-int v18, v10, v7

    div-int/lit8 v15, v18, 0x2

    .line 1104
    .local v15, "row":I
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v6, v0, [I

    .line 1105
    .local v6, "countArray":[I
    const/4 v8, 0x0

    .local v8, "i":I
    move/from16 v16, v15

    .end local v15    # "row":I
    .local v16, "row":I
    :goto_1
    if-ge v8, v7, :cond_5

    .line 1106
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "row":I
    .restart local v15    # "row":I
    mul-int v18, v16, v11

    sub-int v19, v11, v17

    div-int/lit8 v19, v19, 0x2

    add-int v4, v18, v19

    .line 1107
    .local v4, "colindex":I
    const/4 v9, 0x0

    .local v9, "j":I
    move v5, v4

    .end local v4    # "colindex":I
    .local v5, "colindex":I
    :goto_2
    move/from16 v0, v17

    if-ge v9, v0, :cond_4

    .line 1108
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "colindex":I
    .restart local v4    # "colindex":I
    aget-byte v18, p0, v5

    aget v19, v6, v18

    add-int/lit8 v19, v19, 0x1

    aput v19, v6, v18

    .line 1107
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4    # "colindex":I
    .restart local v5    # "colindex":I
    goto :goto_2

    .line 1105
    :cond_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v16, v15

    .end local v15    # "row":I
    .restart local v16    # "row":I
    goto :goto_1

    .line 1112
    .end local v5    # "colindex":I
    .end local v9    # "j":I
    :cond_5
    const/4 v12, 0x0

    .line 1113
    .local v12, "maxIndex":I
    const/4 v8, 0x1

    :goto_3
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v8, v0, :cond_1

    .line 1114
    aget v18, v6, v12

    aget v19, v6, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 1115
    move v12, v8

    .line 1113
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public static getDebugInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1225
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "1"

    const-string v2, "persist.camera.debug.show_af"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string v2, "persist.camera.debug.enable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1227
    :cond_0
    const-string v1, "persist.camera.debug.param0"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    const-string v1, "persist.camera.debug.param1"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    const-string v1, "persist.camera.debug.param2"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const-string v1, "persist.camera.debug.param3"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    const-string v1, "persist.camera.debug.param4"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    const-string v1, "persist.camera.debug.param5"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    const-string v1, "persist.camera.debug.param6"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    const-string v1, "persist.camera.debug.param7"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const-string v1, "persist.camera.debug.param8"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    const-string v1, "persist.camera.debug.param9"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :cond_1
    const-string v1, "1"

    const-string v2, "persist.camera.debug.show_awb"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1240
    const-string v1, "persist.camera.debug.param10"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    const-string v1, "persist.camera.debug.param11"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    const-string v1, "persist.camera.debug.param12"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    const-string v1, "persist.camera.debug.param13"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    const-string v1, "persist.camera.debug.param14"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    const-string v1, "persist.camera.debug.param15"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    const-string v1, "persist.camera.debug.param16"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const-string v1, "persist.camera.debug.param17"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    const-string v1, "persist.camera.debug.param18"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    const-string v1, "persist.camera.debug.param19"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    :cond_2
    const-string v1, "1"

    const-string v2, "persist.camera.debug.show_aec"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1253
    const-string v1, "persist.camera.debug.param20"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    const-string v1, "persist.camera.debug.param21"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const-string v1, "persist.camera.debug.param22"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const-string v1, "persist.camera.debug.param23"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const-string v1, "persist.camera.debug.param24"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    const-string v1, "persist.camera.debug.param25"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    const-string v1, "persist.camera.debug.param26"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    const-string v1, "persist.camera.debug.param27"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    const-string v1, "persist.camera.debug.param28"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    const-string v1, "persist.camera.debug.param29"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    :cond_3
    const-string v1, "persist.camera.debug.checkerf"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-string v1, "persist.camera.debug.fc"

    invoke-static {v1}, Lcom/android/camera/Util;->addProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDisplayOrientation(II)I
    .locals 4
    .param p0, "degrees"    # I
    .param p1, "cameraId"    # I

    .prologue
    .line 475
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 476
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 478
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 479
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 480
    .local v1, "result":I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 484
    :goto_0
    return v1

    .line 482
    .end local v1    # "result":I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "rotation":I
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 453
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 459
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_1
    :pswitch_0
    return v1

    .line 455
    :cond_1
    sget v2, Lcom/android/camera/Util;->mLockedOrientation:I

    if-eqz v2, :cond_2

    sget v2, Lcom/android/camera/Util;->mLockedOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 456
    :cond_2
    sget v0, Lcom/android/camera/Util;->mLockedOrientation:I

    goto :goto_0

    .line 461
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_1

    .line 462
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_1

    .line 463
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_1

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getIntField(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 1280
    :try_start_0
    invoke-static {p0, p2, p3}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v1

    .line 1281
    .local v1, "field":Lmiui/reflect/Field;
    invoke-virtual {v1, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Lmiui/reflect/NoSuchClassException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/reflect/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1287
    .end local v1    # "field":Lmiui/reflect/Field;
    :goto_0
    return v2

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Lmiui/reflect/NoSuchClassException;
    const-string v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1287
    .end local v0    # "e":Lmiui/reflect/NoSuchClassException;
    :goto_1
    const/high16 v2, -0x80000000

    goto :goto_0

    .line 1284
    :catch_1
    move-exception v0

    .line 1285
    .local v0, "e":Lmiui/reflect/NoSuchFieldException;
    const-string v2, "CameraUtil"

    const-string v3, "no field "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getJpegRotation(II)I
    .locals 4
    .param p0, "cameraId"    # I
    .param p1, "orientation"    # I

    .prologue
    .line 904
    const/4 v1, 0x0

    .line 905
    .local v1, "rotation":I
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p0

    .line 906
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 907
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 908
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 915
    :goto_0
    return v1

    .line 910
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0

    .line 913
    :cond_1
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_0
.end method

.method public static getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1181
    const/4 v1, 0x0

    .line 1183
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz p0, :cond_0

    :try_start_0
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1184
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2, p1, p2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1193
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1194
    const-string v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMethod fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_1
    return-object v1

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "e":Lmiui/reflect/NoSuchMethodException;
    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1188
    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p0, v4

    .line 1189
    invoke-static {p0, p1, p2}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMiuiTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1062
    const-string v0, "fonts/MIUI_Normal.ttf"

    invoke-static {p0, v0}, Lcom/android/camera/Util;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1314
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1315
    .local v1, "resourceId":I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1316
    .local v0, "height":I
    const-string v3, "CameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Navi height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return v0
.end method

.method public static getOptimalJpegThumbnailSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 17
    .param p1, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    .line 624
    .local v0, "ASPECT_TOLERANCE":D
    if-nez p0, :cond_1

    const/4 v7, 0x0

    .line 654
    :cond_0
    return-object v7

    .line 626
    :cond_1
    const/4 v7, 0x0

    .line 628
    .local v7, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide/16 v4, 0x0

    .line 630
    .local v4, "approachingRatio":D
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 631
    .local v10, "size":Landroid/hardware/Camera$Size;
    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    if-eqz v11, :cond_2

    iget v11, v10, Landroid/hardware/Camera$Size;->height:I

    if-eqz v11, :cond_2

    .line 634
    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v11

    iget v11, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v11

    div-double v8, v12, v14

    .line 635
    .local v8, "ratio":D
    sub-double v12, v8, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 636
    .local v2, "absRatio":D
    sub-double v12, v4, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v11, v2, v12

    if-lez v11, :cond_3

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v11, v2, v12

    if-gtz v11, :cond_2

    .line 637
    :cond_3
    if-eqz v7, :cond_4

    sub-double v12, v4, p1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v11, v2, v12

    if-ltz v11, :cond_4

    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    iget v12, v7, Landroid/hardware/Camera$Size;->width:I

    if-le v11, v12, :cond_2

    .line 639
    :cond_4
    move-object v7, v10

    .line 640
    move-wide v4, v8

    goto :goto_0

    .line 646
    .end local v2    # "absRatio":D
    .end local v8    # "ratio":D
    .end local v10    # "size":Landroid/hardware/Camera$Size;
    :cond_5
    if-nez v7, :cond_0

    .line 647
    const-string v11, "CameraUtil"

    const-string v12, "No thumbnail size match the aspect ratio"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 649
    .restart local v10    # "size":Landroid/hardware/Camera$Size;
    if-eqz v7, :cond_7

    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    iget v12, v7, Landroid/hardware/Camera$Size;->width:I

    if-le v11, v12, :cond_6

    .line 650
    :cond_7
    move-object v7, v10

    goto :goto_1
.end method

.method public static getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 24
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p2, "targetRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p1, :cond_1

    const/4 v7, 0x0

    .line 616
    :cond_0
    :goto_0
    return-object v7

    .line 524
    :cond_1
    const/4 v7, 0x0

    .line 525
    .local v7, "optimalSize":Landroid/hardware/Camera$Size;
    const/4 v12, 0x0

    .line 526
    .local v12, "optimalSizeSmaller":Landroid/hardware/Camera$Size;
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 527
    .local v8, "minDiff":D
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 528
    .local v10, "minDiffSmaller":D
    const/16 v18, 0x0

    .line 535
    .local v18, "small":Z
    const-string v19, "camera_reduce_preview_flag"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v16

    .line 541
    .local v16, "reduceFlag":I
    if-eqz v16, :cond_3

    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, "currentState":I
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v4

    .line 546
    .local v4, "frontCamera":Z
    sget v19, Lcom/android/camera/Util;->sWindowWidth:I

    const/16 v20, 0x438

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 547
    and-int/lit8 v16, v16, -0xf

    .line 549
    :cond_2
    if-eqz v4, :cond_a

    const/16 v19, 0x2

    :goto_1
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v20

    if-nez v20, :cond_b

    const/16 v20, 0x0

    :goto_2
    shl-int v19, v19, v20

    or-int v2, v2, v19

    .line 550
    and-int v19, v16, v2

    if-eqz v19, :cond_c

    const/16 v18, 0x1

    .line 558
    .end local v2    # "currentState":I
    .end local v4    # "frontCamera":Z
    :cond_3
    :goto_3
    new-instance v13, Landroid/graphics/Point;

    sget v19, Lcom/android/camera/Util;->sWindowWidth:I

    sget v20, Lcom/android/camera/Util;->sWindowHeight:I

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 561
    .local v13, "point":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v19

    if-nez v19, :cond_d

    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v6, 0x2d0

    .line 563
    .local v6, "limitWidth":I
    :goto_4
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v6, :cond_4

    .line 564
    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    mul-int v19, v19, v6

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    div-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v13, Landroid/graphics/Point;->y:I

    .line 565
    iput v6, v13, Landroid/graphics/Point;->x:I

    .line 569
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/Camera$Size;

    .line 570
    .local v17, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v14, v20, v22

    .line 571
    .local v14, "ratio":D
    sub-double v20, v14, p2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v19, v20, v22

    if-gtz v19, :cond_5

    if-eqz v18, :cond_6

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 575
    :cond_6
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    add-int v3, v19, v20

    .line 576
    .local v3, "diff":I
    if-nez v3, :cond_e

    .line 577
    move-object/from16 v7, v17

    .line 578
    move-object/from16 v12, v17

    .line 595
    .end local v3    # "diff":I
    .end local v14    # "ratio":D
    .end local v17    # "size":Landroid/hardware/Camera$Size;
    :cond_7
    if-eqz v12, :cond_8

    .line 596
    move-object v7, v12

    .line 601
    :cond_8
    if-nez v7, :cond_10

    .line 602
    const-string v19, "CameraUtil"

    const-string v20, "No preview size match the aspect ratio"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 604
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/Camera$Size;

    .line 605
    .restart local v17    # "size":Landroid/hardware/Camera$Size;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    add-int v3, v19, v20

    .line 606
    .restart local v3    # "diff":I
    int-to-double v0, v3

    move-wide/from16 v20, v0

    cmpg-double v19, v20, v8

    if-gez v19, :cond_9

    .line 607
    move-object/from16 v7, v17

    .line 608
    int-to-double v8, v3

    goto :goto_6

    .line 549
    .end local v3    # "diff":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "limitWidth":I
    .end local v13    # "point":Landroid/graphics/Point;
    .end local v17    # "size":Landroid/hardware/Camera$Size;
    .restart local v2    # "currentState":I
    .restart local v4    # "frontCamera":Z
    :cond_a
    const/16 v19, 0x1

    goto/16 :goto_1

    :cond_b
    const/16 v20, 0x2

    goto/16 :goto_2

    .line 550
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 561
    .end local v2    # "currentState":I
    .end local v4    # "frontCamera":Z
    .restart local v13    # "point":Landroid/graphics/Point;
    :cond_d
    const/16 v6, 0x438

    goto/16 :goto_4

    .line 581
    .restart local v3    # "diff":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "limitWidth":I
    .restart local v14    # "ratio":D
    .restart local v17    # "size":Landroid/hardware/Camera$Size;
    :cond_e
    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_f

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_f

    .line 582
    int-to-double v0, v3

    move-wide/from16 v20, v0

    cmpg-double v19, v20, v10

    if-gez v19, :cond_f

    .line 583
    move-object/from16 v12, v17

    .line 584
    int-to-double v10, v3

    .line 587
    :cond_f
    int-to-double v0, v3

    move-wide/from16 v20, v0

    cmpg-double v19, v20, v8

    if-gez v19, :cond_5

    .line 588
    move-object/from16 v7, v17

    .line 589
    int-to-double v8, v3

    goto/16 :goto_5

    .line 613
    .end local v3    # "diff":I
    .end local v14    # "ratio":D
    .end local v17    # "size":Landroid/hardware/Camera$Size;
    :cond_10
    if-eqz v7, :cond_0

    .line 614
    const-string v19, "CameraUtil"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The best preview size is :("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v7, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " , "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v7, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getOptimalVideoSnapshotPictureSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;
    .locals 11
    .param p1, "targetRatio"    # D
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DII)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 685
    :cond_0
    return-object v1

    .line 663
    :cond_1
    const/4 v1, 0x0

    .line 666
    .local v1, "optimalSize":Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 667
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v5

    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v5

    div-double v2, v6, v8

    .line 668
    .local v2, "ratio":D
    sub-double v6, v2, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_2

    .line 669
    if-eqz v1, :cond_3

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    if-le v5, v6, :cond_2

    :cond_3
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    if-gt v5, p3, :cond_2

    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    if-gt v5, p4, :cond_2

    .line 671
    move-object v1, v4

    goto :goto_0

    .line 677
    .end local v2    # "ratio":D
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v1, :cond_0

    .line 678
    const-string v5, "CameraUtil"

    const-string v6, "No picture size match the aspect ratio"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 680
    .restart local v4    # "size":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_6

    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    if-le v5, v6, :cond_5

    .line 681
    :cond_6
    move-object v1, v4

    goto :goto_1
.end method

.method public static getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I
    .locals 6
    .param p0, "reference"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 787
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 788
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 789
    aget v1, v0, v4

    .line 790
    .local v1, "referenceX":I
    aget v2, v0, v5

    .line 791
    .local v2, "referenceY":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 792
    aget v3, v0, v4

    sub-int/2addr v3, v1

    aput v3, v0, v4

    .line 793
    aget v3, v0, v5

    sub-int/2addr v3, v2

    aput v3, v0, v5

    .line 794
    return-object v0
.end method

.method public static getScreenInches(Landroid/content/Context;)D
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 1291
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1292
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1294
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1296
    sget v8, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v8, v8

    iget v9, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 1297
    .local v4, "x":D
    sget v8, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v8, v8

    iget v9, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 1298
    .local v6, "y":D
    add-double v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1299
    .local v0, "inches":D
    const-string v8, "CameraUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getScreenInches = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-wide v0
.end method

.method public static getStartCameraId(Landroid/app/Activity;)I
    .locals 4
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 698
    const/4 v0, -0x1

    .line 699
    .local v0, "id":I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extras.START_WITH_FRONT_CAMERA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    .line 706
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extras.START_WITH_FRONT_CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extras.START_WITH_BACK_CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 708
    return v0

    .line 701
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extras.START_WITH_BACK_CAMERA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    goto :goto_0
.end method

.method public static getStartModuleIndex(Landroid/app/Activity;)I
    .locals 3
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 712
    const/4 v0, -0x1

    .line 713
    .local v0, "index":I
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 714
    const/4 v0, 0x0

    .line 718
    :cond_0
    :goto_0
    return v0

    .line 715
    :cond_1
    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getTimeWatermark()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v7, 0x2d

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1163
    .local v1, "dateStr":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 1164
    aget-char v0, v1, v2

    .line 1165
    .local v0, "c":C
    if-eq v0, v7, :cond_1

    const/16 v5, 0x20

    if-eq v0, v5, :cond_1

    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-le v0, v5, :cond_1

    .line 1166
    :cond_0
    aput-char v7, v1, v2

    .line 1163
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1169
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1170
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1172
    .local v4, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1173
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, v4, Landroid/text/format/Time;->hour:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, v4, Landroid/text/format/Time;->minute:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static declared-synchronized getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    .line 1070
    const-class v1, Lcom/android/camera/Util;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    sget-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    :cond_0
    sget-object v0, Lcom/android/camera/Util;->sTypefaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1070
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 176
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 178
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 179
    iget v3, v0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    sput v3, Lcom/android/camera/Util;->sPixelDensity:F

    .line 180
    new-instance v3, Lcom/android/camera/Util$ImageFileNamer;

    const v4, 0x7f0e00d8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/android/camera/Util;->sImageFileNamer:Lcom/android/camera/Util$ImageFileNamer;

    .line 183
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 184
    .local v1, "p":Landroid/graphics/Point;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 188
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_0

    .line 189
    iget v3, v1, Landroid/graphics/Point;->x:I

    sput v3, Lcom/android/camera/Util;->sWindowWidth:I

    .line 190
    iget v3, v1, Landroid/graphics/Point;->y:I

    sput v3, Lcom/android/camera/Util;->sWindowHeight:I

    .line 195
    :goto_0
    const-string v3, "CameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/camera/Util;->sWindowWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sPixelDensity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/camera/Util;->sPixelDensity:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 192
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    sput v3, Lcom/android/camera/Util;->sWindowWidth:I

    .line 193
    iget v3, v1, Landroid/graphics/Point;->x:I

    sput v3, Lcom/android/camera/Util;->sWindowHeight:I

    goto :goto_0
.end method

.method public static isActivityInvert(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 469
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAntibanding60()Z
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/android/camera/Util;->ANTIBANDING_60_COUNTRY:Ljava/util/HashSet;

    sget-object v1, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isBackCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .prologue
    .line 766
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContaints(Landroid/graphics/Rect;Landroid/graphics/RectF;)Z
    .locals 3
    .param p0, "parent"    # Landroid/graphics/Rect;
    .param p1, "child"    # Landroid/graphics/RectF;

    .prologue
    const/4 v0, 0x0

    .line 1305
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1345
    if-eqz p0, :cond_0

    const/16 v0, 0x1b

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->getFpNavEventNameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFrontCameraIntent(I)Z
    .locals 1
    .param p0, "intentCameraId"    # I

    .prologue
    const/4 v0, 0x1

    .line 762
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInVideoCall(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1331
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x17

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v5, v6, :cond_0

    .line 1332
    const-string v5, "telecom"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1334
    .local v3, "telecomManager":Ljava/lang/Object;
    :try_start_0
    const-string v5, "android.telecom.TelecomManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1335
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "isInVideoCall"

    const-string v6, "()Z"

    invoke-static {v0, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 1336
    .local v2, "method":Lmiui/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v5}, Lmiui/reflect/Method;->invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1341
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Lmiui/reflect/Method;
    .end local v3    # "telecomManager":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 1337
    .restart local v3    # "telecomManager":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1338
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CameraUtil"

    const-string v6, "check isInVideoCall Exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isProduceFocusInfoSuccess([B)Z
    .locals 2
    .param p0, "depthMap"    # [B

    .prologue
    .line 1077
    if-eqz p0, :cond_0

    const/16 v0, 0x19

    array-length v1, p0

    if-ge v0, v1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x19

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowDebugInfo()Z
    .locals 2

    .prologue
    .line 1214
    const-string v0, "1"

    const-string v1, "persist.camera.enable.log"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "persist.camera.debug.show_af"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "persist.camera.debug.show_awb"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "persist.camera.debug.show_aec"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 978
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTimeout(JJJ)Z
    .locals 2
    .param p0, "now"    # J
    .param p2, "last"    # J
    .param p4, "gap"    # J

    .prologue
    .line 1056
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    .line 798
    if-nez p0, :cond_0

    .line 810
    :goto_0
    return v2

    .line 801
    :cond_0
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 802
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 803
    const-string v3, "CameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to open URI. URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 807
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 808
    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 806
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static makeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "jpegData"    # [B
    .param p1, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 320
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 321
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 322
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 324
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 338
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 328
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/android/camera/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 330
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 332
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 333
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 334
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 336
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "CameraUtil"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static mkdirs(Ljava/io/File;III)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 1024
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    const/4 v1, 0x0

    .line 1034
    :goto_0
    return v1

    .line 1029
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "parentDir":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1031
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, Lcom/android/camera/Util;->mkdirs(Ljava/io/File;III)Z

    .line 1034
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    goto :goto_0
.end method

.method public static openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;,
            Lcom/android/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 360
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 362
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    new-instance v2, Lcom/android/camera/CameraDisabledException;

    invoke-direct {v2}, Lcom/android/camera/CameraDisabledException;-><init>()V

    throw v2

    .line 367
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/camera/CameraHolder;->open(I)Lcom/android/camera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 368
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Lcom/android/camera/CameraHardwareException;
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "openCamera failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 374
    :cond_1
    throw v1
.end method

.method public static pointInView(FFLandroid/view/View;)Z
    .locals 5
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 770
    if-nez p2, :cond_0

    .line 773
    :goto_0
    return v2

    .line 771
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 772
    .local v0, "location":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 773
    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_1

    aget v3, v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_1

    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    aget v3, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V
    .locals 3
    .param p0, "matrix"    # Landroid/graphics/Matrix;
    .param p1, "mirror"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I
    .param p5, "centerX"    # I
    .param p6, "centerY"    # I

    .prologue
    const/high16 v2, 0x44fa0000    # 2000.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 851
    if-eqz p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 853
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 855
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 857
    int-to-float v0, p5

    int-to-float v1, p6

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 858
    return-void

    :cond_0
    move v0, v1

    .line 851
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "rectF"    # Landroid/graphics/RectF;
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 836
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 837
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 838
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 839
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 840
    return-void
.end method

.method public static replaceStartEffectRender(Landroid/app/Activity;)I
    .locals 7
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 722
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 723
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extras.START_WITH_EFFECT_RENDER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, "resName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 725
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 726
    .local v2, "resId":I
    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/effect/EffectController;->getEffectIndexByEntryName(Ljava/lang/String;)I

    move-result v0

    .line 729
    .local v0, "effect":I
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setShaderEffect(I)V

    .line 734
    .end local v0    # "effect":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "resId":I
    .end local v3    # "resName":Ljava/lang/String;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 221
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 222
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v5, "m":Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 226
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 227
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 228
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 229
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 236
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 238
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 243
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 245
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 246
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    move-object p0, v7

    .line 253
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 230
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 231
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 233
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 507
    const/4 v0, 0x1

    .line 513
    :goto_0
    if-eqz v0, :cond_0

    .line 514
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 516
    .end local p1    # "orientationHistory":I
    :cond_0
    return p1

    .line 509
    .restart local p1    # "orientationHistory":I
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 510
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 511
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p0, "url"    # Landroid/net/Uri;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1200
    const/4 v0, -0x1

    .line 1202
    .local v0, "deleteResult":I
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1204
    const-string v2, "CameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "safeDelete url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectionArgs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :goto_0
    return v0

    .line 1207
    :catch_0
    move-exception v1

    .line 1208
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 14
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x0

    .line 926
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v12

    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 932
    if-eqz p1, :cond_1

    .line 933
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 934
    .local v2, "lat":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 935
    .local v4, "lon":D
    cmpl-double v1, v2, v10

    if-nez v1, :cond_0

    cmpl-double v1, v4, v10

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 937
    .local v0, "hasLatLon":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 938
    const-string v1, "CameraUtil"

    const-string v8, "Set gps location"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {p0, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 940
    invoke-virtual {p0, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 941
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 943
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 950
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_1

    .line 953
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    div-long v6, v8, v12

    .line 954
    .local v6, "utcTimeSeconds":J
    invoke-virtual {p0, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 960
    .end local v0    # "hasLatLon":Z
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    .end local v6    # "utcTimeSeconds":J
    :cond_1
    :goto_2
    return-void

    .line 935
    .restart local v2    # "lat":D
    .restart local v4    # "lon":D
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 948
    .restart local v0    # "hasLatLon":Z
    :cond_3
    invoke-virtual {p0, v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 957
    :cond_4
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static setRotationParameter(Landroid/hardware/Camera$Parameters;II)V
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "cameraId"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 965
    const/4 v1, 0x0

    .line 966
    .local v1, "rotation":I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 967
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 968
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 969
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 974
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 975
    return-void

    .line 971
    .restart local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p2

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static showErrorAndFinish(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "msgId"    # I

    .prologue
    .line 380
    new-instance v0, Lcom/android/camera/Util$1;

    invoke-direct {v0, p0}, Lcom/android/camera/Util$1;-><init>(Landroid/app/Activity;)V

    .line 387
    .local v0, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0003

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e00d5

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 394
    return-void
.end method

.method public static updateCountryIso(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 154
    .local v0, "detectedCountry":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    .line 157
    :cond_0
    const-string v1, "CameraUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "antiBanding mCountryIso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/Util;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v1, "camera_dump_parameters"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    .line 159
    return-void
.end method
