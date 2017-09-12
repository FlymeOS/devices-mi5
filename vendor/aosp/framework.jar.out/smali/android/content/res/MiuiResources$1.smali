.class final Landroid/content/res/MiuiResources$1;
.super Ljava/lang/Thread;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/MiuiResources;->delayGCAtlasPreloadedBitmaps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$preload:Landroid/util/LongSparseArray;


# direct methods
.method constructor <init>(Landroid/util/LongSparseArray;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Landroid/content/res/MiuiResources$1;->val$preload:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    iget-object v0, p0, Landroid/content/res/MiuiResources$1;->val$preload:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 339
    return-void

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method
