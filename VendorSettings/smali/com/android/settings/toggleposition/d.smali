.class Lcom/android/settings/toggleposition/d;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic arV:Lcom/android/settings/toggleposition/DragGridView;


# direct methods
.method constructor <init>(Lcom/android/settings/toggleposition/DragGridView;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/settings/toggleposition/d;->arV:Lcom/android/settings/toggleposition/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/settings/toggleposition/d;->arV:Lcom/android/settings/toggleposition/DragGridView;

    invoke-static {v0}, Lcom/android/settings/toggleposition/DragGridView;->f(Lcom/android/settings/toggleposition/DragGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/toggleposition/d;->arV:Lcom/android/settings/toggleposition/DragGridView;

    invoke-static {v1}, Lcom/android/settings/toggleposition/DragGridView;->g(Lcom/android/settings/toggleposition/DragGridView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/settings/toggleposition/d;->arV:Lcom/android/settings/toggleposition/DragGridView;

    iget-object v1, p0, Lcom/android/settings/toggleposition/d;->arV:Lcom/android/settings/toggleposition/DragGridView;

    invoke-static {v1}, Lcom/android/settings/toggleposition/DragGridView;->f(Lcom/android/settings/toggleposition/DragGridView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/toggleposition/DragGridView;->smoothScrollBy(II)V

    .line 447
    iget-object v0, p0, Lcom/android/settings/toggleposition/d;->arV:Lcom/android/settings/toggleposition/DragGridView;

    iget-object v1, p0, Lcom/android/settings/toggleposition/d;->arV:Lcom/android/settings/toggleposition/DragGridView;

    iget-object v1, v1, Lcom/android/settings/toggleposition/DragGridView;->arU:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/toggleposition/DragGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 449
    :cond_0
    return-void
.end method
