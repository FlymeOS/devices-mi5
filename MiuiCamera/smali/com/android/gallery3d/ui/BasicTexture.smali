.class public abstract Lcom/android/gallery3d/ui/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/Texture;


# static fields
.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/gallery3d/ui/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field private mTextureHeight:I

.field private mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/ui/BasicTexture;-><init>(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 69
    return-void
.end method

.method protected constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I
    .param p3, "state"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 46
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 53
    iput-object v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 60
    iput p2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    .line 61
    iput p3, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 62
    sget-object v1, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private freeResource()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    .line 178
    .local v0, "canvas":Lcom/android/gallery3d/ui/GLCanvas;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/GLCanvas;->deleteTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    .line 181
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 183
    return-void
.end method

.method public static inFinalizer()Z
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invalidateAllTextures(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .param p0, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 217
    sget-object v3, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 218
    :try_start_0
    sget-object v2, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/BasicTexture;

    .line 219
    .local v1, "t":Lcom/android/gallery3d/ui/BasicTexture;
    iget-object v2, v1, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    if-ne v2, p0, :cond_0

    .line 220
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 221
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 224
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/android/gallery3d/ui/BasicTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 136
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 137
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 189
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    return v0
.end method

.method public abstract getTarget()I
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 158
    iget v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;->freeResource()V

    .line 165
    return-void
.end method

.method protected setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    .line 73
    return-void
.end method

.method protected setBorder(Z)V
    .locals 0
    .param p1, "hasBorder"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHasBorder:Z

    .line 129
    return-void
.end method

.method public setSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v1, 0x1000

    .line 80
    iput p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 81
    iput p2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 82
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    .line 83
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    .line 84
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    if-le v0, v1, :cond_1

    .line 85
    :cond_0
    const-string v0, "BasicTexture"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "texture is too large: %d x %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :cond_1
    return-void
.end method
