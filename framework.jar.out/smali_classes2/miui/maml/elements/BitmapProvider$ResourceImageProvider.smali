.class Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceImageProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ResourceImage"


# instance fields
.field private mAsyncLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

.field private mCachedBitmapName:Ljava/lang/String;

.field mLoadingBitmapName:Ljava/lang/String;

.field mSrcNameLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    .line 186
    new-instance v0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider$1;-><init>(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;)V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    .prologue
    .line 176
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 235
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 239
    monitor-exit v1

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 5
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v3}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 209
    :cond_1
    if-eqz p2, :cond_4

    .line 210
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v3, p1}, Lmiui/maml/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    .line 211
    .local v1, "info":Lmiui/maml/ResourceManager$BitmapInfo;
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    if-nez v1, :cond_3

    :goto_0
    invoke-virtual {v3, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 212
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 229
    .end local v1    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    :cond_2
    :goto_1
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v2

    .line 211
    .restart local v1    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    :cond_3
    iget-object v2, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 214
    .end local v1    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    :cond_4
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mAsyncLoadListener:Lmiui/maml/ResourceManager$AsyncLoadListener;

    invoke-virtual {v3, p1, v4}, Lmiui/maml/ResourceManager;->getBitmapInfoAsync(Ljava/lang/String;Lmiui/maml/ResourceManager$AsyncLoadListener;)Lmiui/maml/ResourceManager$BitmapInfo;

    move-result-object v1

    .line 217
    .restart local v1    # "info":Lmiui/maml/ResourceManager$BitmapInfo;
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v3

    .line 218
    if-eqz v1, :cond_5

    :try_start_0
    iget-boolean v4, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mLoading:Z

    if-nez v4, :cond_7

    .line 219
    :cond_5
    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    if-nez v1, :cond_6

    :goto_2
    invoke-virtual {v4, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 220
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mCachedBitmapName:Ljava/lang/String;

    .line 221
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    .line 225
    :goto_3
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 219
    :cond_6
    :try_start_1
    iget-object v2, v1, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 223
    :cond_7
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
