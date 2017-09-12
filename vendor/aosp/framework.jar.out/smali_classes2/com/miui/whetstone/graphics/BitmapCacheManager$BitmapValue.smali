.class Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;
.super Ljava/lang/Object;
.source "BitmapCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/graphics/BitmapCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapValue"
.end annotation


# instance fields
.field public mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field public mHasCached:Z

.field public mKey:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mArray:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mHasCached:Z

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .param p1, "key"    # Landroid/graphics/Bitmap;
    .param p2, "dr"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mArray:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    .line 54
    iget-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mHasCached:Z

    .line 56
    return-void
.end method


# virtual methods
.method public checkClear()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 77
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 87
    :goto_0
    return-object v2

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 82
    .local v0, "entry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 87
    .end local v0    # "entry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public getDrawable(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "dr"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 66
    .local v0, "entry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 70
    .end local v0    # "entry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    .end local p1    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object p1

    .restart local p1    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public putDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mHasCached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    :cond_0
    return-void
.end method
