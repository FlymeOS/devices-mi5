.class public Lcom/miui/whetstone/graphics/BitmapCacheManager;
.super Ljava/lang/Object;
.source "BitmapCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapClearMessage;,
        Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;,
        Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;,
        Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapCacheManagerHandler;,
        Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;
    }
.end annotation


# static fields
.field private static BITMAP_RECYCLE:Ljava/lang/Boolean; = null

.field private static final DEBUG:Ljava/lang/Boolean;

.field public static final MSG_RECYCLE_TRIM:I = 0x1

.field public static final MSG_REFRESH_UI:I = 0x3

.field public static final MSG_RESTORE_BITMAP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WhetstoneBitmapCache"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mForeground:Z

.field private mMainThread:Ljava/lang/Thread;

.field private sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;

.field private sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;",
            ">;"
        }
    .end annotation
.end field

.field private sMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->BITMAP_RECYCLE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mForeground:Z

    .line 227
    iput-object p1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mContext:Landroid/content/Context;

    .line 228
    new-instance v0, Lcom/miui/whetstone/graphics/BitmapCache;

    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/whetstone/graphics/BitmapCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;

    .line 229
    new-instance v0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapCacheManagerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapCacheManagerHandler;-><init>(Lcom/miui/whetstone/graphics/BitmapCacheManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;

    .line 230
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mMainThread:Ljava/lang/Thread;

    .line 231
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Lcom/miui/whetstone/graphics/BitmapCache;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/graphics/BitmapCacheManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/whetstone/graphics/BitmapCacheManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->BITMAP_RECYCLE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private addBitmapForBitmap(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->trim()V

    .line 258
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 259
    :try_start_0
    invoke-static {p2}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_2

    .line 260
    :cond_0
    sget-object v1, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    const-string v1, "WhetstoneBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " do not add cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    monitor-exit v2

    .line 271
    :goto_0
    return-void

    .line 265
    :cond_2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 266
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    invoke-direct {v3, p2}, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0    # "key":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addBitmapForDrawable(ILandroid/graphics/drawable/BitmapDrawable;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "dr"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->checkMainThread()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->trim()V

    .line 237
    iget-object v3, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 238
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    const/16 v4, 0x64

    if-lt v2, v4, :cond_3

    .line 240
    :cond_1
    sget-object v2, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    const-string v2, "WhetstoneBitmapCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmapdrawable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bitmap is null , do not add cache, or id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 252
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 245
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 246
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 247
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    invoke-direct {v4, v0, p2}, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 249
    :cond_4
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    invoke-virtual {v2, p2}, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->putDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private checkMainThread()Z
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 275
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 276
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    const/4 v1, 0x0

    .line 279
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private forceLayout(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 185
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 186
    check-cast v1, Landroid/view/ViewGroup;

    .line 187
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 188
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 189
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->forceLayout(Landroid/view/View;)V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private forceLayoutAndMeasure(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->forceLayout(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method public static isBitmapValid(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 362
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreAllbitmapFromCache(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 381
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v5

    .line 383
    :try_start_0
    iget-object v4, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 384
    sget-object v4, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    const-string v4, "WhetstoneBitmapCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore all bitmaps size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 388
    .local v1, "cache":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 389
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 390
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 391
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    iget-object v4, v4, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 392
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    iget-boolean v4, v4, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mHasCached:Z

    if-eqz v4, :cond_1

    .line 393
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 406
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cache":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 395
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "cache":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 396
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {p0, v4}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->clearCache(Ljava/lang/Integer;)V

    .line 397
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 399
    :cond_2
    const-string v6, "WhetstoneBitmapCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the bitmap map "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " has Cached:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    iget-boolean v4, v4, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mHasCached:Z

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 403
    invoke-virtual {p0, v1, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->restoreAllCache(Ljava/util/concurrent/ConcurrentHashMap;Landroid/app/Activity;)V

    .line 406
    .end local v1    # "cache":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    return-void
.end method

.method private trim()V
    .locals 4

    .prologue
    .line 296
    iget-object v3, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    invoke-virtual {v2}, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->checkClear()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->clearCache(Ljava/lang/Integer;)V

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 306
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    return-void
.end method

.method private trim(I)V
    .locals 10
    .param p1, "level"    # I

    .prologue
    .line 311
    const/16 v6, 0x3e8

    if-ne p1, v6, :cond_5

    .line 312
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mForeground:Z

    .line 313
    iget-object v7, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v7

    .line 314
    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 315
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    const/4 v5, 0x0

    .line 316
    .local v5, "totalSize":I
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 317
    .local v1, "cache":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 318
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 319
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    .line 320
    .local v0, "bitmapValue":Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;
    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {v0}, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->checkClear()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p0, v6}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->clearCache(Ljava/lang/Integer;)V

    .line 324
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 350
    .end local v0    # "bitmapValue":Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;
    .end local v1    # "cache":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    .end local v5    # "totalSize":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 326
    .restart local v0    # "bitmapValue":Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;
    .restart local v1    # "cache":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    .restart local v5    # "totalSize":I
    :cond_1
    :try_start_1
    iget-boolean v6, v0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mHasCached:Z

    if-eqz v6, :cond_2

    .line 327
    invoke-virtual {v0}, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->recycle()V

    goto :goto_0

    .line 329
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v6, v0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iget-object v6, v6, Landroid/graphics/Bitmap;->mBuffer:[B

    if-eqz v6, :cond_0

    .line 331
    iget-object v6, v0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iget-object v6, v6, Landroid/graphics/Bitmap;->mBuffer:[B

    array-length v6, v6

    add-int/2addr v5, v6

    goto :goto_0

    .line 337
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p0, v6}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->clearCache(Ljava/lang/Integer;)V

    .line 338
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 342
    .end local v0    # "bitmapValue":Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    :cond_4
    const-string v6, "WhetstoneBitmapCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "save "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-int/lit16 v9, v5, 0x400

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KBytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 344
    invoke-virtual {p0, v1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->addAllCache(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 350
    :goto_1
    monitor-exit v7

    .line 352
    .end local v1    # "cache":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    .end local v5    # "totalSize":I
    :cond_5
    return-void

    .line 346
    .restart local v1    # "cache":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    .restart local v5    # "totalSize":I
    :cond_6
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 347
    .local v4, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method addAllCache(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "bitmaps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;

    iget-object v1, v1, Lcom/miui/whetstone/graphics/BitmapCache;->mHandler:Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

    const/4 v2, 0x7

    new-instance v3, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;

    invoke-direct {v3, p0, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;-><init>(Lcom/miui/whetstone/graphics/BitmapCacheManager;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 482
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;

    iget-object v1, v1, Lcom/miui/whetstone/graphics/BitmapCache;->mHandler:Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 483
    return-void
.end method

.method public addBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->addBitmapForBitmap(ILandroid/graphics/Bitmap;)V

    .line 293
    :cond_0
    return-void
.end method

.method public addBitmapForDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 283
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->addBitmapForDrawable(ILandroid/graphics/drawable/BitmapDrawable;)V

    .line 286
    :cond_0
    return-void
.end method

.method clearCache(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Integer;

    .prologue
    .line 540
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;

    iget-object v1, v1, Lcom/miui/whetstone/graphics/BitmapCache;->mHandler:Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

    const/4 v2, 0x5

    new-instance v3, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapClearMessage;

    invoke-direct {v3, p0, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapClearMessage;-><init>(Lcom/miui/whetstone/graphics/BitmapCacheManager;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 541
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;

    iget-object v1, v1, Lcom/miui/whetstone/graphics/BitmapCache;->mHandler:Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 542
    return-void
.end method

.method invalidateAllBitmapDrawable()V
    .locals 7

    .prologue
    .line 410
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v6

    .line 411
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 412
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 413
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 414
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    iget-object v0, v5, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mArray:Ljava/util/ArrayList;

    .line 415
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 417
    .local v4, "itWeak":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 418
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 419
    .local v1, "dr":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    goto :goto_0

    .line 425
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    .end local v1    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    .end local v4    # "itWeak":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    return-void
.end method

.method invalidateAllBitmapDrawable(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v6

    .line 430
    :try_start_0
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 431
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 432
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 433
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 434
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    iget-object v0, v5, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mArray:Ljava/util/ArrayList;

    .line 435
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 437
    .local v4, "itWeak":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 438
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 439
    .local v1, "dr":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    goto :goto_0

    .line 446
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    .end local v1    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    .end local v4    # "itWeak":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    return-void
.end method

.method public onRestoreAll(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->checkMainThread()Z

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mForeground:Z

    .line 376
    invoke-direct {p0, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->restoreAllbitmapFromCache(Landroid/app/Activity;)V

    .line 377
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 366
    sget-object v0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "WhetstoneBitmapCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onTrimMemory #HIDDEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->trim(I)V

    .line 370
    return-void
.end method

.method recycleBitmapsAndTrim(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    const/4 v5, 0x1

    .line 98
    iget-boolean v4, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mForeground:Z

    if-ne v4, v5, :cond_1

    .line 99
    sget-object v4, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const-string v4, "WhetstoneBitmapCache"

    const-string v5, "recycleBitmapsAndTrim but the app is foreground"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v5

    .line 105
    :try_start_0
    sget-object v4, Lcom/miui/whetstone/graphics/BitmapCacheManager;->BITMAP_RECYCLE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->clearOpenGLCache()V

    .line 107
    if-eqz p1, :cond_3

    .line 108
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 109
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    .line 111
    .local v1, "bitmapValue":Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mHasCached:Z

    .line 112
    iget-object v4, v1, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 113
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 135
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapValue":Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 118
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_5

    .line 119
    iget-object v4, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 120
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    .line 122
    .restart local v1    # "bitmapValue":Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;
    iget-object v4, v1, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 123
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    iget-boolean v4, v1, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mHasCached:Z

    if-eqz v4, :cond_4

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/graphics/Bitmap;->mBuffer:[B

    .line 126
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    goto :goto_2

    .line 131
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapValue":Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    :cond_5
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/miui/whetstone/utils/UtilsNative;->trimApplication(I)V

    .line 132
    sget-object v4, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 133
    const-string v4, "WhetstoneBitmapCache"

    const-string v6, "end add trim application"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method refreshUI(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mForeground:Z

    if-nez v0, :cond_1

    .line 163
    sget-object v0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "WhetstoneBitmapCache"

    const-string v1, "refreshUI but the app is background"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    if-eqz p1, :cond_3

    .line 169
    sget-object v0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    const-string v0, "WhetstoneBitmapCache"

    const-string v1, "invalidate window, restore end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->invalidateAllBitmapDrawable()V

    goto :goto_0
.end method

.method restoreAllCache(Ljava/util/concurrent/ConcurrentHashMap;Landroid/app/Activity;)V
    .locals 4
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, "bitmaps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;

    iget-object v1, v1, Lcom/miui/whetstone/graphics/BitmapCache;->mHandler:Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

    const/4 v2, 0x6

    new-instance v3, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;

    invoke-direct {v3, p0, p1, p2}, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;-><init>(Lcom/miui/whetstone/graphics/BitmapCacheManager;Ljava/util/concurrent/ConcurrentHashMap;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 524
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;

    iget-object v1, v1, Lcom/miui/whetstone/graphics/BitmapCache;->mHandler:Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void
.end method

.method restoreBitmaps(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "array":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"
    iget-boolean v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mForeground:Z

    if-nez v2, :cond_1

    .line 140
    sget-object v2, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string v2, "WhetstoneBitmapCache"

    const-string v3, "restoreBitmaps but the app is background"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v4, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    .line 146
    if-eqz p1, :cond_3

    .line 147
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, "itMap":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;>;"
    sget-object v2, Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    const-string v2, "WhetstoneBitmapCache"

    const-string v3, "restore start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    .local v0, "entryMap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lcom/miui/whetstone/utils/UtilsNative;->restoreBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 158
    .end local v0    # "entryMap":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"
    .end local v1    # "itMap":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public restoreDirectBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 550
    iget-boolean v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->mForeground:Z

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/whetstone/graphics/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 552
    .local v0, "temp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 553
    invoke-static {v0, p1}, Lcom/miui/whetstone/utils/UtilsNative;->restoreBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 556
    .end local v0    # "temp":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
